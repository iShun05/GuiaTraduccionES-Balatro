# Historial de cambios — Guía y Traducción ES

## v0.2 — 2026-10-02
- Pestañas **Recomendados**, **Combina bien** y **Evita** con consejos verificados en el código de los mods (`recomendaciones.lua`).
- Arreglo Card Sleeves + Galdur: CardSleeves actualizado a 1.9.4 (compatible con el nuevo menú de partida de Steamodded 26.829) y Galdur retirado (su autor lo desactiva en Steamodded nuevo).
- Better Mouse and Gamepad retirado (Handy lo sustituye; chocaban).
- Mods nuevos instalados y traducidos: Handy, Joker Run Info, Too Many Jokers, Shop Undo, Scrollable Descriptions, The Binding of Jimbo, Extra Credit, Bakery y Prism.
- Handy: su español oficial estaba incompleto y desactivado; `main.lua` intercepta su cargador y le entrega `handy/es_ES.lua` completo.
- Extra Credit: textos incrustados en su código extraídos y traducidos.
- Fichas en español y resúmenes de la guía para los 9 mods nuevos.
- Total: 4.615 textos traducidos + ~140 textos fijos de interfaz.
- Archivos: `main.lua`, `recomendaciones.lua`, `textos_fijos.lua`, `localization/es_ES.lua`, `traducciones/*.tsv`, `herramientas/generar.py`, `manifest.json`.

## v0.1 — 2026-10-01
- Primera versión: ficha explicativa en español de cada mod en el menú «Mods» y pestaña **Guía** con el resumen de todos los mods instalados.
- Traducción al español (sin tocar los archivos de otros mods) de Kino, Multiplayer, Cryptid, Pokermon, Ortalab, Bunco, Paperback, Steamodded, Cartomancer, Joker Evolution, Lost Edition, Card Sleeves, Malverk y Dark Mode.
- Traductor de textos fijos en el código (Solatro, Multiplayer, Pokermon, Kino...).
- Reaplicación de traducciones antes de `init_localization` para ganar a los mods que escriben su inglés tarde.
- Icono monoline del mod en todos los tamaños.
