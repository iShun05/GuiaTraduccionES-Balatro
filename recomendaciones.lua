-- Contenido de las pestañas «Recomendados», «Combina bien» y «Evita».
-- Cada página es una lista de secciones { titulo, color, lineas }.
-- Color: nombre de un color de G.C (GOLD, GREEN, RED, BLUE, PURPLE...).
-- Todo lo indicado se ha comprobado en el código de los mods instalados.
return {
    {
        pestana = "Recomendados",
        secciones = {
            {
                titulo = "Imprescindibles (calidad de vida)",
                color = "GREEN",
                lineas = {
                    "JokerDisplay: info en vivo bajo cada comodín (multi actual, activaciones...)",
                    "Handy: atajos, más velocidad y saltar animaciones (ajústalo en Opciones)",
                    "Cartomancer: apila la baraja, ve la tienda desde paquetes, mejora el rendimiento",
                    "Joker Run Info: pestaña «Comodines» en Información de la partida",
                    "Too Many Jokers: pulsa T para buscar cualquier carta de cualquier mod",
                    "Shop Undo: pulsa U (o clic derecho en Cambiar) para deshacer la tienda",
                    "Scrollable Descriptions: mueve con las flechas las descripciones largas",
                },
            },
            {
                titulo = "Base (no los desactives)",
                color = "GOLD",
                lineas = {
                    "Steamodded y Lovely: cargan todos los mods",
                    "Talisman: números gigantes; Cryptid no funciona sin él",
                    "Guía y Traducción ES: esta guía y todo el juego en español",
                },
            },
            {
                titulo = "Opcionales según gusto",
                color = "BLUE",
                lineas = {
                    "Card Sleeves: fundas que se suman a la baraja (más variedad al empezar)",
                    "Malverk + Dark Mode: texturas oscuras (Opciones > Texturas)",
                    "BetterSpanishLocale: corrige la traducción oficial; Solatro: solitario en el menú",
                },
            },
            {
                titulo = "Retirados (guardados en mods/Balatro_desactivados)",
                color = "RED",
                lineas = {
                    "Galdur: tu Steamodded ya trae ese menú y Galdur se autodesactiva",
                    "Better Mouse and Gamepad: Handy lo sustituye y ambos chocaban",
                },
            },
        },
    },
    {
        pestana = "Combina bien",
        secciones = {
            {
                titulo = "Balatro ampliado (equilibrado como el original)",
                color = "GREEN",
                lineas = {
                    "Bunco + Paperback + Extra Credit + Bakery + Prism + Lost Edition + Six Suits",
                    "Bunco, Six Suits y Paperback comparten una sola mano «Espectro» (no se duplica)",
                    "Añade Card Sleeves: Prism y Bakery traen fundas propias a juego",
                },
            },
            {
                titulo = "Partidas temáticas",
                color = "PURPLE",
                lineas = {
                    "Kino (cine), Pokermon, The Binding of Jimbo (Isaac) u Ortalab",
                    "Brillan solos o de dos en dos con el bloque «ampliado»",
                    "JokerDisplay ya trae datos específicos para Kino, Pokermon y Joker Evolution",
                },
            },
            {
                titulo = "Modo caos",
                color = "RED",
                lineas = {
                    "Cryptid + Talisman (obligatorio) + Handy para acelerar las puntuaciones enormes",
                    "Elige en los ajustes de Cryptid lo roto que quieres el juego",
                },
            },
            {
                titulo = "En línea (Multiplayer)",
                color = "BLUE",
                lineas = {
                    "Funciona con Cryptid, Ortalab, Pokermon, Extra Credit, Handy, JokerDisplay y TMJ",
                    "Ambos jugadores deben tener EXACTAMENTE los mismos mods y versiones",
                },
            },
        },
    },
    {
        pestana = "Evita",
        secciones = {
            {
                titulo = "Todo el contenido activado a la vez",
                color = "RED",
                lineas = {
                    "Con miles de cartas cada comodín sale rarísimo y el juego carga más lento",
                    "Mejor por perfiles: «ampliado», «temático» o «caos» (Mods > pulsa un mod > desactivar)",
                },
            },
            {
                titulo = "Cryptid junto a mods equilibrados",
                color = "RED",
                lineas = {
                    "Sus puntuaciones absurdas hacen triviales las cartas de los demás mods",
                },
            },
            {
                titulo = "Dos «saltar animaciones» a la vez",
                color = "GOLD",
                lineas = {
                    "Usa solo el de Handy o solo el de Talisman (Handy lo sustituye directamente)",
                },
            },
            {
                titulo = "Clasificatorias de Multiplayer con mods de contenido",
                color = "GOLD",
                lineas = {
                    "Las reglas clasificatorias exigen un perfil limpio: desactiva el contenido extra",
                },
            },
            {
                titulo = "Recuerda",
                color = "BLUE",
                lineas = {
                    "Tras activar o desactivar mods, reinicia el juego para aplicar los cambios",
                },
            },
        },
    },
}
