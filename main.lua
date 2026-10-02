--- Guía y Traducción ES · v0.2
--- Explica en español cada mod instalado y traduce al español lo que
--- los demás mods dejaron en inglés, sin tocar sus archivos.
---   · localization/es_ES.lua          → fichas de cada mod (menú «Mods»)
---   · localization/<grupo>/es_ES.lua  → traducciones generadas desde traducciones/*.tsv
---   · textos_fijos.lua                → textos escritos directamente en el código de otros mods

local mod = SMODS.current_mod

GuiaES = GuiaES or {}
GuiaES.VERSION = "0.2"
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
    local ok, tabla = chunk and pcall(chunk)
    if ok and type(tabla) == "table" then recomendaciones = tabla end
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

