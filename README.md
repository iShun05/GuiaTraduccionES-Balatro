# Guía y Traducción ES (Balatro)

Mod para Balatro (Steamodded) que **explica en español para qué sirve cada mod instalado**, recomienda qué mods activar y cómo combinarlos, y **traduce al español** todo lo que los demás mods dejaron en inglés, sin modificar sus archivos (las traducciones sobreviven a sus actualizaciones).

- **Versión actual:** v0.2
- **Plataforma:** Balatro (macOS / Windows) con Steamodded ≥ 1.0.0 y Lovely

## Funciones principales
- **Ficha de cada mod:** en *Mods*, al pulsar cualquier mod aparece su explicación en español (qué hace, cómo se usa, dónde están sus ajustes).
- **Pestañas del mod:** *Guía* (resumen de todos los mods instalados), *Recomendados*, *Combina bien* y *Evita*.
- **Traducción:** 4.615 textos de 20+ mods (Kino, Multiplayer, Cryptid, Pokermon, Ortalab, The Binding of Jimbo, Bakery, Handy, Extra Credit, Prism...).
- **Textos fijos:** traduce al vuelo los textos en inglés escritos directamente en el código de otros mods.
- **Compatibilidad especial:** Handy (sistema de idiomas propio), Malverk/Dark Mode (textos escritos tarde) y Extra Credit (textos incrustados).

## Tecnología
- Lua (LuaJIT de LÖVE), API de Steamodded (`SMODS`).
- Traducciones en tablas TSV (`traducciones/`) convertidas a Lua con `herramientas/generar.py` (Python 3).

## Estructura
```
GuiaTraduccionES/
├── manifest.json            # metadatos del mod (prioridad máxima: carga el último)
├── main.lua                 # reaplicación de idiomas, Handy, textos fijos y pestañas
├── recomendaciones.lua      # contenido de Recomendados / Combina bien / Evita
├── textos_fijos.lua         # textos fijos en inglés -> español
├── localization/es_ES.lua   # fichas de los mods y textos de la guía
├── localization/<mod>/      # traducciones generadas (no editar a mano)
├── handy/es_ES.lua          # traducción de Handy (generada)
├── traducciones/*.tsv       # fuente de todas las traducciones
├── herramientas/            # generar.py, icono.py
└── assets/                  # icono monoline (1x, 2x e iconos/)
```

## Compilar e instalar
1. Copia la carpeta `GuiaTraduccionES` en `Mods/` de Balatro.
2. Si editas un TSV: `python3 herramientas/generar.py`.
3. Pon el juego en **Español (España)** y reinícialo.

Para volver a una versión anterior: `git checkout v0.2`.

## Versiones y código fuente
| Versión | Fecha | Cambios | Código |
|---|---|---|---|
| [`v0.2`](https://github.com/iShun05/GuiaTraduccionES-Balatro/releases/tag/v0.2) **(actual)** | 2026-10-02 | Recomendaciones, arreglo Fundas + Galdur, 9 mods nuevos traducidos | [Ver código](https://github.com/iShun05/GuiaTraduccionES-Balatro/tree/v0.2) · [ZIP](https://github.com/iShun05/GuiaTraduccionES-Balatro/archive/refs/tags/v0.2.zip) |
| v0.1 | 2026-10-01 | Guía de mods y primera traducción (incluida en el código de v0.2) | — |

## Contacto
Instagram: [@_shun._05](https://www.instagram.com/_shun._05/)
