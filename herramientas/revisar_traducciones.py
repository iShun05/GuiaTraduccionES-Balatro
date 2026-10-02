#!/usr/bin/env python3
"""Revisa qué textos de los mods de Balatro siguen sin traducir tras una actualización.

Compara, mod por mod, el inglés del mod (localization/en-us.lua o default.lua) con:
  - el español propio del mod (es_ES.lua), si lo trae;
  - las traducciones de este mod (traducciones/*.tsv).
Y avisa de:
  PENDIENTES  textos nuevos o sin traducir
  CAMBIADOS   textos cuyo inglés cambió desde la última «instantánea» y que ya
              estaban traducidos aquí (hay que revisar la traducción)
  OBSOLETAS   traducciones nuestras cuya clave ya no existe en ningún mod

Uso:
  revisar_traducciones.py                    resumen por mod
  revisar_traducciones.py --pendientes       además escribe traducciones/pendientes/<mod>.tsv
                                             (mismo formato que los TSV: TIPO, ruta, texto en inglés)
  revisar_traducciones.py --instantanea      guarda el inglés actual como referencia (hazlo tras
                                             traducir) en traducciones/_fuente.json
  revisar_traducciones.py --mod Kino --detalle   lista los textos de un mod

Opciones: --mods RUTA (carpeta Mods; por defecto la de Balatro de tu sistema),
          --lua RUTA (intérprete de Lua; por defecto luajit/lua del PATH o la biblioteca de Balatro).
No modifica ningún TSV: el flujo es revisar → traducir los pendientes → generar.py → --instantanea.
Limitación: solo ve textos de archivos de localización; los que un mod lleva escritos
dentro de su código (p. ej. Extra Credit) se traducen aparte (textos_fijos.lua).
"""
from __future__ import annotations

import argparse
import hashlib
import json
import os
import re
import shutil
import subprocess
import sys
from pathlib import Path

RAIZ = Path(__file__).resolve().parent.parent
HERRAMIENTAS = Path(__file__).resolve().parent
TRADUCCIONES = RAIZ / "traducciones"
INSTANTANEA = TRADUCCIONES / "_fuente.json"
PENDIENTES = TRADUCCIONES / "pendientes"

CARPETAS_LOC = ("localization", "loc_txt")
BASES_INGLES = ("en-us.lua", "en_US.lua", "_en_US.lua", "default.lua")
ESPANOL_PROPIO = ("es_ES.lua", "_es_ES.lua")
IGNORAR_MODS = {"lovely", "GuiaTraduccionES"}


# ---------------------------------------------------------------------------
# Lua
# ---------------------------------------------------------------------------
def carpeta_mods_por_defecto() -> Path:
    if sys.platform == "win32":
        return Path(os.environ.get("APPDATA", "")) / "Balatro" / "Mods"
    if sys.platform == "darwin":
        return Path.home() / "Library/Application Support/Balatro/Mods"
    return Path.home() / ".local/share/Balatro/Mods"


def comando_lua(indicado: str | None) -> list[str]:
    if indicado:
        return [indicado]
    for nombre in ("luajit", "lua5.1", "lua"):
        ruta = shutil.which(nombre)
        if ruta:
            return [ruta]
    return [sys.executable, str(HERRAMIENTAS / "lua_ctypes.py")]


def extraer(archivos: list[Path], lua: list[str]) -> dict[Path, dict[str, tuple[str, str]]]:
    """Devuelve {archivo: {ruta_clave: (tipo, texto)}} aplanando los archivos con Lua."""
    resultado: dict[Path, dict[str, tuple[str, str]]] = {a: {} for a in archivos}
    errores: dict[Path, str] = {}
    por_ruta = {str(a): a for a in archivos}
    # Por lotes para no pasarse del límite de argumentos
    for i in range(0, len(archivos), 40):
        lote = archivos[i:i + 40]
        proceso = subprocess.run(
            lua + [str(HERRAMIENTAS / "extraer_textos.lua")] + [str(a) for a in lote],
            capture_output=True, text=True, encoding="utf-8", errors="replace",
        )
        if proceso.returncode != 0 and not proceso.stdout:
            sys.exit(f"Lua falló: {proceso.stderr.strip() or proceso.returncode}")
        for linea in proceso.stdout.splitlines():
            partes = linea.split("\t", 3)
            if partes[0] == "ERROR" and len(partes) >= 3:
                errores[por_ruta.get(partes[1], Path(partes[1]))] = partes[2]
            elif len(partes) == 4 and partes[0] in por_ruta:
                resultado[por_ruta[partes[0]]][partes[1]] = (partes[2], partes[3])
    for archivo, motivo in errores.items():
        print(f"  [aviso] no se pudo leer {archivo.parent.parent.name}/{archivo.name}: {motivo}", file=sys.stderr)
    return resultado


# ---------------------------------------------------------------------------
# Datos
# ---------------------------------------------------------------------------
def leer_tsv() -> dict[str, tuple[str, str, str]]:
    """{ruta: (tipo, texto, archivo_tsv)} con todas las traducciones propias."""
    traducidas: dict[str, tuple[str, str, str]] = {}
    for tsv in sorted(TRADUCCIONES.glob("*.tsv")):
        for linea in tsv.read_text(encoding="utf-8").splitlines():
            if not linea.strip() or linea.startswith("#"):
                continue
            partes = linea.split("\t", 2)
            if len(partes) == 3:
                traducidas[partes[1]] = (partes[0], partes[2], tsv.stem)
    return traducidas


def hash_texto(texto: str) -> str:
    return hashlib.sha1(texto.encode("utf-8")).hexdigest()[:10]


def traducible(texto: str) -> bool:
    """Descarta textos sin nada que traducir (símbolos, códigos, nombres propios cortos)."""
    sin_formato = re.sub(r"\{[^}]*\}", "", texto)
    return re.search(r"[A-Za-zÀ-ÿ]{3,}", sin_formato) is not None


def buscar_archivos(mod: Path) -> tuple[Path | None, Path | None]:
    ingles = espanol = None
    for carpeta in CARPETAS_LOC:
        base = mod / carpeta
        if not base.is_dir():
            continue
        for nombre in BASES_INGLES:
            if (base / nombre).is_file() and not ingles:
                ingles = base / nombre
        for nombre in ESPANOL_PROPIO:
            if (base / nombre).is_file() and not espanol:
                espanol = base / nombre
    return ingles, espanol


# ---------------------------------------------------------------------------
# Programa
# ---------------------------------------------------------------------------
def main() -> int:
    ap = argparse.ArgumentParser(description="Revisa las traducciones tras actualizar mods.", formatter_class=argparse.RawDescriptionHelpFormatter, epilog=__doc__)
    ap.add_argument("--mods", type=Path, default=carpeta_mods_por_defecto())
    ap.add_argument("--lua")
    ap.add_argument("--mod", action="append", help="limita la revisión a este mod (carpeta); se puede repetir")
    ap.add_argument("--pendientes", action="store_true", help="escribe traducciones/pendientes/<mod>.tsv")
    ap.add_argument("--instantanea", action="store_true", help="guarda el inglés actual como referencia")
    ap.add_argument("--detalle", action="store_true", help="lista los textos pendientes y cambiados")
    args = ap.parse_args()

    if not args.mods.is_dir():
        return print(f"No existe la carpeta de mods: {args.mods}") or 2
    lua = comando_lua(args.lua)

    mods = sorted(m for m in args.mods.iterdir()
                  if m.is_dir() and m.name not in IGNORAR_MODS and (not args.mod or m.name in args.mod))
    por_mod: dict[str, tuple[Path, Path | None]] = {}
    sin_localizacion = []
    for mod in mods:
        ingles, espanol = buscar_archivos(mod)
        if ingles:
            por_mod[mod.name] = (ingles, espanol)
        else:
            sin_localizacion.append(mod.name)

    archivos = [a for par in por_mod.values() for a in par if a]
    datos = extraer(archivos, lua)
    nuestras = leer_tsv()
    antes = json.loads(INSTANTANEA.read_text(encoding="utf-8")) if INSTANTANEA.exists() else {}

    todas_las_rutas_en_ingles: set[str] = set()
    informe = {}
    for nombre, (f_ing, f_esp) in por_mod.items():
        ingles = datos[f_ing]
        propio = datos[f_esp] if f_esp else {}
        todas_las_rutas_en_ingles.update(ingles)
        pendientes, cambiados, traducidos_aqui, traducidos_mod = [], [], 0, 0
        for ruta, (tipo, texto) in ingles.items():
            if not traducible(texto):
                continue
            nuestra = nuestras.get(ruta)
            del_mod = propio.get(ruta)
            if nuestra:
                traducidos_aqui += 1
                previo = antes.get(nombre, {}).get(ruta)
                if previo and previo != hash_texto(texto):
                    cambiados.append((tipo, ruta, texto))
            elif del_mod and (del_mod[1] != texto or len(texto.split()) < 4):
                # Español del propio mod. Si es idéntico al inglés pero corto, es un nombre
                # propio (p. ej. «Absol», «Ludicolo») y se da por bueno.
                traducidos_mod += 1
            else:
                pendientes.append((tipo, ruta, texto))
        informe[nombre] = {"total": sum(1 for t in ingles.values() if traducible(t[1])),
                           "aqui": traducidos_aqui, "mod": traducidos_mod,
                           "pendientes": pendientes, "cambiados": cambiados}

    # Traducciones nuestras sin clave de origen en ningún mod revisado
    obsoletas = []
    if not args.mod:
        # Los mods sin archivo de localización reconocido (sus textos están en el código)
        # no se pueden comparar: sus traducciones no cuentan como obsoletas.
        huellas = [re.sub(r"[^a-z0-9]", "", m.lower()) for m in sin_localizacion]
        huellas += ["extracredit", "solatro", "shopundo", "scrdesc", "darkmode", "darktextures"]
        def de_mod_sin_localizacion(ruta: str) -> bool:
            plano = re.sub(r"[^a-z0-9]", "", ruta.lower())
            return any(h and h in plano for h in huellas)
        obsoletas = sorted(r for r in nuestras
                           if r not in todas_las_rutas_en_ingles
                           and not r.startswith(".misc.dictionary.guiaes")
                           and not r.startswith(".descriptions.Mod.")
                           and not r.startswith(".descriptions.alt_texture")
                           and not de_mod_sin_localizacion(r))

    # Informe
    print(f"Mods revisados: {len(por_mod)}   (sin archivo de localización reconocido: {len(sin_localizacion)})")
    print(f"{'Mod':<24}{'textos':>8}{'traducidos aquí':>17}{'español del mod':>17}{'PENDIENTES':>12}{'CAMBIADOS':>11}")
    for nombre, r in informe.items():
        marca = "  <--" if r["pendientes"] or r["cambiados"] else ""
        print(f"{nombre:<24}{r['total']:>8}{r['aqui']:>17}{r['mod']:>17}{len(r['pendientes']):>12}{len(r['cambiados']):>11}{marca}")
    total_p = sum(len(r["pendientes"]) for r in informe.values())
    total_c = sum(len(r["cambiados"]) for r in informe.values())
    print(f"\nTotal pendientes: {total_p}   cambiados: {total_c}   obsoletas: {len(obsoletas)}")
    if not antes:
        print("Aún no hay instantánea: ejecuta con --instantanea para detectar textos cambiados en futuras actualizaciones.")
    if sin_localizacion:
        print("Sin localización reconocida:", ", ".join(sin_localizacion))

    if args.detalle:
        for nombre, r in informe.items():
            for etiqueta, lista in (("PENDIENTE", r["pendientes"]), ("CAMBIADO", r["cambiados"])):
                for tipo, ruta, texto in lista:
                    print(f"[{nombre}] {etiqueta} {ruta}: {texto[:110]}")
        for ruta in obsoletas[:40]:
            print(f"[OBSOLETA] {ruta}")

    if args.pendientes:
        PENDIENTES.mkdir(exist_ok=True)
        for antiguo in PENDIENTES.glob("*.tsv"):
            antiguo.unlink()
        escritos = 0
        for nombre, r in informe.items():
            if not r["pendientes"] and not r["cambiados"]:
                continue
            with (PENDIENTES / f"{nombre}.tsv").open("w", encoding="utf-8", newline="\n") as f:
                f.write("# Textos por traducir de " + nombre + ". Traduce la tercera columna (en inglés) y copia\n")
                f.write("# las líneas a un TSV de traducciones/. Formato: TIPO<TAB>ruta<TAB>texto.\n")
                for titulo, lista in (("PENDIENTES (nuevos o sin traducir)", r["pendientes"]),
                                      ("CAMBIADOS (el inglés cambió: revisa la traducción actual)", r["cambiados"])):
                    if lista:
                        f.write("# ----- " + titulo + "\n")
                        for tipo, ruta, texto in lista:
                            f.write(f"{tipo}\t{ruta}\t{texto}\n")
            escritos += 1
        print(f"Escritos {escritos} archivos en {PENDIENTES.relative_to(RAIZ)}")

    if args.instantanea:
        nueva = {nombre: {ruta: hash_texto(t[1]) for ruta, t in datos[por_mod[nombre][0]].items() if traducible(t[1])}
                 for nombre in por_mod}
        # Si solo se revisaron algunos mods, se conservan los demás
        antes.update(nueva)
        INSTANTANEA.write_text(json.dumps(antes, ensure_ascii=False, indent=0, sort_keys=True), encoding="utf-8")
        print(f"Instantánea guardada: {INSTANTANEA.relative_to(RAIZ)} ({len(nueva)} mods)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
