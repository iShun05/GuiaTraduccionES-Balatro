--- Guía y Traducción ES · menú principal y selector de packs de mods
-- 1. Menú principal: con el botón MODS de Steamodded, el «JUGAR» de Solatro y la
--    etiqueta «Español (España)», la fila de botones medía 19,7 unidades en una
--    pantalla de 20, chocaba con el botón «Perfil» y se salía por la derecha.
--    Se compactan los botones, se acorta la etiqueta del idioma y se recoloca la
--    caja con su ancho real (el juego la centraba con un ancho antiguo).
-- 2. Packs de mods combinables: se marcan uno o varios packs (calidad de vida,
--    Balatro ampliado, temáticos...), se ve qué trae la combinación y si está
--    desnivelada o da problemas, y al aplicar el juego se reabre con esos mods.

local DATOS = {}
do
    local chunk = SMODS.load_file("packs.lua")
    if chunk then
        local ok, tabla = pcall(chunk)
        if ok and type(tabla) == "table" then DATOS = tabla end
    end
end
local PACKS = DATOS.packs or {}
local BASE = DATOS.base or { "GuiaTraduccionES" }
local COMBINACIONES = DATOS.combinaciones or {}
GuiaES.PACKS = PACKS

-------------------------------------------------------------------------------
-- Utilidades de mods
-------------------------------------------------------------------------------
local SIEMPRE = { GuiaTraduccionES = true }   -- nunca se desactiva (aquí vive el selector)
local DEPENDENCIAS_EXTRA = { darktextures = { "malverk" } }  -- texturas oscuras usan Malverk

-- Mods que se pueden activar o desactivar (tienen carpeta propia)
local function mods_gestionables()
    local lista = {}
    for id, m in pairs(SMODS.Mods or {}) do
        if type(m) == "table" and m.blacklist_name and id ~= "Steamodded" then
            lista[id] = m
        end
    end
    return lista
end

-- Conjunto de mods activos que deja una selección de packs (con dependencias).
-- seleccion: { [clave_pack] = true, ... }
local function conjunto_de_seleccion(seleccion)
    local gestionables = mods_gestionables()
    local conjunto = {}
    local function anadir(id) if gestionables[id] then conjunto[id] = true end end
    for _, id in ipairs(BASE) do anadir(id) end
    for id in pairs(SIEMPRE) do anadir(id) end
    for _, pack in ipairs(PACKS) do
        if seleccion[pack.clave] then
            for _, id in ipairs(pack.mods or {}) do anadir(id) end
        end
    end
    -- Dependencias declaradas por cada mod (se añaden hasta que no cambie nada)
    local cambiado = true
    while cambiado do
        cambiado = false
        for id in pairs(conjunto) do
            local m = gestionables[id]
            for _, dep in ipairs(DEPENDENCIAS_EXTRA[id] or {}) do
                if gestionables[dep] and not conjunto[dep] then conjunto[dep] = true; cambiado = true end
            end
            for _, grupo in ipairs(m and m.dependencies or {}) do
                local cubierto, candidato = false, nil
                for _, alternativa in ipairs(grupo) do
                    local dep = alternativa.id
                    if dep and conjunto[dep] then cubierto = true end
                    if dep and gestionables[dep] and not candidato then candidato = dep end
                end
                if not cubierto and candidato then conjunto[candidato] = true; cambiado = true end
            end
        end
    end
    return conjunto
end

-- Mods activos ahora mismo
local function conjunto_actual()
    local conjunto = {}
    for id, m in pairs(mods_gestionables()) do
        if not m.disabled then conjunto[id] = true end
    end
    return conjunto
end

-- Packs que están activos ahora (todos sus mods instalados están activos)
local function seleccion_actual()
    local gestionables, seleccion = mods_gestionables(), {}
    for _, pack in ipairs(PACKS) do
        local alguno, completo = false, true
        for _, id in ipairs(pack.mods or {}) do
            local m = gestionables[id]
            if m then
                alguno = true
                if m.disabled then completo = false end
            end
        end
        if alguno and completo then seleccion[pack.clave] = true end
    end
    return seleccion
end

-- Diferencias: cuántos se activan y cuántos se desactivan
local function diferencias(destino, origen)
    local activar, desactivar = 0, 0
    for id in pairs(destino) do if not origen[id] then activar = activar + 1 end end
    for id in pairs(origen) do if not destino[id] then desactivar = desactivar + 1 end end
    return activar, desactivar
end

-------------------------------------------------------------------------------
-- Valoración de la combinación elegida
-------------------------------------------------------------------------------
local ORDEN_NIVEL = { desnivel = 1, aviso = 2, bien = 3, info = 4 }
local MAX_LINEAS_VALORACION = 6

local function valorar(seleccion)
    local lineas = {}
    local function anadir(nivel, texto) lineas[#lineas + 1] = { nivel = nivel, texto = texto } end

    local contenido = 0
    for _, pack in ipairs(PACKS) do
        if seleccion[pack.clave] and pack.contenido then contenido = contenido + 1 end
    end

    -- Reglas concretas de packs.lua
    local negativas = 0
    for _, regla in ipairs(COMBINACIONES) do
        local cumple = true
        for _, c in ipairs(regla.todos or {}) do
            if not seleccion[c] then cumple = false end
        end
        if cumple and regla.alguno then
            local alguno = false
            for _, c in ipairs(regla.alguno) do if seleccion[c] then alguno = true end end
            cumple = alguno
        end
        if cumple then
            anadir(regla.nivel or "info", regla.texto)
            if regla.nivel == "aviso" or regla.nivel == "desnivel" then negativas = negativas + 1 end
        end
    end

    -- Reglas generales
    if contenido == 0 then
        if seleccion.calidad then
            anadir("bien", "Balatro original con comodidades: equilibrado y estable.")
        else
            anadir("info", "Juego base: Balatro original, solo traducido al español.")
        end
    elseif contenido == 1 and negativas == 0 then
        anadir("bien", "Pack temático puro: sus cartas salen a menudo y sus sinergias funcionan.")
    elseif contenido == 2 and negativas == 0 then
        anadir("bien", "Dos packs: buena variedad sin diluir demasiado las cartas.")
    elseif contenido >= 3 then
        anadir("aviso", "Muchos packs: cada carta concreta sale poco y el juego tarda más en cargar.")
    end
    if not seleccion.calidad then
        anadir("aviso", "Sin «Calidad de vida» no hay JokerDisplay, Handy, Multiplayer ni modo oscuro.")
    else
        anadir("info", "Multiplayer: tu amigo debe marcar exactamente los mismos packs.")
    end

    table.sort(lineas, function(a, b) return (ORDEN_NIVEL[a.nivel] or 9) < (ORDEN_NIVEL[b.nivel] or 9) end)
    while #lineas > MAX_LINEAS_VALORACION do table.remove(lineas) end
    return lineas
end

-- Reinicia el juego abriendo un proceso nuevo y cerrando el actual.
-- No se usa el reinicio interno de LÖVE (SMODS.restart_game): el hilo de red de
-- Multiplayer nunca termina y LÖVE falla al reiniciar («Failed to initialize
-- filesystem: already initialized»), así que el juego simplemente se cerraba.
local STEAM_APPID = "2379780"
local function relanzar_juego()
    local so = love.system.getOS()
    local lanzado = false
    if so == "OS X" then
        -- .../Balatro/Balatro.app/Contents/Resources → .../Balatro/run_lovely_macos.sh
        local base = love.filesystem.getSourceBaseDirectory() or ""
        local carpeta = base:gsub("/[^/]+%.app/Contents/Resources/?$", "")
        local script = carpeta .. "/run_lovely_macos.sh"
        local f = io.open(script, "r")
        if f then
            f:close()
            local ruta = script:gsub("'", "'\\''")
            os.execute("(sleep 2; '" .. ruta .. "') >/dev/null 2>&1 &")
            lanzado = true
        else
            love.system.openURL("steam://rungameid/" .. STEAM_APPID)
            lanzado = true
        end
    elseif so == "Windows" then
        -- Steam vuelve a abrir el juego (con version.dll, Lovely se carga solo)
        os.execute('start "" /min cmd /c "timeout /t 3 /nobreak >nul & start steam://rungameid/' .. STEAM_APPID .. '"')
        lanzado = true
    else
        love.system.openURL("steam://rungameid/" .. STEAM_APPID)
        lanzado = true
    end
    -- Cierre ordenado: sonido, guardado y peticiones web (como SMODS.restart_game)
    for _, gestor in ipairs({ "SOUND_MANAGER", "SAVE_MANAGER", "HTTP_MANAGER" }) do
        local g = G and G[gestor]
        if g and g.channel then g.channel:push({ type = "kill" }) end
    end
    sendInfoMessage("Reabriendo el juego (" .. so .. ", lanzado=" .. tostring(lanzado) .. ")", "GuiaES")
    love.event.quit()
end
GuiaES.relanzar_juego = relanzar_juego

-- Partidas guardadas y cambio de mods: una partida a medias con cartas de un mod
-- que se desactiva no se puede cargar (Card:load no admite cartas inexistentes y
-- el juego se cerraría al pulsar «Continuar»). Por eso, al cambiar de mods, la
-- partida se aparta con la «firma» de los mods con los que se jugó, y vuelve sola
-- cuando se aplica otra vez esa misma combinación.
local function firma(conjunto)
    local ids = {}
    for id in pairs(conjunto) do ids[#ids + 1] = id end
    table.sort(ids)
    local cadena, h = table.concat(ids, ","), 0
    for i = 1, #cadena do h = (h * 31 + cadena:byte(i)) % 4294967296 end
    return string.format("%08x", h)
end

local function ruta_partida()
    local perfil = G.SETTINGS and G.SETTINGS.profile
    return perfil and (perfil .. "/save.jkr"), perfil
end

local function hay_partida_guardada()
    local ruta = ruta_partida()
    return ruta and love.filesystem.getInfo(ruta) ~= nil
end

local function mover_archivo(origen, destino)
    local datos = love.filesystem.read(origen)
    if datos and love.filesystem.write(destino, datos) then
        love.filesystem.remove(origen)
        return true
    end
    return false
end

local function apartar_partida(conjunto_origen, conjunto_destino)
    local ruta, perfil = ruta_partida()
    if not ruta then return end
    if love.filesystem.getInfo(ruta) then
        local copia = perfil .. "/save_packs_" .. firma(conjunto_origen) .. ".jkr"
        if mover_archivo(ruta, copia) then
            sendInfoMessage("Partida a medias apartada en " .. copia, "GuiaES")
        end
    end
    local guardada = perfil .. "/save_packs_" .. firma(conjunto_destino) .. ".jkr"
    if love.filesystem.getInfo(guardada) and mover_archivo(guardada, ruta) then
        sendInfoMessage("Partida recuperada de " .. guardada, "GuiaES")
    end
end

-- Aplica una selección: escribe la lista negra de Steamodded/Lovely y reabre el juego
local function aplicar_seleccion(seleccion)
    local loader = require("SMODS.preflight.loader")
    local nfs = SMODS.NFS or NFS
    local conjunto = conjunto_de_seleccion(seleccion)
    local claves = {}
    for clave in pairs(seleccion) do claves[#claves + 1] = clave end
    table.sort(claves)
    for id, m in pairs(mods_gestionables()) do
        local carpeta = m.blacklist_name
        if conjunto[id] then
            if m.lovelyIgnored then
                pcall(nfs.remove, SMODS.MODS_DIR .. "/" .. carpeta .. "/.lovelyignore")
            end
            loader.removeFromBlacklist(carpeta)
        elseif not m.disabled then
            loader.addToBlacklist(carpeta)
        end
    end
    pcall(apartar_partida, conjunto_actual(), conjunto)
    sendInfoMessage("Packs aplicados: " .. (#claves > 0 and table.concat(claves, "+") or "juego base") .. ". Reabriendo...", "GuiaES")
    relanzar_juego()
end

-------------------------------------------------------------------------------
-- Interfaz del selector de packs
-------------------------------------------------------------------------------
local COLOR_NIVEL = { bien = "GREEN", info = "BLUE", aviso = "ORANGE", desnivel = "RED" }
local ICONO_NIVEL = { bien = "+", info = "i", aviso = "!", desnivel = "!!" }

local function color_de(nombre)
    local c = G.C[nombre or ""]
    return (type(c) == "table" and type(c[1]) == "number") and c or G.C.BLUE
end

local function texto(cadena, escala, color)
    return { n = G.UIT.T, config = { text = cadena, scale = escala, colour = color or G.C.UI.TEXT_LIGHT, shadow = true } }
end

local function fila(nodos, padding)
    return { n = G.UIT.R, config = { align = "cm", padding = padding or 0 }, nodes = nodos }
end

-- Interruptor de un pack: «[X]» marcado con borde blanco, «[ ]» apagado
local function boton_pack(pack, marcado)
    local color = color_de(pack.color)
    return {
        n = G.UIT.C,
        config = {
            align = "cm", padding = 0.08, r = 0.1, minw = 3.1, minh = 0.75, maxw = 3.1,
            colour = marcado and color or mix_colours(color, G.C.BLACK, 0.35),
            hover = true, shadow = true, emboss = 0.05,
            button = "guiaes_pack_alternar", ref_table = pack,
            outline = marcado and 1.6 or nil, outline_colour = marcado and G.C.WHITE or nil,
        },
        nodes = {
            fila({ texto((marcado and "[X] " or "[  ] ") .. pack.nombre, 0.33,
                marcado and G.C.UI.TEXT_LIGHT or { 0.75, 0.75, 0.78, 1 }) }),
        },
    }
end

local function boton_rapido(etiqueta, modo, color)
    return {
        n = G.UIT.C,
        config = {
            align = "cm", padding = 0.07, r = 0.1, minw = 2.9, minh = 0.5,
            colour = color, hover = true, shadow = true, button = "guiaes_packs_rapido", ref_table = { modo = modo },
        },
        nodes = { fila({ texto(etiqueta, 0.3) }) },
    }
end

local function ui_packs()
    local seleccion = GuiaES.packs_seleccion or seleccion_actual()
    GuiaES.packs_seleccion = seleccion

    -- Accesos rápidos
    local rapidos = fila({
        boton_rapido("SOLO JUEGO BASE", "base", G.C.GREY),
        { n = G.UIT.C, config = { minw = 0.15 } },
        boton_rapido("SOLO CALIDAD DE VIDA", "calidad", G.C.GREEN),
        { n = G.UIT.C, config = { minw = 0.15 } },
        boton_rapido("MARCAR TODO", "todo", G.C.BOOSTER),
    }, 0.05)

    -- Interruptores (4 por fila)
    local rejilla, actual = {}, {}
    for i, pack in ipairs(PACKS) do
        actual[#actual + 1] = boton_pack(pack, seleccion[pack.clave])
        if #actual == 4 or i == #PACKS then
            rejilla[#rejilla + 1] = fila(actual, 0.05)
            actual = {}
        end
    end

    -- Qué trae la combinación
    local marcados = {}
    for _, pack in ipairs(PACKS) do
        if seleccion[pack.clave] then marcados[#marcados + 1] = pack end
    end
    local detalle = { fila({ texto("Tu combinación", 0.36, G.C.GOLD) }, 0.03) }
    if #marcados == 0 then
        detalle[#detalle + 1] = fila({ texto("Ningún pack: Balatro original, solo traducido al español.", 0.28) })
    elseif #marcados <= 4 then
        for _, pack in ipairs(marcados) do
            detalle[#detalle + 1] = fila({
                texto(pack.nombre .. ": ", 0.28, mix_colours(color_de(pack.color), G.C.WHITE, 0.6)),
                texto(pack.resumen or "", 0.28),
            })
        end
    else
        local nombres = {}
        for _, pack in ipairs(marcados) do nombres[#nombres + 1] = pack.nombre end
        detalle[#detalle + 1] = fila({ texto(table.concat(nombres, ", ", 1, 4) .. ",", 0.28) })
        detalle[#detalle + 1] = fila({ texto(table.concat(nombres, ", ", 5) .. ".", 0.28) })
    end

    -- Valoración (problemas primero)
    detalle[#detalle + 1] = fila({ texto("Valoración", 0.36, G.C.GOLD) }, 0.05)
    for _, linea in ipairs(valorar(seleccion)) do
        local color = color_de(COLOR_NIVEL[linea.nivel])
        detalle[#detalle + 1] = fila({
            texto(ICONO_NIVEL[linea.nivel] or "-", 0.28, color),
            { n = G.UIT.C, config = { minw = 0.12 } },
            texto(linea.texto, 0.27, linea.nivel == "info" and G.C.UI.TEXT_LIGHT or color),
        })
    end

    -- Resumen de cambios
    local destino = conjunto_de_seleccion(seleccion)
    local total = 0
    for _ in pairs(destino) do total = total + 1 end
    local activar, desactivar = diferencias(destino, conjunto_actual())
    local sin_cambios = activar == 0 and desactivar == 0
    local resumen = "Mods activos: " .. total .. "   |   " .. (sin_cambios and "esta combinación ya está aplicada"
        or ("se activarán " .. activar .. " y se desactivarán " .. desactivar))

    local contenido = {
        fila({ texto("PACKS DE MODS", 0.6) }, 0.03),
        fila({ texto("Marca uno o varios packs y pulsa Aplicar: el juego se cierra y se vuelve a abrir con esos mods.", 0.28, G.C.UI.TEXT_INACTIVE) }),
        rapidos,
        fila({ { n = G.UIT.C, config = { align = "cm" }, nodes = rejilla } }, 0.05),
        { n = G.UIT.R, config = { align = "cm", padding = 0.12, r = 0.1, colour = G.C.BLACK, minw = 13 }, nodes = {
            { n = G.UIT.C, config = { align = "cm" }, nodes = detalle },
        } },
        fila({ texto(resumen, 0.3) }, 0.04),
        fila({
            UIBox_button({
                button = sin_cambios and "guiaes_nada" or "guiaes_pack_aplicar",
                label = { sin_cambios and "YA APLICADO" or "APLICAR Y REABRIR" },
                colour = sin_cambios and G.C.UI.BACKGROUND_INACTIVE or G.C.GREEN,
                minw = 4.6, minh = 0.75, scale = 0.45,
            }),
        }, 0.06),
    }
    if not sin_cambios and hay_partida_guardada() then
        table.insert(contenido, #contenido, fila({
            texto("Tu partida a medias se guarda aparte y vuelve al elegir otra vez estos mismos packs.", 0.26, G.C.UI.TEXT_INACTIVE),
        }))
    end
    return create_UIBox_generic_options({ back_func = "exit_overlay_menu", contents = contenido })
end

local function reabrir_selector()
    G.FUNCS.overlay_menu({ definition = ui_packs() })
end

G.FUNCS.guiaes_abrir_packs = function()
    GuiaES.packs_seleccion = nil
    reabrir_selector()
end

G.FUNCS.guiaes_pack_alternar = function(e)
    local pack = e.config.ref_table
    local seleccion = GuiaES.packs_seleccion or {}
    seleccion[pack.clave] = (not seleccion[pack.clave]) or nil
    GuiaES.packs_seleccion = seleccion
    reabrir_selector()
end

G.FUNCS.guiaes_packs_rapido = function(e)
    local modo = e.config.ref_table.modo
    local seleccion = {}
    if modo == "calidad" then
        seleccion.calidad = true
    elseif modo == "todo" then
        for _, pack in ipairs(PACKS) do seleccion[pack.clave] = true end
    end
    GuiaES.packs_seleccion = seleccion
    reabrir_selector()
end

G.FUNCS.guiaes_pack_aplicar = function()
    if GuiaES.packs_seleccion then aplicar_seleccion(GuiaES.packs_seleccion) end
end

G.FUNCS.guiaes_nada = function() end

GuiaES.ui_packs = ui_packs

-------------------------------------------------------------------------------
-- Menú principal: compacto, centrado y con el botón «PACKS DE MODS»
-------------------------------------------------------------------------------
local ESCALA_BOTONES = 0.8   -- los botones grandes ocupan un 20 % menos de ancho

-- Reduce el ancho de los botones grandes de la fila principal
local function compactar(nodo)
    if type(nodo) ~= "table" then return end
    local c = nodo.config
    if c and c.minw and c.minw >= 2.4 then
        c.minw = c.minw * ESCALA_BOTONES
        if c.maxw then c.maxw = c.maxw * ESCALA_BOTONES end
    end
    for _, hijo in pairs(nodo.nodes or {}) do compactar(hijo) end
end

-- Busca un nodo de texto con un texto concreto
local function buscar_texto(nodo, cadena)
    if type(nodo) ~= "table" then return end
    if nodo.config and nodo.config.text == cadena then return nodo end
    for _, hijo in pairs(nodo.nodes or {}) do
        local r = buscar_texto(hijo, cadena)
        if r then return r end
    end
end

-- ¿Contiene el nodo un botón con esa función?
local function tiene_boton(nodo, boton)
    if type(nodo) ~= "table" then return false end
    if nodo.config and nodo.config.button == boton then return true end
    for _, hijo in pairs(nodo.nodes or {}) do
        if tiene_boton(hijo, boton) then return true end
    end
    return false
end

local create_main_menu_ref = create_UIBox_main_menu_buttons
function create_UIBox_main_menu_buttons(...)
    local t = create_main_menu_ref(...)
    local ok, err = pcall(function()
        -- Fila principal (JUGAR · OPCIONES · SALIR · COLECCIÓN · MODS)
        local fila = t.nodes[1] and t.nodes[1].nodes and t.nodes[1].nodes[1]
        if fila then compactar(fila) end

        -- Columna derecha: idioma abreviado y «PACKS DE MODS» en lugar de Discord/X
        local derecha = t.nodes[2]
        if derecha and derecha.nodes then
            local hijos = {}
            for i = 1, 4 do
                local h = derecha.nodes[i]
                if h and not tiene_boton(h, "go_to_discord") then hijos[#hijos + 1] = h end
            end
            table.insert(hijos, 1, { n = G.UIT.R, config = { align = "cm", padding = 0.1 }, nodes = {
                UIBox_button({
                    id = "guiaes_packs_button", button = "guiaes_abrir_packs",
                    label = { "PACKS DE MODS" }, colour = G.C.PURPLE,
                    minw = 2.9, minh = 0.75, scale = 0.38,
                }),
            } })
            derecha.nodes = hijos
            derecha.config.minw = 3.0
            local etiqueta = G.LANG and G.LANG.label and buscar_texto(derecha, G.LANG.label)
            if etiqueta then
                etiqueta.config.text = (G.LANG.label:gsub("%s*%b()", ""))
            end
        end
    end)
    if not ok then sendWarnMessage("No se pudo compactar el menú principal: " .. tostring(err), "GuiaES") end
    return t
end

-- Recoloca la caja con su ancho real: centrada si cabe; si no, entre el botón
-- «Perfil» (izquierda) y el borde derecho, sin salirse de la pantalla.
local function recolocar_menu()
    local caja = G.MAIN_MENU_UI
    if not (caja and caja.T and G.ROOM and G.ROOM.T) then return end
    local ancho_sala = G.ROOM.T.w
    local margen_izq = (G.PROFILE_BUTTON and G.PROFILE_BUTTON.T and G.PROFILE_BUTTON.T.w or 2.3) + 0.15
    local margen_der = 0.15
    local w = caja.T.w
    local x = (ancho_sala - w) / 2
    if x < margen_izq then
        local libre = ancho_sala - margen_izq - margen_der
        x = margen_izq + math.max(0, (libre - w) / 2)
    end
    -- El motor alinea con un ancho propio: se corrige según la posición medida
    for _ = 1, 3 do
        local error_x = x - caja.T.x
        if math.abs(error_x) < 0.01 then break end
        caja.alignment.offset.x = (caja.alignment.offset.x or 0) + error_x
        caja:align_to_major()
    end
end
GuiaES.recolocar_menu = recolocar_menu

local set_main_menu_UI_ref = set_main_menu_UI
function set_main_menu_UI(...)
    local r = set_main_menu_UI_ref(...)
    pcall(recolocar_menu)
    -- Y otra vez cuando la caja y el botón «Perfil» estén montados del todo
    for _, espera in ipairs({ 0.05, 0.4 }) do
        G.E_MANAGER:add_event(Event({
            trigger = "after", delay = espera, timer = "REAL", blocking = false, blockable = false,
            func = function() pcall(recolocar_menu); return true end,
        }))
    end
    return r
end

-- Acceso para otras partes del mod (y pruebas automáticas)
GuiaES.seleccion_actual = seleccion_actual
GuiaES.conjunto_de_seleccion = conjunto_de_seleccion
GuiaES.aplicar_seleccion = aplicar_seleccion
GuiaES.valorar_packs = valorar
