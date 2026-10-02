--- Guía y Traducción ES · comprobador de mods y packs en Multiplayer
-- Multiplayer ya intercambia con cada jugador la lista completa de mods activos y
-- sus versiones, pero solo avisa (en inglés) cuando difieren Multiplayer o
-- Steamodded. Aquí se sustituye ese aviso por uno en español que:
--   - compara TODOS los mods y versiones entre los dos jugadores;
--   - dice qué os falta a cada uno y qué versiones no coinciden;
--   - deduce con qué packs juega el otro jugador;
--   - ofrece un botón para igualar tus packs a los suyos y reabrir el juego.

local Comp = {}
GuiaES.Comprobador = Comp

-------------------------------------------------------------------------------
-- Lectura de las listas de mods
-------------------------------------------------------------------------------
-- Convierte «Mod-1.2;Otro-3.8.1-0901b;preview=false» en { Mod = "1.2", ... }.
-- Multiplayer parte por el ÚLTIMO guion y rompe versiones con guiones; aquí se
-- reconocen primero los mods instalados (por su id) para no mutilarlas.
local function leer_lista(cadena)
    local ids = {}
    for id in pairs(SMODS.Mods or {}) do ids[#ids + 1] = id end
    table.sort(ids, function(a, b) return #a > #b end)   -- el más largo primero
    local mods = {}
    for entrada in (cadena or ""):gmatch("[^;]+") do
        if not entrada:find("=", 1, true) then
            local nombre, version
            for _, id in ipairs(ids) do
                if entrada:sub(1, #id + 1) == id .. "-" then
                    nombre, version = id, entrada:sub(#id + 2)
                    break
                end
            end
            if not nombre then nombre, version = entrada:match("^(.-)%-([^%-]*)$") end
            if not nombre then nombre, version = entrada, "?" end
            mods[nombre] = version
        end
    end
    return mods
end
Comp.leer_lista = leer_lista

local function rival()
    if not (MP and MP.LOBBY) then return nil end
    return MP.LOBBY.is_host and MP.LOBBY.guest or MP.LOBBY.host
end

local function mismo_numero_de_version(id, a, b)
    if a == b then return true end
    -- Multiplayer solo compara X.Y.Z (el sufijo -DEV no cuenta)
    if id == "Multiplayer" and MP and MP.UTILS and MP.UTILS.version_prefix then
        local pa, pb = MP.UTILS.version_prefix(a), MP.UTILS.version_prefix(b)
        return pa ~= nil and pa == pb
    end
    return false
end

local function es_gestionable(id)
    local m = SMODS.Mods and SMODS.Mods[id]
    return type(m) == "table" and m.blacklist_name ~= nil and id ~= "Steamodded"
end

local function nombre(id)
    local fichas = G and G.localization and G.localization.descriptions and G.localization.descriptions.Mod or {}
    local m = SMODS.Mods and SMODS.Mods[id]
    return (fichas[id] and fichas[id].name) or (m and (m.display_name or m.name)) or id
end

local function nombre_listado(id, version)
    if version == "MultiplayerIntegration" then return nombre(id) .. " (integración)" end
    return nombre(id)
end

-------------------------------------------------------------------------------
-- Comparación
-------------------------------------------------------------------------------
local cache = { clave = nil, resultado = nil }

function Comp.comparar()
    local otro = rival()
    if not otro or not otro.hash_str or not MP.MOD_STRING then return nil end
    local clave = MP.MOD_STRING .. "||" .. otro.hash_str
    if cache.clave == clave then return cache.resultado end

    local mios, suyos = leer_lista(MP.MOD_STRING), leer_lista(otro.hash_str)
    local r = { faltan = {}, sobran = {}, versiones = {}, total = 0, amigo = otro.username or "tu amigo" }
    for id, v in pairs(suyos) do
        if mios[id] == nil then
            r.faltan[#r.faltan + 1] = { id = id, version = v }
        elseif not mismo_numero_de_version(id, mios[id], v) then
            r.versiones[#r.versiones + 1] = { id = id, mia = mios[id], suya = v }
        end
    end
    for id, v in pairs(mios) do
        if suyos[id] == nil then r.sobran[#r.sobran + 1] = { id = id, version = v } end
    end
    local function ordenar(t) table.sort(t, function(a, b) return nombre(a.id):lower() < nombre(b.id):lower() end) end
    ordenar(r.faltan); ordenar(r.sobran); ordenar(r.versiones)
    r.total = #r.faltan + #r.sobran + #r.versiones

    -- ¿Con qué packs juega el otro? Un pack cuenta si el otro tiene todos sus mods
    -- que están instalados aquí.
    r.seleccion, r.exacto, r.packs = nil, false, {}
    if GuiaES.PACKS and GuiaES.conjunto_de_seleccion then
        local sel = {}
        for _, pack in ipairs(GuiaES.PACKS) do
            local alguno, todos = false, true
            for _, id in ipairs(pack.mods or {}) do
                if es_gestionable(id) then
                    alguno = true
                    if suyos[id] == nil then todos = false end
                end
            end
            if alguno and todos then sel[pack.clave] = true; r.packs[#r.packs + 1] = pack.nombre end
        end
        r.seleccion = sel
        local destino = GuiaES.conjunto_de_seleccion(sel)
        local igual = true
        for id in pairs(destino) do if suyos[id] == nil then igual = false end end
        for id in pairs(suyos) do if es_gestionable(id) and not destino[id] then igual = false end end
        r.exacto = igual
        r.actual_ya_igual = true
        for id in pairs(destino) do
            local m = SMODS.Mods[id]
            if m and m.disabled then r.actual_ya_igual = false end
        end
        for id, m in pairs(SMODS.Mods) do
            if type(m) == "table" and m.blacklist_name and not m.disabled and id ~= "Steamodded" and not destino[id] then
                r.actual_ya_igual = false
            end
        end
    end
    cache.clave, cache.resultado = clave, r
    return r
end

-------------------------------------------------------------------------------
-- Aviso en español
-------------------------------------------------------------------------------
local function texto(cadena, escala, color)
    return { n = G.UIT.T, config = { text = cadena, scale = escala, colour = color or G.C.UI.TEXT_LIGHT, shadow = true } }
end

local function fila(nodos, padding)
    return { n = G.UIT.R, config = { align = "cm", padding = padding or 0 }, nodes = nodos }
end

local MAX_POR_LINEA = 5

-- «A, B, C y 3 más» repartido en líneas de 5
local function lineas_de_lista(prefijo, elementos, color)
    local filas = {}
    if #elementos == 0 then return filas end
    local mostrados = {}
    for i = 1, math.min(#elementos, 10) do mostrados[i] = elementos[i] end
    if #elementos > 10 then mostrados[#mostrados] = "y " .. (#elementos - 9) .. " más" end
    filas[#filas + 1] = fila({ texto(prefijo, 0.3, color) }, 0.02)
    for i = 1, #mostrados, MAX_POR_LINEA do
        local trozo = {}
        for j = i, math.min(i + MAX_POR_LINEA - 1, #mostrados) do trozo[#trozo + 1] = mostrados[j] end
        filas[#filas + 1] = fila({ texto(table.concat(trozo, ", "), 0.27, G.C.UI.TEXT_LIGHT) })
    end
    return filas
end

function G.FUNCS.guiaes_mp_igualar()
    local r = Comp.comparar()
    if r and r.seleccion and GuiaES.aplicar_seleccion then GuiaES.aplicar_seleccion(r.seleccion) end
end

local function construir_aviso(r)
    local filas = {
        fila({ texto("MODS DISTINTOS", 0.7, G.C.RED) }, 0.08),
        fila({ texto("Tú y " .. r.amigo .. " no tenéis los mismos mods. Las semillas, las tiendas", 0.3) }),
        fila({ texto("y los comodines se desincronizan y la partida puede romperse.", 0.3) }, 0.06),
    }
    local lista_faltan, lista_sobran, lista_versiones = {}, {}, {}
    for _, e in ipairs(r.faltan) do lista_faltan[#lista_faltan + 1] = nombre_listado(e.id, e.version) end
    for _, e in ipairs(r.sobran) do lista_sobran[#lista_sobran + 1] = nombre_listado(e.id, e.version) end
    for _, e in ipairs(r.versiones) do
        lista_versiones[#lista_versiones + 1] = ("%s (tú %s, él %s)"):format(nombre(e.id), e.mia, e.suya)
    end
    local cuerpo = {}
    local function juntar(destino, nuevas) for _, f in ipairs(nuevas) do destino[#destino + 1] = f end end
    juntar(cuerpo, lineas_de_lista("Te faltan (los tiene " .. r.amigo .. "):", lista_faltan, G.C.ORANGE))
    juntar(cuerpo, lineas_de_lista(r.amigo .. " no tiene (los tienes tú):", lista_sobran, G.C.ORANGE))
    juntar(cuerpo, lineas_de_lista("Versión distinta:", lista_versiones, G.C.RED))
    filas[#filas + 1] = { n = G.UIT.R, config = { align = "cm", padding = 0.1, r = 0.1, colour = G.C.BLACK, minw = 11 }, nodes = {
        { n = G.UIT.C, config = { align = "cm" }, nodes = cuerpo },
    } }

    if #r.packs > 0 then
        filas[#filas + 1] = fila({ texto(r.amigo .. " parece jugar con: " .. table.concat(r.packs, " + "), 0.3, G.C.GOLD) }, 0.05)
    end

    local solo_versiones = #r.faltan == 0 and #r.sobran == 0
    local botones = {}
    if solo_versiones then
        filas[#filas + 1] = fila({ texto("Solo cambian versiones: instalad los dos el mismo pack (misma versión).", 0.28, G.C.UI.TEXT_INACTIVE) })
    elseif r.seleccion and not r.actual_ya_igual then
        botones[#botones + 1] = UIBox_button({
            label = { "IGUALAR A " .. string.upper(r.amigo) .. " Y REABRIR" }, button = "guiaes_mp_igualar",
            colour = G.C.GREEN, minw = 5.6, scale = 0.42, col = true,
        })
        botones[#botones + 1] = { n = G.UIT.C, config = { minw = 0.25 } }
        if not r.exacto then
            filas[#filas + 1] = fila({ texto("Aproximado: " .. r.amigo .. " tiene mods que no coinciden con ningún pack.", 0.26, G.C.UI.TEXT_INACTIVE) })
        end
    elseif r.actual_ya_igual then
        filas[#filas + 1] = fila({ texto("Tus packs ya coinciden con los suyos: lo que falla es que él cambie los suyos.", 0.28, G.C.UI.TEXT_INACTIVE) })
    end
    botones[#botones + 1] = UIBox_button({
        label = { "SEGUIR DE TODOS MODOS" }, button = "exit_overlay_menu",
        colour = G.C.RED, minw = 4.6, scale = 0.42, col = true,
    })
    filas[#filas + 1] = fila(botones, 0.12)

    G.FUNCS.overlay_menu({
        definition = create_UIBox_generic_options({ no_back = true, contents = { { n = G.UIT.C, config = { align = "cm", padding = 0.1 }, nodes = filas } } }),
    })
end
Comp.construir_aviso = construir_aviso

-------------------------------------------------------------------------------
-- Enganche con Multiplayer
-------------------------------------------------------------------------------
local enganchado = false

local function enganchar()
    if enganchado then return true end
    if not (MP and MP.UI and MP.UTILS and MP.LOBBY and MP.UI.show_version_mismatch_if_needed) then return false end
    enganchado = true

    -- El aviso se muestra una vez por sala (el cerrojo MP._version_mismatch_shown lo
    -- gestiona Multiplayer); se vuelve a armar cuando ya no hay diferencias
    MP.UI.show_version_mismatch_if_needed = function()
        if MP._version_mismatch_shown then return false end
        if G.screenwipe or G.OVERLAY_MENU then return false end
        local ok, r = pcall(Comp.comparar)
        if not ok or not r or r.total == 0 then return false end
        construir_aviso(r)
        MP._version_mismatch_shown = true
        return true
    end

    -- Multiplayer cuenta las diferencias con esta función para armar el cerrojo
    MP.UTILS.version_mismatches_original = MP.UTILS.version_mismatches
    MP.UTILS.version_mismatches = function(...)
        local ok, r = pcall(Comp.comparar)
        if ok and r then
            local lista = {}
            for _, e in ipairs(r.faltan) do lista[#lista + 1] = { mod = e.id, our = "-", their = e.version } end
            for _, e in ipairs(r.sobran) do lista[#lista + 1] = { mod = e.id, our = e.version, their = "-" } end
            for _, e in ipairs(r.versiones) do lista[#lista + 1] = { mod = e.id, our = e.mia, their = e.suya } end
            return lista
        end
        return MP.UTILS.version_mismatches_original(...)
    end
    sendInfoMessage("Comprobador de mods de Multiplayer activo", "GuiaES")
    return true
end

Comp.iniciar = function()
    if enganchar() then return end
    -- Multiplayer puede terminar de cargarse después: se reintenta en los primeros fotogramas
    local intentos = 0
    local update_ref = Game.update
    function Game:update(dt, ...)
        update_ref(self, dt, ...)
        if not enganchado and intentos < 600 then
            intentos = intentos + 1
            pcall(enganchar)
        end
    end
end

return Comp
