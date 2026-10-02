#!/usr/bin/env python3
"""Ejecuta un script Lua con la biblioteca LuaJIT que trae Balatro (vía ctypes).

Sirve cuando no hay ningún intérprete de Lua instalado (luajit, lua...). En macOS
Balatro incluye Lua.framework; en Windows/Linux se puede pasar una biblioteca con
--lib o con la variable de entorno BALATRO_LUA.

Uso: lua_ctypes.py [--lib RUTA] script.lua [argumentos...]
La salida de Lua (io.write / print) sale por la salida estándar del proceso.
"""
from __future__ import annotations

import ctypes
import glob
import os
import sys
from pathlib import Path

# Sitios donde suele estar la biblioteca de Lua de Balatro (macOS)
CANDIDATAS = [
    "/Volumes/*/SteamLibrary/steamapps/common/Balatro/Balatro.app/Contents/Frameworks/Lua.framework/Versions/A/Lua",
    str(Path.home() / "Library/Application Support/Steam/steamapps/common/Balatro/Balatro.app/Contents/Frameworks/Lua.framework/Versions/A/Lua"),
    "/Applications/Balatro.app/Contents/Frameworks/Lua.framework/Versions/A/Lua",
]
LUA_GLOBALSINDEX = -10002   # LuaJIT / Lua 5.1


def buscar_biblioteca(indicada: str | None) -> str | None:
    if indicada:
        return indicada
    if os.environ.get("BALATRO_LUA"):
        return os.environ["BALATRO_LUA"]
    for patron in CANDIDATAS:
        encontradas = sorted(glob.glob(patron))
        if encontradas:
            return encontradas[0]
    return None


def ejecutar(biblioteca: str, script: str, argumentos: list[str]) -> int:
    lua = ctypes.CDLL(biblioteca)
    lua.luaL_newstate.restype = ctypes.c_void_p
    lua.luaL_openlibs.argtypes = [ctypes.c_void_p]
    lua.luaL_loadfile.argtypes = [ctypes.c_void_p, ctypes.c_char_p]
    lua.lua_pcall.argtypes = [ctypes.c_void_p, ctypes.c_int, ctypes.c_int, ctypes.c_int]
    lua.lua_tolstring.argtypes = [ctypes.c_void_p, ctypes.c_int, ctypes.c_void_p]
    lua.lua_tolstring.restype = ctypes.c_char_p
    lua.lua_createtable.argtypes = [ctypes.c_void_p, ctypes.c_int, ctypes.c_int]
    lua.lua_pushstring.argtypes = [ctypes.c_void_p, ctypes.c_char_p]
    lua.lua_rawseti.argtypes = [ctypes.c_void_p, ctypes.c_int, ctypes.c_int]
    lua.lua_setfield.argtypes = [ctypes.c_void_p, ctypes.c_int, ctypes.c_char_p]
    estado = lua.luaL_newstate()
    lua.luaL_openlibs(estado)
    lua.lua_createtable(estado, 0, 0)
    for i, a in enumerate(argumentos, 1):
        lua.lua_pushstring(estado, a.encode("utf-8"))
        lua.lua_rawseti(estado, -2, i)
    lua.lua_setfield(estado, LUA_GLOBALSINDEX, b"arg")
    if lua.luaL_loadfile(estado, script.encode("utf-8")) or lua.lua_pcall(estado, 0, 0, 0):
        mensaje = lua.lua_tolstring(estado, -1, None)
        print("ERROR DE LUA:", (mensaje or b"").decode(errors="replace"), file=sys.stderr)
        return 1
    # El búfer de C no se vacía solo al terminar: se fuerza para no perder la salida
    try:
        ctypes.CDLL(None).fflush(None)
    except OSError:
        pass
    return 0


def main() -> int:
    args = sys.argv[1:]
    biblioteca = None
    if len(args) >= 2 and args[0] == "--lib":
        biblioteca, args = args[1], args[2:]
    if not args:
        print(__doc__)
        return 2
    ruta = buscar_biblioteca(biblioteca)
    if not ruta or not Path(ruta).exists():
        print("No encuentro la biblioteca de Lua de Balatro. Usa --lib o BALATRO_LUA.", file=sys.stderr)
        return 3
    return ejecutar(ruta, args[0], args[1:])


if __name__ == "__main__":
    sys.exit(main())
