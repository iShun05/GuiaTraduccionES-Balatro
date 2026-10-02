# Historial de cambios — Guía y Traducción ES

## v0.5 — 2026-10-02
- **Pantalla de error que señala al mod culpable** (`cierres.lua`): cuando el juego se cierra por un error, la pantalla de Steamodded ahora empieza por una explicación en español: qué mod ha fallado (por los archivos de la pila y del mensaje), en qué archivo y línea, qué significa el error y qué otros mods aparecen. **Pulsa 1, 2 o 3 para desactivar ese mod** (y los que dependen de él, p. ej. Talisman arrastra a Cryptid) y el juego se reabre solo; la partida a medias se aparta para no cerrarse al continuar. `R` reabre sin cambios. Cada cierre queda en `guiaes_cierres.log`.
- **Reinicio fiable**: el reinicio interno de LÖVE (`SMODS.restart_game`) fallaba con Multiplayer; ahora la pantalla de error, el menú «Mods» de Steamodded y los packs usan la reapertura en un proceso nuevo.
- **Comprobador de mods en Multiplayer** (`comprobador.lua`): en la sala se compara la lista completa de mods y versiones con el otro jugador (Multiplayer ya la intercambiaba pero solo avisaba, en inglés, de Multiplayer y Steamodded). El aviso en español dice qué te falta a ti, qué le falta a él y qué versiones no coinciden, deduce con qué packs juega y ofrece **«Igualar a <amigo> y reabrir»**.
- **Perfiles de packs guardados con nombre** (hasta 6, p. ej. «Con Marcos», «Yo solo»): se guardan con **GUARDAR COMBINACIÓN**, se cargan con un clic y se borran con la «x». Se guardan en `guiaes_perfiles.txt`.
- **Herramienta de traducciones** (`herramientas/revisar_traducciones.py`): tras actualizar un mod, lista los textos nuevos o sin traducir, los cuyo inglés cambió desde la última instantánea (`traducciones/_fuente.json`) y las traducciones obsoletas, y escribe los pendientes en `traducciones/pendientes/` con el formato de los TSV. Funciona con `luajit`/`lua` o con la biblioteca de Lua de Balatro (`lua_ctypes.py`). Estado actual: 64 pendientes, todos nombres propios, bromas o frases en italiano.
- Probado en el juego real: aviso de Multiplayer con una sala simulada, perfiles, y la pantalla de error con un fallo simulado en Ortalab y la tecla 1 (desactivó Ortalab, apartó la partida y reabrió el juego).
- Archivos: `cierres.lua`, `comprobador.lua` y `herramientas/*` (nuevos), `menu.lua`, `main.lua`, `localization/es_ES.lua`, `manifest.json`.

## v0.4 — 2026-10-02
- **Menú principal centrado**: con MODS, el JUGAR de Solatro y «Español (España)» la fila medía 19,7 de 20 unidades, chocaba con «Perfil» y se salía por la derecha. Botones un 20 % más compactos, idioma abreviado («Español») y la caja se recoloca con su ancho real entre «Perfil» y el borde (`menu.lua`).
- **Packs de mods combinables** (botón «PACKS DE MODS» en el menú principal y pestaña «Packs» de la guía): Calidad de vida, Balatro ampliado, Cine (Kino), Pokémon, Binding of Isaac, Ortalab y Caos (Cryptid). Se marcan varios a la vez, con accesos rápidos (solo juego base, solo calidad de vida, marcar todo).
  - Muestra qué trae la combinación y una **valoración** por colores: desnivelada (Cryptid con otros), avisos (Ortalab mezclado, Kino + Pokémon, Isaac con otro temático, demasiados packs), combinaciones buenas y notas de Multiplayer.
  - Aplica con la lista negra de Steamodded/Lovely, añade dependencias solas y **reabre el juego** como proceso nuevo (el reinicio interno de LÖVE fallaba con «Failed to initialize filesystem» porque el hilo de red de Multiplayer nunca termina).
  - **Partidas guardadas**: al cambiar de mods la partida a medias se aparta con la firma de su combinación y vuelve sola al elegir otra vez esos packs (si no, «Continuar» cerraría el juego por cartas de mods desactivados).
  - Datos editables en `packs.lua`.
- **Estabilidad** (encontrado probando cada pack por separado con el bot):
  - Steamodded + mejoras cuánticas: la carta «bloqueada» del aviso de desbloqueo (`j_locked`) no existe en `G.P_CENTERS` y cerraba el juego; se filtran claves inexistentes.
  - Talisman en desbloqueos: `check_for_unlock` recibe números grandes (nivel de mano) y mods como Paperback («Copa de sake») los comparaban con números normales.
  - Talisman en récords: Cartomancer compara la puntuación con `to_big(...)` y se cerraba si le llegaba un número normal.
  - The Binding of Jimbo: baraja «Keeper» (`hands >= 1` con número grande).
- Probados con el bot: Juego base, Calidad de vida, + Balatro ampliado, + Kino, + Pokémon (sin cierres tras los arreglos). Pendiente de completar: Isaac, Ortalab y Caos por separado.
- Archivos: `menu.lua` y `packs.lua` (nuevos), `main.lua`, `lovely.toml` (35 parches), `localization/es_ES.lua`, `recomendaciones.lua`, `manifest.json`.

## v0.3 — 2026-10-02
- **Rendimiento (adiós a «Calculando...»)**: The Binding of Jimbo activa en Steamodded las «mejoras cuánticas», que obligaban a recalcular todos los comodines y zonas cada vez que el juego consultaba la mejora de una carta (~8.000 recálculos y 7-14 s por mano, incluso sin comodines). Ahora se detectan automáticamente (inspeccionando el código con `jit.util`) las 13 cartas que usan esa mecánica y el recálculo solo se hace si alguna está en juego. Medido con el bot: **0,2-0,5 s por mano** (unas 30 veces más rápido) con resultados idénticos.
- **Estabilidad** (revisión para jugar Multiplayer entre Windows y Mac sin cierres), probada con un bot que juega partidas completas a velocidad x8:
  - Cryptid: el parche «Antimatter Deck» evaluaba `currentBack.effect` con `currentBack` nulo y cerraba el juego al dibujar el reverso de una carta (parche en `lovely.toml`).
  - Kino + Card Sleeves 1.9.4: las fundas «Género», «Kinoween» y «Películas A» leían `card.effect.center` y cerraban el juego al empezar la partida (parches en `lovely.toml`).
  - Kino / Bakery: zonas de cartas de una partida anterior ya destruidas cerraban el juego al empezar otra sin reiniciar (filtro en `SMODS.get_card_areas`).
  - Talisman: comparar el dinero o la puntuación («números grandes») con un número normal cerraba el juego. Lo mismo al comparar la puntuación con el tamaño de la ciega cuando uno es número grande y el otro no. Corregido en 20 puntos de 10 mods: Shop Undo (botón Cambiar y Deshacer), The Binding of Jimbo (pecados Envidia/Avaricia y 2 comodines), Paperback (Orgullo, Paraguas raído), Multiplayer (pegatina Persistente, ciega El Brazo, vista previa), Bunco (tamaño de ciega animado, comodín de fracción y contador del Cazarrecompensas), Bakery (amuleto de deuda), Kino (Cristal Oscuro, Pantera Negra y una ciega), Joker Evolution y Lost Edition (Vandalismo). Nueva función `guiaes_num()`.
  - Ortalab: la insignia de la ciega en el HUD cerraba el juego mientras el HUD se reconstruía (parche en `lovely.toml`).
  - Talisman + Steamodded 26.829: el parche de Talisman para `last_hand_oneshot` ya no coincidía; al acabar cada mano se comparaba puntuación y ciega sin protección. También protegidos el fin de ronda con Escudo, la reducción de ciega del juego base, la vista previa de El Brazo y el Gato Negro de Ortalab. `guiaes_num()` se inyecta además en el `main.lua` del juego.
  - Bunco + Steamodded 26.829: un parche de Bunco cerraba el bloque de la descripción de ediciones antes de tiempo y el juego se cerraba al mostrar cualquier carta con edición (parche en `lovely.toml`).
  - Multiplayer (TheOrder): elegir al azar entre una lista vacía de comodines o cartas cerraba el juego al puntuar; ahora lo resuelve el juego base.
  - Pokermon y The Binding of Jimbo: los créditos de artista cerraban el juego al pasar el ratón sobre una etiqueta o sello no registrados.
  - Cartas forzadas: la funda «Papel» de Paperback con un comodín prohibido por un reglamento de Multiplayer y la funda «Misterio» de Kino (regala `c_kino_mystery`, que no existe) cerraban el juego al empezar. Ahora se deduce el tipo o se crea una carta al azar del mismo tipo.
- `.luarc.json` movido a `herramientas/` (Steamodded lo confundía con un archivo de metadatos).
- Probado con un bot durante varias horas de partidas (todas las barajas, fundas, apuestas y reglamentos de Multiplayer).
- Archivos: `lovely.toml` (nuevo, 34 parches), `main.lua`, `localization/es_ES.lua`, `manifest.json`, `README.md`.

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
