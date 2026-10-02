-- Aplana archivos de localización de Balatro a líneas «ruta<TAB>tipo<TAB>texto».
-- Uso:  <lua> extraer_textos.lua archivo1.lua [archivo2.lua ...]
-- Cada línea de salida: ARCHIVO<TAB>ruta<TAB>S|A<TAB>texto, con el mismo formato de
-- ruta que los TSV de traducciones/ (p. ej. .descriptions.Joker.j_x.text).
--   S = cadena simple; A = bloque multilínea (las líneas unidas con « / »).
-- Funciona con LuaJIT (el de Balatro) y con Lua 5.1 - 5.4.

-- Entorno tolerante: los archivos de localización a veces llaman a funciones o
-- usan variables de los mods; aquí cualquier acceso devuelve un objeto «vacío».
local function vacio()
    local t
    t = setmetatable({}, {
        __index = function() return t end,
        __call = function() return t end,
        __concat = function() return "" end,
        __add = function() return t end, __sub = function() return t end,
        __mul = function() return t end, __div = function() return t end,
    })
    return t
end

local function compilar(origen, nombre, entorno)
    if setfenv then
        local fn, err = (loadstring or load)(origen, nombre)
        if fn then setfenv(fn, entorno) end
        return fn, err
    end
    return load(origen, nombre, "t", entorno)
end

local function cargar(ruta)
    local f = io.open(ruta, "rb")
    if not f then return nil, "no se puede abrir" end
    local origen = f:read("*a")
    f:close()
    origen = origen:gsub("^\239\187\191", "")   -- BOM UTF-8
    local entorno = setmetatable({}, { __index = function(_, k)
        local v = _G[k]
        if v ~= nil then return v end
        return vacio()
    end })
    local fn, err = compilar(origen, "@" .. ruta, entorno)
    if not fn then return nil, err end
    local ok, resultado = pcall(fn)
    if not ok then return nil, resultado end
    return resultado
end

local function limpiar(texto)
    return (tostring(texto):gsub("\r", ""):gsub("\n", "\\n"):gsub("\t", " "))
end

local function aplanar(valor, prefijo, salida)
    if type(valor) == "string" then
        salida[#salida + 1] = { prefijo, "S", valor }
    elseif type(valor) == "table" then
        -- Una lista de cadenas es un texto multilínea: se trata como una sola hoja
        if type(valor[1]) == "string" then
            local lineas = {}
            for _, v in ipairs(valor) do lineas[#lineas + 1] = tostring(v) end
            salida[#salida + 1] = { prefijo, "A", table.concat(lineas, " / ") }
            return
        end
        local claves = {}
        for k in pairs(valor) do claves[#claves + 1] = k end
        table.sort(claves, function(a, b) return tostring(a) < tostring(b) end)
        for _, k in ipairs(claves) do
            local segmento = type(k) == "number" and ("[" .. k .. "]") or tostring(k)
            aplanar(valor[k], prefijo .. "." .. segmento, salida)
        end
    end
end

for _, archivo in ipairs(arg) do
    local datos, err = cargar(archivo)
    if type(datos) ~= "table" then
        io.write("ERROR\t", archivo, "\t", limpiar(err or "no devuelve una tabla"), "\n")
    else
        local salida = {}
        aplanar(datos, "", salida)
        for _, fila in ipairs(salida) do
            io.write(archivo, "\t", fila[1], "\t", fila[2], "\t", limpiar(fila[3]), "\n")
        end
    end
end
