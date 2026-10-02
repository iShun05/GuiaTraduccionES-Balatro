--- Guía y Traducción ES · v0.3
--- Explica en español cada mod instalado y traduce al español lo que
--- los demás mods dejaron en inglés, sin tocar sus archivos.
---   · localization/es_ES.lua          → fichas de cada mod (menú «Mods»)
---   · localization/<grupo>/es_ES.lua  → traducciones generadas desde traducciones/*.tsv
---   · textos_fijos.lua                → textos escritos directamente en el código de otros mods

local mod = SMODS.current_mod

GuiaES = GuiaES or {}
GuiaES.VERSION = "0.3"
GuiaES.INSTAGRAM = "https://www.instagram.com/_shun._05/"
GuiaES.MODS_POR_PAGINA = 8

SMODS.Atlas({
    key = "modicon",
    path = "icon.png",
    px = 32,
    py = 32,
})

-- Idiomas en los que se aplican las traducciones
local function idioma_espanol()
    local lang = G.SETTINGS and G.SETTINGS.language
    return lang == "es_ES" or lang == "es_419"
end

-------------------------------------------------------------------------------
-- 1. Reaplicar las traducciones justo antes de procesar los textos
-------------------------------------------------------------------------------
-- Algunos mods (Malverk, Dark Mode...) escriben sus textos en inglés DESPUÉS de
-- que Steamodded cargue los archivos de idioma. Volviendo a fusionar los de este
-- mod en el último momento, el español siempre gana.
local init_localization_ref = init_localization
function init_localization(...)
    if idioma_espanol() and mod and mod.path then
        local ok, err = pcall(SMODS.load_mod_localization, mod.path, mod.id)
        if not ok then sendWarnMessage("No se pudieron reaplicar las traducciones: " .. tostring(err), "GuiaES") end
    end
    return init_localization_ref(...)
end

-------------------------------------------------------------------------------
-- 1b. Handy: usa su propio sistema de idiomas y reinyecta su inglés en cada carga.
--     Su español oficial está incompleto y desactivado (loc_txt/_es_ES.lua), así
--     que cuando Handy pide «loc_txt/es_ES.lua» le entregamos ese archivo
--     completado con nuestra traducción (handy/es_ES.lua).
-------------------------------------------------------------------------------
do
    local chunk = SMODS.load_file("handy/es_ES.lua")
    local handy_es = chunk and select(2, pcall(chunk)) or nil
    if Handy and type(Handy.load_file) == "function" and type(handy_es) == "table" then
        local handy_load_file_ref = Handy.load_file
        function Handy.load_file(file, ...)
            local idioma = type(file) == "string" and file:match("^loc_txt/(es_[%w]+)%.lua$")
            if not idioma then return handy_load_file_ref(file, ...) end
            local ok, base = pcall(handy_load_file_ref, "loc_txt/_" .. idioma .. ".lua", true)
            local resultado = (ok and type(base) == "table") and base or {}
            return Handy.utils.table_merge_objects(resultado, handy_es)
        end
    end
end

-------------------------------------------------------------------------------
-- 1c. Estabilidad: zonas de cartas destruidas
--     Kino (Kino.snackbag, G.kino_offscreen_area) y Bakery (G.Bakery_charm_area)
--     se añaden a la lista de zonas sin comprobar que sigan vivas. Al empezar una
--     segunda partida sin reiniciar el juego (lo normal en Multiplayer), Kino aún
--     apunta a la zona de la partida anterior, que el motor dejó con cards = nil,
--     y Steamodded se cierra con «bad argument #1 to 'ipairs'». Se filtran aquí.
-------------------------------------------------------------------------------
if SMODS and type(SMODS.get_card_areas) == "function" then
    local get_card_areas_ref = SMODS.get_card_areas
    function SMODS.get_card_areas(_type, ...)
        local zonas = get_card_areas_ref(_type, ...)
        if (_type == "jokers" or _type == "playing_cards") and type(zonas) == "table" then
            local validas = {}
            -- Recorrido en orden (no pairs): el orden de evaluación debe ser
            -- idéntico en todos los ordenadores para no desincronizar Multiplayer.
            for i = 1, table.maxn(zonas) do
                local zona = zonas[i]
                if type(zona) == "table" and type(zona.cards) == "table" then
                    validas[#validas + 1] = zona
                end
            end
            return validas
        end
        return zonas
    end
end

-- 1d. Estabilidad: números grandes de Talisman
--     Con Talisman, el dinero, la puntuación y el nivel de las manos son tablas
--     («números grandes»). LuaJIT no sabe comparar una tabla con un número normal
--     (`dinero >= 0` cierra el juego con «attempt to compare number with table»).
--     guiaes_num() los convierte a número normal; lo usan los parches de
--     lovely.toml en ShopUndo, The Binding of Jimbo, Paperback y Multiplayer.
function guiaes_num(valor)
    if type(valor) == "table" and type(to_number) == "function" then
        return to_number(valor)
    end
    return valor
end

-- Bunco carga su integración con JokerDisplay con filesystem.load (Lovely no la
-- puede parchear). El contador del «Cazarrecompensas» compara el dinero con 0
-- en cada fotograma: se sustituye por una versión segura.
local function arreglar_bunco_jokerdisplay()
    local defs = JokerDisplay and JokerDisplay.Definitions
    local def = defs and defs["j_bunc_bounty_hunter"]
    if not def or def.guiaes_seguro then return end
    def.calc_function = function(card)
        local dinero = guiaes_num(G.GAME.dollars) or 0
        local extra = card.ability and card.ability.extra or {}
        card.joker_display_values.mult = dinero < 0 and (extra.mult or 0) * math.abs(dinero) or 0
    end
    def.guiaes_seguro = true
end
arreglar_bunco_jokerdisplay()
local start_run_ref = Game.start_run
function Game:start_run(...)
    pcall(arreglar_bunco_jokerdisplay)
    return start_run_ref(self, ...)
end

-- 1e. Estabilidad: cartas forzadas que están prohibidas
--     Algunas barajas y fundas (p. ej. la funda «Papel» de Paperback) crean un
--     comodín concreto sin indicar su tipo. Si ese comodín está prohibido (los
--     reglamentos de Multiplayer prohíben muchos) el juego base busca una carta al
--     azar de un tipo nulo y se cierra. Se deduce el tipo a partir de la carta.
--     Además, si la carta forzada no existe (la funda «Misterio» de Kino regala
--     «c_kino_mystery», que Kino no define) se crea una al azar del mismo tipo.
local TIPO_POR_PREFIJO = { j = "Joker", c = "Tarot", v = "Voucher", p = "Booster", m = "Enhanced" }
if type(create_card) == "function" then
    local create_card_ref = create_card
    function create_card(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append, ...)
        local centro = forced_key and G.P_CENTERS and G.P_CENTERS[forced_key]
        if forced_key and not centro and _type ~= "Tag" then
            _type = _type or TIPO_POR_PREFIJO[forced_key:sub(1, 1)]
            forced_key = nil
        end
        if _type == nil then
            _type = centro and centro.set or "Joker"
        end
        return create_card_ref(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append, ...)
    end
end

-- 1f. Rendimiento: «mejoras cuánticas» solo cuando hacen falta
--     The Binding of Jimbo activa en Steamodded las mejoras cuánticas (cartas que
--     cuentan como varias mejoras a la vez). Con ellas, cada vez que el juego pregunta
--     la mejora de una carta recalcula TODOS los comodines, consumibles y zonas, y
--     Steamodded vacía esa caché en cada fotograma: ~8.000 recálculos por mano y la
--     pantalla «Calculando...» de Talisman durante 7-14 s, aunque no tengas ningún
--     comodín. Medido con el bot: 0,25-0,4 s por mano sin ese recálculo.
--     Aquí se detectan automáticamente las cartas de cualquier mod cuyo código
--     responde a `check_enhancement` (inspeccionando las constantes de su función
--     `calculate` con jit.util) y el recálculo caro solo se hace si alguna está en
--     juego. El resultado es idéntico al original: sin esas cartas nadie puede
--     añadir mejoras extra. Si jit.util no está disponible, no se toca nada.
do
    local ok_ju, jit_util = pcall(require, "jit.util")

    -- ¿Menciona la función (o alguna función anidada) el texto dado?
    --  Se miran también las funciones capturadas como upvalue (hasta 2 niveles),
    --  porque algunos mods envuelven el `calculate` original de la carta.
    local function menciona(f, texto, vistos, nivel)
        if vistos[f] then return false end
        vistos[f] = true
        local i = -1
        while true do
            local ok, k = pcall(jit_util.funck, f, i)
            if not ok or k == nil then break end
            if k == texto then return true end
            if type(k) == "proto" and menciona(k, texto, vistos, nivel) then return true end
            i = i - 1
        end
        if type(f) == "function" and (nivel or 0) < 2 then
            local u = 1
            while true do
                local nombre, valor = debug.getupvalue(f, u)
                if nombre == nil then break end
                if type(valor) == "function" and menciona(valor, texto, vistos, (nivel or 0) + 1) then return true end
                u = u + 1
            end
        end
        return false
    end

    local proveedores        -- claves de cartas que pueden añadir mejoras
    local hay_proveedor = true
    local pendiente = true   -- hay que volver a mirar las cartas en juego

    local function es_proveedor(objeto)
        local f = type(objeto) == "table" and objeto.calculate
        return type(f) == "function" and menciona(f, "check_enhancement", {}, 0)
    end

    local function detectar_proveedores()
        proveedores = {}
        local lista = {}
        for _, tabla in ipairs({ G.P_CENTERS or {}, G.P_SEALS or {}, G.P_BLINDS or {}, G.P_TAGS or {} }) do
            for clave, objeto in pairs(tabla) do
                if es_proveedor(objeto) then
                    proveedores[clave] = true
                    lista[#lista + 1] = clave
                end
            end
        end
        table.sort(lista)
        sendInfoMessage("Mejoras cuánticas bajo demanda. Cartas que las usan: " .. table.concat(lista, ", "), "GuiaES")
    end

    local function carta_proveedora(carta)
        if type(carta) ~= "table" then return false end
        local centro = carta.config and carta.config.center
        if centro and proveedores[centro.key] then return true end
        if carta.seal and proveedores[carta.seal] then return true end
        if carta.edition and carta.edition.key and proveedores[carta.edition.key] then return true end
        return false
    end

    local function revisar_en_juego()
        pendiente = false
        hay_proveedor = false
        if next(proveedores) == nil then return end
        local function revisar_zona(zona)
            if type(zona) == "table" and type(zona.cards) == "table" then
                for _, carta in ipairs(zona.cards) do
                    if carta_proveedora(carta) then hay_proveedor = true; return end
                end
            end
        end
        for _, zona in ipairs(SMODS.get_card_areas("jokers") or {}) do
            revisar_zona(zona)
            if hay_proveedor then return end
        end
        for _, carta in ipairs(G.playing_cards or {}) do
            if carta_proveedora(carta) then hay_proveedor = true; return end
        end
        -- Baraja, ciega y etiquetas activas
        local otros = {
            G.GAME and G.GAME.selected_back and G.GAME.selected_back.effect and G.GAME.selected_back.effect.center and G.GAME.selected_back.effect.center.key,
            G.GAME and G.GAME.blind and G.GAME.blind.config and G.GAME.blind.config.blind and G.GAME.blind.config.blind.key,
        }
        for _, clave in pairs(otros) do
            if clave and proveedores[clave] then hay_proveedor = true; return end
        end
        for _, etiqueta in ipairs(G.GAME and G.GAME.tags or {}) do
            if etiqueta.key and proveedores[etiqueta.key] then hay_proveedor = true; return end
        end
    end

    if ok_ju and SMODS.enh_cache and type(SMODS.get_enhancements) == "function" then
        -- Cada vez que Steamodded invalida su caché (cartas nuevas, cambios de
        -- mejora, cada fotograma...) se vuelve a comprobar qué hay en juego.
        local clear_ref = SMODS.enh_cache.clear
        SMODS.enh_cache.clear = function(self, ...)
            pendiente = true
            return clear_ref(self, ...)
        end

        local get_enhancements_ref = SMODS.get_enhancements
        function SMODS.get_enhancements(card, extra_only)
            if SMODS.optional_features.quantum_enhancements and G.hand and G.P_CENTERS then
                if not proveedores then
                    local ok = pcall(detectar_proveedores)
                    if not ok then proveedores = nil; return get_enhancements_ref(card, extra_only) end
                end
                if pendiente then
                    local ok = pcall(revisar_en_juego)
                    if not ok then hay_proveedor = true end
                end
                if not hay_proveedor then
                    -- Mismo resultado que Steamodded cuando nadie añade mejoras
                    local mejoras = {}
                    local clave = card.config and card.config.center and card.config.center.key
                    if clave and clave ~= "c_base" and not extra_only then mejoras[clave] = true end
                    return mejoras
                end
            end
            return get_enhancements_ref(card, extra_only)
        end
    end
end

-------------------------------------------------------------------------------
-- 2. Textos fijos en inglés dentro del código de otros mods
-------------------------------------------------------------------------------
local textos_fijos = {}
do
    local chunk, err = SMODS.load_file("textos_fijos.lua")
    if chunk then
        local ok, tabla = pcall(chunk)
        if ok and type(tabla) == "table" then textos_fijos = tabla end
    else
        sendWarnMessage("No se pudo cargar textos_fijos.lua: " .. tostring(err), "GuiaES")
    end
end

local function traducir(texto)
    if type(texto) ~= "string" or not idioma_espanol() then return texto end
    return textos_fijos[texto] or texto
end
GuiaES.traducir = traducir

-- Nodos de texto de la interfaz ({n = G.UIT.T, config = {text = ...}})
local ui_element_init_ref = UIElement.init
function UIElement:init(parent, new_UIBox, new_UIT, config)
    if config and type(config.text) == "string" then
        config.text = traducir(config.text)
    end
    return ui_element_init_ref(self, parent, new_UIBox, new_UIT, config)
end

-- Textos dinámicos (avisos flotantes, títulos animados...)
local dynatext_init_ref = DynaText.init
function DynaText:init(config)
    if config and config.string ~= nil then
        if type(config.string) == "string" then
            config.string = traducir(config.string)
        elseif type(config.string) == "table" then
            for i, v in ipairs(config.string) do
                if type(v) == "string" then
                    config.string[i] = traducir(v)
                elseif type(v) == "table" and type(v.string) == "string" then
                    v.string = traducir(v.string)
                end
            end
        end
    end
    return dynatext_init_ref(self, config)
end

-------------------------------------------------------------------------------
-- 3. Pestaña «Guía»: resumen de todos los mods instalados
-------------------------------------------------------------------------------
local function texto_loc(clave, por_defecto)
    local dic = G.localization and G.localization.misc and G.localization.misc.dictionary or {}
    return dic[clave] or por_defecto or clave
end

local function nombre_mod(m)
    local fichas = G.localization and G.localization.descriptions and G.localization.descriptions.Mod or {}
    return (fichas[m.id] and fichas[m.id].name) or m.display_name or m.name or m.id
end

local function mods_ordenados()
    local lista = {}
    for _, m in pairs(SMODS.Mods or {}) do
        if type(m) == "table" and m.id and not m.lovely_only and m.id ~= "Lovely" and m.id ~= "Balatro" then
            lista[#lista + 1] = m
        end
    end
    table.sort(lista, function(a, b) return nombre_mod(a):lower() < nombre_mod(b):lower() end)
    return lista
end

local function fila_mod(m)
    local activo = m.can_load and not m.disabled
    local resumen = texto_loc("guiaes_res_" .. m.id, m.description and m.description:sub(1, 60) or texto_loc("guiaes_sin_resumen"))
    return {
        n = G.UIT.R, config = { align = "cl", padding = 0.04 },
        nodes = {
            { n = G.UIT.C, config = { align = "cl", minw = 3.6 }, nodes = {
                { n = G.UIT.T, config = { text = nombre_mod(m), scale = 0.34, colour = activo and G.C.GOLD or G.C.UI.TEXT_INACTIVE, shadow = true } },
            } },
            { n = G.UIT.C, config = { align = "cl", minw = 6.2 }, nodes = {
                { n = G.UIT.T, config = { text = resumen, scale = 0.3, colour = activo and G.C.UI.TEXT_LIGHT or G.C.UI.TEXT_INACTIVE } },
            } },
        },
    }
end

local function pagina_guia(lista, desde, hasta, num, total)
    local filas = {
        { n = G.UIT.R, config = { align = "cm", padding = 0.06 }, nodes = {
            { n = G.UIT.T, config = { text = texto_loc("guiaes_titulo") .. "  ·  " .. texto_loc("guiaes_pagina") .. " " .. num .. "/" .. total, scale = 0.4, colour = G.C.UI.TEXT_LIGHT, shadow = true } },
        } },
    }
    for i = desde, hasta do filas[#filas + 1] = fila_mod(lista[i]) end
    filas[#filas + 1] = { n = G.UIT.R, config = { align = "cm", padding = 0.06 }, nodes = {
        { n = G.UIT.T, config = { text = texto_loc("guiaes_ayuda"), scale = 0.27, colour = G.C.UI.TEXT_INACTIVE } },
    } }
    filas[#filas + 1] = { n = G.UIT.R, config = { align = "cm", padding = 0.08 }, nodes = {
        { n = G.UIT.C, config = { align = "cm", padding = 0.05 }, nodes = {
            { n = G.UIT.T, config = { text = texto_loc("guiaes_version", "Guía y Traducción ES v" .. GuiaES.VERSION), scale = 0.28, colour = G.C.UI.TEXT_INACTIVE } },
        } },
        UIBox_button({ button = "guiaes_instagram", label = { texto_loc("guiaes_contacto") }, minw = 3.2, minh = 0.5, scale = 0.32, colour = G.C.PURPLE, col = true }),
    } }
    return {
        n = G.UIT.ROOT, config = { align = "tm", padding = 0.15, r = 0.1, colour = G.C.BLACK, minw = 10 },
        nodes = filas,
    }
end

-- Pestañas «Recomendados», «Combina bien» y «Evita» (contenido en recomendaciones.lua)
local recomendaciones = {}
do
    local chunk = SMODS.load_file("recomendaciones.lua")
    if chunk then
        local ok, tabla = pcall(chunk)
        if ok and type(tabla) == "table" then recomendaciones = tabla end
    end
end

local function pagina_recomendaciones(pagina)
    local filas = {}
    for _, seccion in ipairs(pagina.secciones or {}) do
        filas[#filas + 1] = { n = G.UIT.R, config = { align = "cl", padding = 0.05 }, nodes = {
            { n = G.UIT.T, config = { text = seccion.titulo, scale = 0.36, colour = G.C[seccion.color] or G.C.GOLD, shadow = true } },
        } }
        for _, linea in ipairs(seccion.lineas or {}) do
            filas[#filas + 1] = { n = G.UIT.R, config = { align = "cl", padding = 0.02 }, nodes = {
                { n = G.UIT.T, config = { text = "  · " .. linea, scale = 0.28, colour = G.C.UI.TEXT_LIGHT } },
            } }
        end
    end
    return {
        n = G.UIT.ROOT, config = { align = "tl", padding = 0.15, r = 0.1, colour = G.C.BLACK, minw = 10 },
        nodes = filas,
    }
end

mod.extra_tabs = function()
    local lista = mods_ordenados()
    local por_pagina = GuiaES.MODS_POR_PAGINA
    local total = math.max(1, math.ceil(#lista / por_pagina))
    local pestanas = {}
    for p = 1, total do
        local desde, hasta = (p - 1) * por_pagina + 1, math.min(p * por_pagina, #lista)
        pestanas[#pestanas + 1] = {
            label = texto_loc("guiaes_tab") .. " " .. p,
            tab_definition_function = function() return pagina_guia(lista, desde, hasta, p, total) end,
        }
    end
    for _, pagina in ipairs(recomendaciones) do
        pestanas[#pestanas + 1] = {
            label = pagina.pestana,
            tab_definition_function = function() return pagina_recomendaciones(pagina) end,
        }
    end
    return pestanas
end

G.FUNCS.guiaes_instagram = function()
    love.system.openURL(GuiaES.INSTAGRAM)
end

