#!/usr/bin/env python3
"""Genera localization/<grupo>/es_ES.lua a partir de traducciones/<grupo>.tsv.

Formato de cada línea del TSV (separado por tabuladores):
    TIPO <TAB> ruta.de.la.clave <TAB> texto en español

TIPO:
    S -> cadena simple
    A -> bloque de texto multilínea; las líneas se separan con " / "

Las rutas empiezan por un punto (p. ej. ".descriptions.Joker.j_x.text").
Un segmento "[N]" es un índice numérico de tabla Lua; "N" sin corchetes es una
clave de texto (algunos mods usan claves '1', '2'... como cadenas).
"""
from __future__ import annotations

import sys
from pathlib import Path

MOD_DIR = Path(__file__).resolve().parent.parent
SRC_DIR = MOD_DIR / "traducciones"
OUT_DIR = MOD_DIR / "localization"


def lua_string(text: str) -> str:
    """Escapa una cadena para Lua; conserva las secuencias \\n ya escritas."""
    return '"' + text.replace('"', '\\"') + '"'


def to_key(segment: str) -> int | str:
    """'[3]' -> 3 (índice numérico); cualquier otro texto se queda como clave."""
    if segment.startswith("[") and segment.endswith("]") and segment[1:-1].isdigit():
        return int(segment[1:-1])
    return segment


def parse_tsv(path: Path) -> dict:
    tree: dict = {}
    for num, raw in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
        if not raw.strip() or raw.startswith("#"):
            continue
        parts = raw.split("\t")
        if len(parts) != 3 or parts[0] not in ("S", "A"):
            sys.exit(f"{path.name}:{num}: línea mal formada -> {raw!r}")
        kind, key_path, text = parts
        segments = [s for s in key_path.split(".") if s]
        node = tree
        for seg in segments[:-1]:
            key = to_key(seg)
            node = node.setdefault(key, {})
            if not isinstance(node, dict):
                sys.exit(f"{path.name}:{num}: conflicto de ruta en {key_path}")
        last = to_key(segments[-1])
        node[last] = text.split(" / ") if kind == "A" else text
    return tree


def render(value, indent: int = 1) -> str:
    pad = "    " * indent
    if isinstance(value, str):
        return lua_string(value)
    if isinstance(value, list):
        inner = ",\n".join(pad + lua_string(v) for v in value)
        return "{\n" + inner + ",\n" + "    " * (indent - 1) + "}"
    lines = []
    for key in sorted(value, key=lambda k: (isinstance(k, str), str(k))):
        lua_key = f"[{key}]" if isinstance(key, int) else (
            key if key.isidentifier() else f"[{lua_string(key)}]")
        lines.append(f"{pad}{lua_key} = {render(value[key], indent + 1)},")
    return "{\n" + "\n".join(lines) + "\n" + "    " * (indent - 1) + "}"


def main() -> None:
    total = 0
    for tsv in sorted(SRC_DIR.glob("*.tsv")):
        tree = parse_tsv(tsv)
        # Handy reinyecta su propio inglés: su traducción va aparte (handy/es_ES.lua)
        # y main.lua se la entrega cuando Handy pide su archivo de idioma.
        out = (MOD_DIR / "handy" / "es_ES.lua") if tsv.stem == "Handy" else (OUT_DIR / tsv.stem / "es_ES.lua")
        out.parent.mkdir(parents=True, exist_ok=True)
        header = (f"-- Generado automáticamente desde traducciones/{tsv.name}\n"
                  "-- No editar a mano: edita el TSV y ejecuta herramientas/generar.py\n")
        out.write_text(header + "return " + render(tree) + "\n", encoding="utf-8")
        count = sum(1 for line in tsv.read_text(encoding="utf-8").splitlines()
                    if line.strip() and not line.startswith("#"))
        total += count
        print(f"{tsv.stem:<22} {count:>5} textos -> {out.relative_to(MOD_DIR)}")
    print(f"TOTAL {total} textos")


if __name__ == "__main__":
    main()
