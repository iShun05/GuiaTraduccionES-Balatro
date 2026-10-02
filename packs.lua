-- Packs de mods combinables. Se pueden marcar varios: quedan activos los mods de
-- todos los packs marcados (más la base) y el resto se desactiva, también los
-- mods que se instalen en el futuro y no aparezcan aquí.
-- «Guía y Traducción ES» y Steamodded no se desactivan nunca.
-- Las dependencias (p. ej. Cryptid → Talisman) se añaden solas al aplicar.
-- color: nombre de un color de G.C (GREEN, BLUE, PURPLE, RED, ORANGE, GOLD...).

return {
    -- Siempre activos (también en «Solo juego base»)
    base = { "GuiaTraduccionES", "BetterSpanishLocale" },

    packs = {
        {
            clave = "calidad",
            nombre = "Calidad de vida",
            color = "GREEN",
            resumen = "JokerDisplay, Handy, buscador, deshacer, modo oscuro y Multiplayer",
            mods = { "Talisman", "Handy", "JokerDisplay", "cartomancer", "JokerRunInfo", "toomanyjokers",
                     "ShopUndo", "ScrDesc", "malverk", "darktextures", "BalatroDarkMode", "Solatro", "Multiplayer" },
        },
        {
            clave = "ampliado",
            nombre = "Balatro ampliado",
            color = "BLUE",
            contenido = true,
            resumen = "Bunco, Paperback, Extra Credit, Bakery, Prism, Lost Edition, Six Suits...",
            mods = { "CardSleeves", "Bunco", "paperback", "extracredit", "Bakery", "Prism", "LostEdition", "SixSuits", "joker_evolution" },
        },
        {
            clave = "kino",
            nombre = "Cine (Kino)",
            color = "PURPLE",
            contenido = true,
            resumen = "comodines de películas con géneros, golosinas y hechizos",
            mods = { "kino", "CardSleeves" },
        },
        {
            clave = "pokermon",
            nombre = "Pokémon",
            color = "RED",
            contenido = true,
            resumen = "comodines Pokémon que evolucionan y tipos de energía",
            mods = { "Pokermon", "CardSleeves" },
        },
        {
            clave = "tboj",
            nombre = "Binding of Isaac",
            color = "ORANGE",
            contenido = true,
            resumen = "objetos, baratijas y personajes de The Binding of Isaac",
            mods = { "TheBindingOfJimbo" },
        },
        {
            clave = "ortalab",
            nombre = "Ortalab",
            color = "GOLD",
            contenido = true,
            resumen = "Balatro alternativo: 150 comodines, maldiciones y zodiacos",
            mods = { "ortalab" },
        },
        {
            clave = "caos",
            nombre = "Caos (Cryptid)",
            color = "DARK_EDITION",
            contenido = true,
            resumen = "puntuaciones absurdas y cartas rotas a propósito",
            mods = { "Cryptid", "CardSleeves" },
        },
    },

    -- Valoración de combinaciones (además de las reglas generales de menu.lua).
    -- todos: packs que deben estar marcados; alguno: basta con uno de ellos.
    -- nivel: bien (verde), info (azul), aviso (naranja), desnivel (rojo).
    combinaciones = {
        {
            todos = { "caos" }, alguno = { "ampliado", "kino", "pokermon", "tboj", "ortalab" },
            nivel = "desnivel",
            texto = "Desnivelado: Cryptid hace triviales las cartas de los demás packs.",
        },
        {
            todos = { "ortalab" }, alguno = { "ampliado", "kino", "pokermon", "tboj", "caos" },
            nivel = "aviso",
            texto = "Ortalab es un Balatro alternativo: mezclado, sus zodiacos y maldiciones salen poco.",
        },
        {
            todos = { "kino", "pokermon" },
            nivel = "aviso",
            texto = "Kino y Pokémon tienen mecánicas propias que no interactúan: funcionan, pero se diluyen.",
        },
        {
            todos = { "tboj" }, alguno = { "kino", "pokermon", "ortalab", "caos" },
            nivel = "aviso",
            texto = "Isaac cambia muchas reglas: con otro pack temático, los dos pierden su gracia.",
        },
        {
            todos = { "ampliado" }, alguno = { "kino", "pokermon", "tboj" },
            nivel = "bien",
            texto = "Buena mezcla: el bloque ampliado mantiene el equilibrio y el tema añade sinergias.",
        },
        {
            todos = { "tboj" },
            nivel = "info",
            texto = "Isaac: partidas más largas, con baratijas y personajes de reglas propias.",
        },
        {
            todos = { "caos" },
            nivel = "info",
            texto = "Cryptid: elige en sus ajustes lo roto que quieres el juego.",
        },
    },
}
