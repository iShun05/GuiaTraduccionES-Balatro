--- Guía y Traducción ES · pantalla de error que señala al mod culpable
-- Cuando el juego se cierra por un error, Steamodded enseña una pantalla en inglés
-- con la traza. Aquí se envuelve ese manejador para:
--   1. Averiguar qué mod ha fallado (por los nombres de archivo de la pila).
--   2. Explicar el error en español.
--   3. Pulsando 1, 2 o 3: desactivar ese mod (y los que dependen de él), apartar la
--      partida a medias y reabrir el juego solo, sin tocar carpetas.
--   4. Dejar un historial en «guiaes_cierres.log» (carpeta de datos de Balatro).
-- También sustituye el reinicio interno de LÖVE (SMODS.restart_game), que falla con
-- Multiplayer («Failed to initialize filesystem: already initialized»), por una
-- reapertura en un proceso nuevo (relanzar_juego de menu.lua).

local Cierres = {}
GuiaES.Cierres = Cierres

-- Mods que nunca se ofrecen como culpables ni se desactivan desde aquí
local PROTEGIDOS = { Steamodded = true, GuiaTraduccionES = true, Lovely = true, Balatro = true, _ = true }

-------------------------------------------------------------------------------
-- Explicación del error en español
-------------------------------------------------------------------------------
local EXPLICACIONES = {
    { "attempt to compare number with table", "comparó un número normal con un número grande de Talisman (pasa al sumar mucho dinero o puntos)" },
    { "attempt to compare table with number", "comparó un número grande de Talisman con un número normal" },
    { "attempt to compare", "comparó dos valores de tipos incompatibles" },
    { "attempt to index a nil value", "intentó usar un dato que no existe (valor nulo)" },
    { "attempt to index local", "intentó usar un dato que no existe (variable vacía)" },
    { "attempt to index field", "intentó usar un campo de un dato que no existe" },
    { "attempt to index upvalue", "intentó usar un dato que no existe (variable externa vacía)" },
    { "attempt to index global", "intentó usar una variable global que no existe" },
    { "attempt to call a nil value", "intentó ejecutar una función que no existe (mod desactualizado o incompatible)" },
    { "attempt to call field", "intentó ejecutar una función que no existe en este momento" },
    { "attempt to call method", "intentó ejecutar un método que no existe en este momento" },
    { "attempt to concatenate", "intentó unir un texto con un dato vacío" },
    { "attempt to perform arithmetic", "hizo una operación con un valor que no es un número" },
    { "bad argument", "recibió un dato del tipo equivocado" },
    { "stack overflow", "entró en un bucle infinito" },
    { "not enough memory", "se quedó sin memoria" },
    { "Syntax error", "tiene un error de sintaxis (un parche de otro mod rompió su código)" },
    { "duplicate label", "hay una instalación duplicada de Steamodded" },
}

local function explicar(msg)
    for _, par in ipairs(EXPLICACIONES) do
        if msg:find(par[1], 1, true) then return par[2] end
    end
    return "ha provocado un error inesperado"
end
Cierres.explicar = explicar

-------------------------------------------------------------------------------
-- Datos de mods
-------------------------------------------------------------------------------
local function nombre_mod(id)
    local m = SMODS.Mods and SMODS.Mods[id]
    local fichas = G and G.localization and G.localization.descriptions and G.localization.descriptions.Mod or {}
    return (fichas[id] and fichas[id].name) or (m and (m.display_name or m.name)) or id
end

local function gestionable(id)
    local m = SMODS.Mods and SMODS.Mods[id]
    return m and type(m) == "table" and m.blacklist_name and not m.disabled and not PROTEGIDOS[id]
end

-- Mods activos que dejarían de poder cargar si se desactivan los de «fuera»
local function con_dependientes(fuera)
    local conjunto = {}
    for id in pairs(fuera) do conjunto[id] = true end
    local cambiado = true
    while cambiado do
        cambiado = false
        for id, m in pairs(SMODS.Mods or {}) do
            if not conjunto[id] and type(m) == "table" and m.blacklist_name and not m.disabled then
                for _, grupo in ipairs(m.dependencies or {}) do
                    local queda = false
                    for _, alternativa in ipairs(grupo) do
                        local dep = alternativa.id
                        if dep and not conjunto[dep] then queda = true end
                    end
                    if not queda and #grupo > 0 then conjunto[id] = true; cambiado = true; break end
                end
            end
        end
    end
    return conjunto
end

-------------------------------------------------------------------------------
-- Análisis de la pila: ¿qué mod ha fallado?
-------------------------------------------------------------------------------
-- Devuelve los identificadores de mod que aparecen en un texto, en orden
local function ids_en_texto(texto)
    local resultado = {}
    -- Archivos de mods cargados por Steamodded: [SMODS <id> "ruta"]:línea
    for id, ruta, linea in texto:gmatch('%[SMODS ([^%s%]]+) "([^"]*)"%]:(%d+)') do
        resultado[#resultado + 1] = { id = id, ruta = ruta, linea = linea, pos = 0 }
    end
    return resultado
end

-- Algunos mods cargan sus archivos con otro nombre de bloque: [string " Cartomancer - qol "]
local function ids_por_nombre_de_bloque(texto)
    local resultado = {}
    for bloque in texto:gmatch('%[string "([^"]*)"%]') do
        local minus = bloque:lower()
        for id, m in pairs(SMODS.Mods or {}) do
            if type(m) == "table" and m.blacklist_name and not PROTEGIDOS[id] then
                local candidatos = { id, m.blacklist_name, m.name, m.display_name }
                for _, c in ipairs(candidatos) do
                    if type(c) == "string" and #c >= 4 and minus:find(c:lower(), 1, true) then
                        resultado[#resultado + 1] = { id = id, ruta = bloque, linea = bloque:match("(%d+)") or "?" }
                        break
                    end
                end
            end
        end
    end
    return resultado
end

-- msg: texto del error; traza: pila (debug.traceback) en el punto del fallo
function Cierres.analizar(msg, traza)
    local candidatos, vistos = {}, {}
    local primero_en_msg
    local function anadir(entradas)
        for _, e in ipairs(entradas) do
            if gestionable(e.id) and not vistos[e.id] then
                vistos[e.id] = true
                candidatos[#candidatos + 1] = e
            end
        end
    end
    -- Primero lo que dice el propio mensaje (es el sitio exacto del error), luego la pila
    local en_msg = ids_en_texto(msg)
    anadir(en_msg)
    anadir(ids_por_nombre_de_bloque(msg))
    local en_traza = ids_en_texto(traza or "")
    anadir(en_traza)
    anadir(ids_por_nombre_de_bloque(traza or ""))
    for _, e in ipairs(en_msg) do
        if gestionable(e.id) then primero_en_msg = e; break end
    end
    -- Solo los 3 primeros; los de la pila de otras partes son sospechosos de segundo orden
    while #candidatos > 3 do table.remove(candidatos) end
    return { candidatos = candidatos, exacto = primero_en_msg, explicacion = explicar(msg) }
end

-------------------------------------------------------------------------------
-- Acción: desactivar un mod y reabrir
-------------------------------------------------------------------------------
function Cierres.desactivar(candidato)
    local loader = require("SMODS.preflight.loader")
    local fuera = con_dependientes({ [candidato.id] = true })
    -- Partida a medias: se aparta con la firma de los mods con los que se jugó
    local antes, despues = {}, {}
    for id, m in pairs(SMODS.Mods or {}) do
        if type(m) == "table" and m.blacklist_name and id ~= "Steamodded" and not m.disabled then
            antes[id] = true
            if not fuera[id] then despues[id] = true end
        end
    end
    if GuiaES.apartar_partida then pcall(GuiaES.apartar_partida, antes, despues) end
    for id in pairs(fuera) do
        local m = SMODS.Mods[id]
        if m and m.blacklist_name then loader.addToBlacklist(m.blacklist_name) end
    end
    local nombres = {}
    for id in pairs(fuera) do nombres[#nombres + 1] = id end
    table.sort(nombres)
    pcall(love.filesystem.append, "guiaes_cierres.log",
        os.date("%Y-%m-%d %H:%M:%S") .. "  desactivado tras un cierre: " .. table.concat(nombres, ", ") .. "\n")
    if GuiaES.relanzar_juego then GuiaES.relanzar_juego() else love.event.quit() end
    return nombres
end

-------------------------------------------------------------------------------
-- Cabecera en español que se antepone al mensaje de error
-------------------------------------------------------------------------------
local function cabecera(info, msg)
    local lineas = { "===== GUÍA Y TRADUCCIÓN ES: QUÉ HA PASADO =====" }
    local c = info.candidatos
    if #c == 0 then
        lineas[#lineas + 1] = "No he podido saber qué mod ha fallado (el error está en el juego base o en una pila sin nombres)."
        lineas[#lineas + 1] = "Qué ha pasado: " .. info.explicacion .. "."
    else
        local p = c[1]
        lineas[#lineas + 1] = ("Mod %s: %s (%s), archivo %s, línea %s."):format(
            info.exacto and info.exacto.id == p.id and "que ha fallado" or "más probable", nombre_mod(p.id), p.id, p.ruta, p.linea)
        lineas[#lineas + 1] = "Qué ha pasado: " .. info.explicacion .. "."
        if #c > 1 then
            local otros = {}
            for i = 2, #c do otros[#otros + 1] = nombre_mod(c[i].id) end
            lineas[#lineas + 1] = "También aparecen en la pila: " .. table.concat(otros, ", ") .. "."
        end
        lineas[#lineas + 1] = ""
        for i, e in ipairs(c) do
            local arrastrados = {}
            for id in pairs(con_dependientes({ [e.id] = true })) do
                if id ~= e.id then arrastrados[#arrastrados + 1] = nombre_mod(id) end
            end
            table.sort(arrastrados)
            lineas[#lineas + 1] = ("Pulsa %d: DESACTIVAR «%s» y reabrir el juego%s"):format(i, nombre_mod(e.id),
                #arrastrados > 0 and (" (también se desactiva: " .. table.concat(arrastrados, ", ") .. ")") or "")
        end
    end
    lineas[#lineas + 1] = "Pulsa R: reabrir el juego sin cambios.   Pulsa ESC: salir."
    lineas[#lineas + 1] = "Si se repite, mándame esta pantalla por Instagram: @_shun._05"
    lineas[#lineas + 1] = "================================================"
    lineas[#lineas + 1] = ""
    return table.concat(lineas, "\n")
end
Cierres.cabecera = cabecera

-------------------------------------------------------------------------------
-- Engancharse al manejador de errores de Steamodded
-------------------------------------------------------------------------------
local TECLAS = { ["1"] = 1, ["2"] = 2, ["3"] = 3, ["kp1"] = 1, ["kp2"] = 2, ["kp3"] = 3, d = 1 }

local function envolver_manejador()
    local manejador_ref = love.errorhandler
    if type(manejador_ref) ~= "function" then return end

    love.errorhandler = function(msg)
        local texto = tostring(msg)
        local info
        local nuevo = texto
        local ok = pcall(function()
            local traza = debug.traceback("", 2)
            info = Cierres.analizar(texto, traza)
            nuevo = cabecera(info, texto) .. texto
            local ids = {}
            for _, e in ipairs(info.candidatos) do ids[#ids + 1] = e.id end
            pcall(love.filesystem.append, "guiaes_cierres.log", os.date("%Y-%m-%d %H:%M:%S") .. "  cierre. Candidatos: "
                .. (#ids > 0 and table.concat(ids, ", ") or "ninguno") .. "  |  " .. texto:gsub("\n.*", "") .. "\n")
        end)
        if not ok then info, nuevo = nil, texto end

        local bucle = manejador_ref(nuevo)
        if type(bucle) ~= "function" or not info or #info.candidatos == 0 then return bucle end

        -- Las teclas pulsadas se anotan al pasar por love.event.poll (el bucle de
        -- Steamodded las consume; aquí solo se miran)
        local pulsadas = {}
        pcall(function()
            local poll_ref = love.event.poll
            love.event.poll = function(...)
                local iterador = poll_ref(...)
                return function(...)
                    local e, a, b, c, d, f = iterador(...)
                    if e == "keypressed" then pulsadas[#pulsadas + 1] = a end
                    return e, a, b, c, d, f
                end
            end
        end)

        local hecho = false
        return function(...)
            local resultado = bucle(...)
            if resultado ~= nil or hecho then return resultado end
            for _, tecla in ipairs(pulsadas) do
                local n = TECLAS[tecla]
                if n and info.candidatos[n] then
                    hecho = true
                    pcall(Cierres.desactivar, info.candidatos[n])
                    break
                end
            end
            pulsadas = {}
            return nil
        end
    end
end

-- Reapertura en un proceso nuevo en lugar del reinicio interno de LÖVE
local function sustituir_reinicio()
    if SMODS and GuiaES.relanzar_juego then
        SMODS.restart_game = GuiaES.relanzar_juego
    end
end

Cierres.iniciar = function()
    pcall(envolver_manejador)
    pcall(sustituir_reinicio)
end

return Cierres
