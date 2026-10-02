-- Generado automáticamente desde traducciones/TheBindingOfJimbo.tsv
-- No editar a mano: edita el TSV y ejecuta herramientas/generar.py
return {
    descriptions = {
        Back = {
            b_tboj_apollyon = {
                name = "Baraja de Apolión",
                text = {
                    "Los comodines vendidos {C:attention}no pueden",
                    "{C:attention}volver a aparecer",
                },
            },
            b_tboj_cain = {
                name = "Baraja de Caín",
                text = {
                    "Duplica todas las {C:green,E:1,S:1.1}probabilidades",
                    "{C:attention}indicadas",
                    "{C:inactive}(p. ej.: {C:green}1 en 6{C:inactive} -> {C:green}2 en 6{C:inactive})",
                },
            },
            b_tboj_isaac = {
                name = "Baraja de Isaac",
                text = {
                    "Empiezas con {C:attention,T:active_tboj_the_d6}El D6",
                },
            },
            b_tboj_jacob_esau = {
                name = "Baraja de Jacob y Esaú",
                text = {
                    "{C:attention}+#1#{} espacio de activo",
                    "{C:attention}+#2#{} espacio de baratija",
                    "{C:red}#3#{} espacio de comodín",
                },
            },
            b_tboj_judas = {
                name = "Baraja de Judas",
                text = {
                    "Las cartas jugadas",
                    "ganan para siempre",
                    "{C:mult}#1#{} multi antes de puntuar;",
                    "{C:blue}#2#{} mano en cada ronda",
                },
            },
            b_tboj_keeper = {
                name = "Baraja del Guardián",
                text = {
                    "Empiezas con {C:money}$#1#{} extra y",
                    "{C:blue}#2#{} manos en cada ronda.",
                    "Al seleccionar la {C:attention}ciega{}, ganas",
                    "{C:blue}#3#{} mano por cada {C:money}$#4#{} que tengas",
                    "{C:inactive}(Máx. {C:blue}#5#{C:inactive} manos con {C:money}$#6#{C:inactive})",
                },
            },
        },
        Blind = {
            bl_tboj_bloat = {
                name = "La hinchazón",
                text = {
                    "Jugar o descartar",
                    "cuesta una mano",
                    "o un descarte adicional",
                },
            },
            bl_tboj_clog = {
                name = "Atasco",
                text = {
                    "La categoría de las cartas en la mano",
                    "sube o baja al azar",
                    "al jugar una mano",
                },
            },
            bl_tboj_envy = {
                name = "Envidia",
                text = {
                    "Al derrotarla,",
                    "vuelves a luchar con un",
                    "10 % del tamaño de la ciega",
                },
            },
            bl_tboj_gluttony = {
                name = "Gula",
                text = {
                    "Ciega extragrande",
                },
            },
            bl_tboj_greed = {
                name = "Avaricia",
                text = {
                    "-$2 por",
                    "mano jugada",
                },
            },
            bl_tboj_lust = {
                name = "Lujuria",
                text = {
                    "Debes jugar 2",
                    "palos o más",
                },
            },
            bl_tboj_monstro = {
                name = "Monstro",
                text = {
                    "14 cartas aleatorias",
                    "están debilitadas",
                },
            },
            bl_tboj_pride = {
                name = "Soberbia",
                text = {
                    "Debes jugar una categoría",
                    "en común con la mano anterior",
                },
            },
            bl_tboj_siren = {
                name = "La sirena",
                text = {
                    "Los comodines familiares",
                    "están debilitados",
                },
            },
            bl_tboj_sloth = {
                name = "Pereza",
                text = {
                    "-1 mano",
                },
            },
            bl_tboj_super_envy = {
                name = "Súper Envidia",
                text = {
                    "Al derrotarla,",
                    "vuelves a luchar con un",
                    "25 % del tamaño de la ciega",
                },
            },
            bl_tboj_super_gluttony = {
                name = "Súper Gula",
                text = {
                    "Ciega extragrande",
                },
            },
            bl_tboj_super_greed = {
                name = "Súper Avaricia",
                text = {
                    "-$2 por descarte",
                    "o mano jugada",
                },
            },
            bl_tboj_super_lust = {
                name = "Súper Lujuria",
                text = {
                    "Debes jugar 3",
                    "palos o más",
                },
            },
            bl_tboj_super_pride = {
                name = "Súper Soberbia",
                text = {
                    "Debes jugar 2 categorías",
                    "en común con la mano anterior",
                },
            },
            bl_tboj_super_sloth = {
                name = "Súper Pereza",
                text = {
                    "-1 mano",
                    "-1 descarte",
                },
            },
            bl_tboj_super_wrath = {
                name = "Súper Ira",
                text = {
                    "X0.75 a las fichas",
                    "y al multi base",
                },
            },
            bl_tboj_wrath = {
                name = "Ira",
                text = {
                    "X0.75 al multi base",
                },
            },
        },
        Enhanced = {
            m_tboj_bone = {
                name = "Carta de hueso",
                text = {
                    "{C:chips}+#1#{} fichas",
                    "{C:green}#2# en #3#{} probabilidades de",
                    "destruir la carta",
                },
            },
            m_tboj_laser = {
                name = "Carta láser",
                text = {
                    "Equilibra el {C:attention}#1# %{} de las {C:chips}fichas",
                    "y el {C:mult}multi{} al anotar",
                },
            },
            m_tboj_poop = {
                name = "Carta de caca",
                text = {
                    "{C:green}#1# en #2#{} probabilidades",
                    "de ganar {C:money}$#3#",
                    "{C:green}#4# en #5#{} probabilidades",
                    "de ganar {C:blue}+#6#{} mano",
                    "esta ronda",
                },
            },
        },
        Joker = {
            j_dusk = {
                text = {
                    "Reactiva todas las cartas",
                    "jugadas que anotan",
                    "en la {C:attention}última mano{} de la ronda",
                },
            },
            j_hack = {
                text = {
                    "Reactiva cada",
                    "{C:attention}2{}, {C:attention}3{}, {C:attention}4{} o {C:attention}5{}",
                    "jugado que anota",
                },
            },
            j_selzer = {
                text = {
                    "Reactiva todas las cartas",
                    "jugadas que anotan",
                    "durante las próximas {C:attention}#1#{} manos",
                },
            },
            j_sock_and_buskin = {
                text = {
                    "Reactiva todas las",
                    "cartas de {C:attention}figura{} jugadas",
                    "que anotan",
                },
            },
            j_tboj_20_20 = {
                name = "20/20",
                text = {
                    "Reactiva todas las cartas jugadas",
                    "{C:attention}#1#{} vez adicional",
                    "Multi {X:mult,C:white}X#2#{} por cada carta reactivada",
                },
            },
            j_tboj_7_seals = {
                name = "7 sellos",
                text = {
                    "Cada {C:attention}7{} descartado",
                    "gana un {C:attention}sello{} aleatorio",
                    "y crea la {C:attention}langosta",
                    "asociada",
                },
            },
            j_tboj_a_dollar = {
                name = "Un dólar",
                text = {
                    "Vende esta carta para",
                    "ganar {C:money}$#1#",
                },
            },
            j_tboj_a_lump_of_coal = {
                name = "Un trozo de carbón",
                text = {
                    "Multi {C:white,X:red}X1{}, más {C:white,X:red}X#1#{}",
                    "por cada carta que anota",
                },
            },
            j_tboj_a_quarter = {
                name = "Una moneda de 25",
                text = {
                    "Vende esta carta para",
                    "ganar {C:money}$#1#",
                },
            },
            j_tboj_a_snack = {
                name = "Un tentempié",
                text = {
                    "Suma {C:attention}#1#{} a todas las {C:green,E:1,S:1.1}probabilidades",
                    "{C:attention}indicadas{}; {C:attention}-#2#{} cuando",
                    "una probabilidad tiene éxito",
                },
            },
            j_tboj_abaddon = {
                name = "Abadón",
                text = {
                    "Al obtenerlo, {C:red}pierdes{} para siempre todas las {C:blue}manos",
                    "salvo {C:attention}1{} y ganas el {C:attention}doble{} de {C:red}descartes",
                    "Multi {C:white,X:mult}X#1#{} por descarte restante",
                    "{C:inactive}(Actual: multi {C:white,X:mult}X#2#{C:inactive})",
                },
            },
            j_tboj_angelic_prism = {
                name = "Prisma angelical",
                text = {
                    "Reactiva {C:attention}#1#{} vez adicional todas",
                    "las cartas jugadas que anotan",
                    "si la mano jugada contiene",
                    "{C:attention}#2#{} palos o más",
                },
            },
            j_tboj_betrayal = {
                name = "Traición",
                text = {
                    "Destruye la {C:attention}primera carta",
                    "de la {C:attention}primera{} mano de la ronda que",
                    "tenga menos {C:chips}fichas{} {C:attention}totales{} que la",
                    "siguiente carta de la {C:attention}mano de póker",
                },
            },
            j_tboj_black_candle = {
                name = "Vela negra",
                text = {
                    "Los comodines de la tienda",
                    "no pueden ser {C:attention}eternos{},",
                    "{C:attention}perecederos{} ni {C:attention}de alquiler",
                },
            },
            j_tboj_blood_oath = {
                name = "Juramento de sangre",
                text = {
                    "Al seleccionar la {C:attention}ciega{},",
                    "pierdes todas las {C:blue}manos{} salvo una",
                    "y este comodín gana",
                    "multi {C:white,X:mult}X#1#{} por mano perdida;",
                    "se reinicia al final de la ronda",
                    "{C:inactive}(Actual: multi {C:white,X:mult}X#2#{C:inactive})",
                },
            },
            j_tboj_blood_of_the_martyr = {
                name = "Sangre del mártir",
                text = {
                    "Las cartas que anotan con {C:mult}multi{}",
                    "adicional dan el {C:attention}doble{} de {C:mult}multi",
                },
            },
            j_tboj_blood_puppy = {
                name = "Cachorro de sangre",
                text = {
                    "Multi {C:white,X:mult}X#1#{}",
                    "{C:inactive,s:0.8}Cambia de forma tras {C:attention,s:0.8}#2#{C:inactive,s:0.8} ronda#3#",
                },
            },
            j_tboj_blood_puppy_2 = {
                name = "Cachorro de sangre",
                text = {
                    "Multi {C:white,X:mult}X#1#{}",
                    "Destruye {C:attention}#2#{} carta jugada",
                    "tras jugar la mano",
                    "{C:inactive,s:0.8}Cambia de forma tras {C:attention,s:0.8}#3#{C:inactive,s:0.8} ronda#4#",
                    "{C:inactive,s:0.8}o si {C:attention,s:0.8}no te quedan manos",
                },
            },
            j_tboj_blood_puppy_3 = {
                name = "Cachorro de sangre",
                text = {
                    "Multi {C:white,X:mult}X#1#{}",
                    "Destruye {C:attention}#2#{} cartas jugadas",
                    "tras jugar la mano",
                    "{C:inactive,s:0.8}Cambia de forma si {C:attention,s:0.8}no te quedan manos",
                },
            },
            j_tboj_boom = {
                name = "¡Bum!",
                text = {
                    "Vende esta carta para",
                    "crear {C:attention}#1# bombas",
                    "{C:inactive}(Debe haber espacio)",
                },
            },
            j_tboj_bozo = {
                name = "Bozo",
                text = {
                    "Si la primera mano de la ronda es",
                    "una sola carta de {C:attention}caca{},",
                    "le añade {C:dark_edition}polícromo",
                },
            },
            j_tboj_breakfast = {
                name = "Desayuno",
                text = {
                    "Haz clic en este comodín",
                    "para {C:attention}robar{} una carta",
                    "{C:inactive}(Cartas por robar: {C:attention}#1#{C:inactive})",
                },
            },
            j_tboj_brimstone = {
                name = "Azufre",
                text = {
                    "{C:white,X:mult}X#1#{} por cada",
                    "carta que anota",
                },
            },
            j_tboj_brittle_bones = {
                name = "Huesos frágiles",
                text = {
                    "Este comodín gana {C:chips}+#1#{} fichas",
                    "por cada {C:attention}carta de hueso",
                    "que se destruye",
                    "{C:inactive}(Actual: {C:chips}+#2#{C:inactive} fichas)",
                },
            },
            j_tboj_brother_bobby = {
                name = "Hermano Bobby",
                text = {
                    "{C:chips}+#1#{} fichas",
                },
            },
            j_tboj_camo_undies = {
                name = "Calzoncillos de camuflaje",
                text = {
                    "Este comodín gana {C:mult}+#1#{} multi si",
                    "la mano jugada contiene una {C:attention}doble pareja{};",
                    "se duplica en la {C:attention}primera mano{} de la ronda",
                    "{C:inactive}(Actual: {C:mult}+#2#{C:inactive} multi)",
                },
            },
            j_tboj_champion_belt = {
                name = "Cinturón de campeón",
                text = {
                    "Multi {C:white,X:mult}X#1#{}",
                    "Todas las {C:attention}ciegas grandes{} son",
                    "{C:attention}pecados capitales",
                },
            },
            j_tboj_charm_of_the_vampire = {
                name = "Amuleto del vampiro",
                text = {
                    "Este comodín gana {C:mult}+#1#{} multi",
                    "al derrotar una {C:attention}ciega",
                    "{C:inactive}(Actual: {C:mult}+#2#{C:inactive} multi)",
                },
            },
            j_tboj_chemical_peel = {
                name = "Exfoliante químico",
                text = {
                    "{C:mult}+#1#{} multi cuando",
                    "el número de manos",
                    "restantes es {C:attention}impar",
                },
            },
            j_tboj_chocolate_milk = {
                name = "Leche con chocolate",
                text = {
                    "Gana multi {C:white,X:mult}X#1#{} al",
                    "jugar una mano",
                    "Solo puntúa cuando es tu comodín",
                    "de {C:attention}más a la derecha{}, y luego se {C:attention}reinicia",
                    "{C:inactive}(Actual: multi {C:white,X:mult}X#2#{C:inactive})",
                },
            },
            j_tboj_continuum = {
                name = "Continuo",
                text = {
                    "Las cartas jugadas se {C:attention}desplazan{} una",
                    "a la izquierda cuando una carta {C:attention}anota",
                },
            },
            j_tboj_contract_from_below = {
                name = "Contrato del inframundo",
                text = {
                    "Gana tanto {C:money}${} como el {C:attention}doble",
                    "de la recompensa de la ciega al final de la ronda",
                    "{C:green}#1# en #2#{} probabilidades de {C:attention}perderlo{} en su lugar",
                },
            },
            j_tboj_cricket_head = {
                name = "Cabeza de Grillo",
                text = {
                    "{C:mult}+#1#{} y multi {C:white,X:mult}X#2#{}",
                },
            },
            j_tboj_crown_of_light = {
                name = "Corona de luz",
                text = {
                    "Las cartas jugadas dan",
                    "multi {X:mult,C:white}X#1#{} al anotar",
                    "en la {C:attention}primera{} mano de la ronda",
                },
            },
            j_tboj_cube_of_meat = {
                name = "Cubo de carne",
                text = {
                    [1] = {
                        "{C:mult}+#1#{}, {C:mult}+#2#{}, multi {C:white,X:mult}X#3#{} o {C:white,X:mult}X#4#{}",
                        "según la fase de este comodín",
                        "{C:inactive}(Actual: {C:attention}fase #5#{C:inactive})",
                    },
                    [2] = {
                        "Obtener otro {C:attention}cubo de carne{}",
                        "sube la fase del {C:attention}cubo de carne",
                        "{C:attention}de más a la izquierda{} en su lugar",
                        "{C:inactive}(Puede aparecer varias veces en la tienda)",
                    },
                },
            },
            j_tboj_dead_bird = {
                name = "Pájaro muerto",
                text = {
                    "{C:mult}+#1#{} multi después",
                    "de la {C:attention}primera{} mano",
                    "de la ronda",
                },
            },
            j_tboj_dead_cat = {
                name = "Gato muerto",
                text = {
                    "Evita la muerte {C:attention}#1#{} veces",
                    "si las fichas obtenidas son",
                    "al menos un {C:attention}75 %{} de lo requerido",
                    "y luego se {C:red}autodestruye",
                },
            },
            j_tboj_dead_dove = {
                name = "Paloma muerta",
                text = {
                    "Crea una carta {C:spectral}espectral{}",
                    "cada {C:attention}#1# {C:inactive}[#2#]{} cartas robadas",
                    "durante una {C:attention}ciega",
                },
            },
            j_tboj_dead_eye = {
                name = "Ojo certero",
                text = {
                    "Este comodín gana multi {X:mult,C:white}X#1#{}",
                    "cuando la mano de póker {C:attention}jugada{} comparte",
                    "una {C:attention}categoría{} con la mano de póker",
                    "{C:attention}anterior{}; si no, se reinicia",
                    "{C:inactive}(Actual: multi {X:mult,C:white} X#2# {C:inactive})",
                    "{C:inactive}(Última mano: #3#)",
                },
            },
            j_tboj_death_list = {
                name = "La lista de la Muerte",
                text = {
                    "Crea una carta de {C:tboj_loot}botín{} aleatoria",
                    "y este comodín gana {C:chips}+#1#{} fichas",
                    "si la mano ganadora contiene",
                    "un {C:attention}#2#{} que anota;",
                    "la categoría cambia cada ronda",
                    "{C:inactive}(Actual: {C:chips}+#3#{C:inactive} fichas)",
                    "{C:inactive}(Debe haber espacio)",
                },
            },
            j_tboj_distant_admiration = {
                name = "Admiración a distancia",
                text = {
                    "La {C:attention}primera{} y la {C:attention}segunda",
                    "carta de la mano de póker",
                    "dan {C:mult}+#1#{} multi al anotar",
                },
            },
            j_tboj_dream_catcher = {
                name = "Atrapasueños",
                text = {
                    "La {C:attention}ciega jefe{} de la siguiente",
                    "apuesta inicial es {C:attention}#1#",
                    "{s:0.8}La predicción puede cambiar",
                    "{s:0.8}según lo que hagas",
                },
            },
            j_tboj_e_coli = {
                name = "E. coli",
                text = {
                    "Todas las cartas de {C:attention}figura{} jugadas",
                    "se convierten en cartas de {C:attention}caca",
                    "al anotar",
                },
            },
            j_tboj_epiphora = {
                name = "Epífora",
                text = {
                    "Reactiva las {C:attention}#1#{} primeras",
                    "cartas jugadas que anotan",
                    "{C:attention}#2#{} vez adicional; aumenta",
                    "en {C:attention}#3#{} al jugar {C:attention}seguida",
                    "la misma {C:attention}mano de póker",
                    "{C:inactive}(Última mano: {C:attention}#4#{C:inactive})",
                },
            },
            j_tboj_eye_of_greed = {
                name = "Ojo de la avaricia",
                text = {
                    "Tras anotar {C:attention}#1#{} {C:inactive}[#2#]",
                    "cartas, gasta {C:money}$#3#{} y",
                    "añade un {C:attention}sello de oro{} a",
                    "la siguiente carta que anota",
                },
            },
            j_tboj_eye_of_the_occult = {
                name = "Ojo de lo oculto",
                text = {
                    "Cada {C:attention}#1#{} jugado da",
                    "multi {C:white,X:mult}X#2#{} al anotar",
                    "{s:0.8}La categoría cambia cada ronda",
                },
            },
            j_tboj_flat_stone = {
                name = "Piedra plana",
                text = {
                    "Invierte las cartas que {C:attention}anotan{}",
                    "y las que {C:attention}no anotan",
                },
            },
            j_tboj_forever_alone = {
                name = "Siempre solo",
                text = {
                    "La {C:attention}quinta{} carta de",
                    "la mano de póker da",
                    "{C:chips}+#1#{} fichas al anotar",
                },
            },
            j_tboj_friend_zone = {
                name = "Zona de amigos",
                text = {
                    "La {C:attention}tercera{} y la {C:attention}cuarta",
                    "carta de la mano de póker",
                    "dan {C:money}$#1#{} al anotar",
                },
            },
            j_tboj_fruity_plum = {
                name = "Ciruela afrutada",
                text = {
                    "Este comodín gana {C:chips}+#1#{} fichas",
                    "cuando anota cada {V:1}#2#{} jugado;",
                    "el palo cambia tras cada mano jugada",
                    "{C:inactive}(Actual: {C:chips}+#3#{C:inactive} fichas)",
                },
            },
            j_tboj_glass_eye = {
                name = "Ojo de cristal",
                text = {
                    "Este comodín gana multi {X:mult,C:white}X#1#{}",
                    "cuando una probabilidad {C:attention}tiene éxito",
                    "{C:inactive}(Actual: multi {X:mult,C:white} X#2# {C:inactive})",
                },
            },
            j_tboj_glitched_crown = {
                name = "Corona corrupta",
                text = {
                    "Los {C:attention}comodines{} y {C:attention}activos{} de",
                    "la {C:attention}tienda{} y los {C:attention}paquetes potenciadores",
                    "alternan entre {C:attention}#1#{} opciones",
                    "cada {C:attention}#2#{} segundos",
                },
            },
            j_tboj_greed_gullet = {
                name = "Gaznate de la avaricia",
                text = {
                    "Al seleccionar la {C:attention}ciega{}, ganas",
                    "{C:blue}+1{} mano por cada {C:money}$#1#{} que tengas",
                    "{C:inactive}(Máx. {C:blue}#2#{C:inactive} manos con {C:money}$#3#{C:inactive})",
                },
            },
            j_tboj_guppy_eye = {
                name = "Ojo de Guppy",
                text = {
                    "Pasa el ratón sobre un {C:attention}paquete potenciador",
                    "para {C:attention}revelar{} su contenido",
                },
            },
            j_tboj_habit = {
                name = "Hábito",
                text = {
                    "Añade {C:attention}#1# carga",
                    "al {C:attention}activo{} de más a la izquierda",
                    "en la {C:attention}última mano{} de la ronda",
                },
            },
            j_tboj_hallowed_ground = {
                name = "Suelo sagrado",
                text = {
                    "Las cartas de {C:attention}caca{} jugadas dan",
                    "multi {C:white,X:red}X#1#{} al anotar",
                },
            },
            j_tboj_halo_of_flies = {
                name = "Halo de moscas",
                text = {
                    "Crea {C:attention}#1# moscas bonitas",
                    "al seleccionar la {C:attention}ciega",
                },
            },
            j_tboj_head_of_the_keeper = {
                name = "Cabeza del Guardián",
                text = {
                    "Las cartas jugadas con {C:attention}sello",
                    "dan {C:money}$#1#{} al anotar",
                },
            },
            j_tboj_headless_baby = {
                name = "Bebé sin cabeza",
                text = {
                    "Cada carta de la mano que no es de {C:attention}figura",
                    "gana para siempre",
                    "{C:mult}+#1#{} multi al jugar una mano",
                },
            },
            j_tboj_heart = {
                name = "<3",
                text = {
                    "Vende esta carta para",
                    "convertir todas las cartas {C:attention}de",
                    "{C:attention}la mano{} en {C:hearts}corazones",
                },
            },
            j_tboj_holy_light = {
                name = "Luz sagrada",
                text = {
                    "{C:green}#1# en #2#{} probabilidades de que",
                    "las cartas jugadas den",
                    "multi {X:mult,C:white} X#3# {} al anotar",
                },
            },
            j_tboj_holy_water = {
                name = "Agua bendita",
                text = {
                    "Cada carta {C:attention}de la mano{}",
                    "gana para siempre {C:chips}+#1#{} fichas",
                    "al jugar una mano",
                },
            },
            j_tboj_hushy = {
                name = "Hushy",
                text = {
                    "Las cartas de {C:clubs}tréboles{} jugadas",
                    "dan {C:chips}+#1#{} fichas al anotar",
                    "por cada carta que no es de {C:clubs}tréboles{}",
                    "anotada esta ronda",
                    "{C:inactive}(Actual: {C:chips}+#2#{C:inactive} fichas)",
                },
            },
            j_tboj_ibs = {
                name = "SII",
                text = {
                    "Las cartas de {C:attention}caca{} de la mano activan uno de",
                    "estos efectos al anotar:",
                    "- Crear una {C:attention}mosca bonita",
                    "- {C:mult}+#1#{} multi",
                    "- Convertir las cartas adyacentes en cartas de {C:attention}caca",
                    "- Cambiar su palo a {C:spades}picas",
                    "- Multi {C:white,X:mult}X#2#{}",
                    "- Convertirse en carta de {C:attention}piedra",
                    "- Multi {C:white,X:mult}X#3#{} y luego se {C:red}autodestruye",
                },
            },
            j_tboj_iron_bar = {
                name = "Barra de hierro",
                text = {
                    "Las cartas de {C:attention}acero{} jugadas",
                    "dan multi {X:mult,C:white}X#1#{}",
                    "al anotar",
                },
            },
            j_tboj_judas_shadow = {
                name = "Sombra de Judas",
                text = {
                    "Evita la muerte y cambia",
                    "la baraja a la {C:attention}baraja de Judas",
                    "si las fichas obtenidas son",
                    "al menos un {C:attention}25 %{} de lo requerido",
                    "y luego se {C:red}autodestruye",
                },
            },
            j_tboj_keeper_sack = {
                name = "Saco del Guardián",
                text = {
                    "Este comodín gana {C:mult}+#1#{} multi",
                    "por cada {C:money}$#2#{C:inactive} [#3#]{} gastados",
                    "{C:inactive}(Actual: {C:mult}+#4#{C:inactive} multi)",
                },
            },
            j_tboj_lil_loki = {
                name = "Pequeño Loki",
                text = {
                    "Este comodín gana {C:mult}+#1#{} multi",
                    "si la mano jugada tiene",
                    "exactamente {C:attention}#2#{} cartas",
                    "{C:inactive}(Actual: {C:mult}+#3#{C:inactive} multi)",
                },
            },
            j_tboj_little_chad = {
                name = "Pequeño C.H.A.D.",
                text = {
                    "Las cartas de {C:hearts}corazones{} jugadas",
                    "dan {C:mult}+#1#{} multi, {C:mult}+#1#{} por",
                    "cada {C:blue}mano{} restante, al anotar",
                },
            },
            j_tboj_little_gish = {
                name = "Pequeño Gish",
                text = {
                    "Las cartas de {C:spades}picas{}",
                    "jugadas dan {C:mult}+#1#{} multi",
                    "y {C:chips}+#2#{} fichas al anotar",
                },
            },
            j_tboj_little_steven = {
                name = "Pequeño Steven",
                text = {
                    "{C:mult}+#1#{} multi si la mano",
                    "jugada contiene al menos",
                    "1 carta {C:attention}que no anota",
                },
            },
            j_tboj_lucky_foot = {
                name = "Pata de la suerte",
                text = {
                    "Suma {C:attention}#1#{} a todas las {C:green,E:1,S:1.1}probabilidades",
                    "{C:attention}indicadas",
                    "Las {C:attention}píldoras{} no pueden bajar",
                    "el {C:attention}nivel{} de una mano de póker",
                },
            },
            j_tboj_luna = {
                name = "Luna",
                text = {
                    "Si la mano jugada es",
                    "{C:attention}#1#{},",
                    "{C:attention}#2#{}",
                    "o {C:attention}#3#{},",
                    "la mejora {C:attention}#4#{} niveles",
                },
            },
            j_tboj_lusty_blood = {
                name = "Sangre lujuriosa",
                text = {
                    "Este comodín gana multi {X:mult,C:white}X#1#{}",
                    "por cada carta de juego {C:attention}destruida{};",
                    "se reinicia al derrotar a la {C:attention}ciega jefe",
                    "{C:inactive}(Actual: multi {X:mult,C:white} X#2# {C:inactive})",
                },
            },
            j_tboj_marked = {
                name = "Marcado",
                text = {
                    "Cada {C:attention}#1#{}, {C:attention}#2#{} y {C:attention}#3#{} jugado",
                    "da {C:chips}+#4#{} fichas al anotar",
                    "{s:0.8}Las categorías cambian cada ronda",
                },
            },
            j_tboj_meat = {
                name = "¡CARNE!",
                text = {
                    "{C:mult}+#1#{} multi por cada",
                    "{C:blue}mano{} restante",
                    "{C:inactive}(Actual: {C:mult}+#2#{C:inactive} multi)",
                },
            },
            j_tboj_mercurius = {
                name = "Mercurio",
                text = {
                    "Si la mano jugada es una {C:attention}pareja{},",
                    "gana {C:attention}+#1#{} de tamaño de mano esta ronda;",
                    "aumenta en {C:attention}#2#{} al",
                    "omitir una {C:attention}ciega",
                },
            },
            j_tboj_missing_no = {
                name = "Missing No.",
                text = {
                    "{C:attention}Cambia{} todos los comodines",
                    "al final de la ronda",
                    "{s:0.8}No puede cambiar a {C:attention,s:0.8}Missing No.",
                },
            },
            j_tboj_mom_heels = {
                name = "Tacones de mamá",
                text = {
                    "Las {C:attention}reinas{} jugadas dan",
                    "{C:mult}+#1#{} multi al anotar",
                },
            },
            j_tboj_money_equal_power = {
                name = "Dinero = Poder",
                text = {
                    "Multi {X:mult,C:white}X#1#{} por",
                    "cada {C:money}$#2#{} que tengas",
                    "{C:inactive}(Actual: multi {X:mult,C:white}X#3#{C:inactive})",
                },
            },
            j_tboj_mongo_baby = {
                name = "Bebé Mongo",
                text = {
                    "Copia la habilidad del",
                    "{C:attention}comodín familiar{} de la derecha",
                },
            },
            j_tboj_monstro_lung = {
                name = "Pulmón de Monstro",
                text = {
                    "Añade al azar de {C:attention}#1#{} a {C:attention}#2#{}",
                    "cartas a tu {C:attention}mano jugada",
                    "antes de determinar la {C:attention}mano de póker{}",
                    "y luego las {C:attention}destruye{} tras puntuar",
                },
            },
            j_tboj_montezuma_revenge = {
                name = "La venganza de Moctezuma",
                text = {
                    "Da multi {C:white,X:mult}X#1#{} por cada",
                    "{C:attention}carta de caca{} de tu {C:attention}baraja completa",
                    "{C:inactive}(Actual: multi {C:white,X:mult}X#2#{C:inactive})",
                },
            },
            j_tboj_my_reflection = {
                name = "Mi reflejo",
                text = {
                    "Fija todas las {C:green,E:1,S:1.1}probabilidades",
                    "{C:attention}indicadas{} en {C:attention}#1#",
                },
            },
            j_tboj_neptunus = {
                name = "Neptuno",
                text = {
                    "Si la mano jugada es una {C:attention}escalera de color{},",
                    "reactiva {C:attention}#1#{} vez adicional todas",
                    "las cartas jugadas que anotan,",
                    "{C:attention}+1{} por cada {C:blue}mano{} restante",
                    "{C:inactive}({C:attention}#2#{C:inactive} reactivación#3# en la próxima mano)",
                },
            },
            j_tboj_number_one = {
                name = "Número uno",
                text = {
                    "{C:chips}+#1#{} fichas si",
                    "la mano jugada contiene",
                    "{C:attention}#2#{} cartas o menos",
                },
            },
            j_tboj_number_two = {
                name = "Número dos",
                text = {
                    "Crea una {C:attention}bomba{} {C:dark_edition}negativa{} con mecha",
                    "cada {C:attention}#1# {C:inactive}[#2#]{} cartas de {C:attention}caca{} anotadas",
                },
            },
            j_tboj_odd_mushroom_large = {
                name = "Champiñón raro",
                text = {
                    "Este comodín gana multi {C:white,X:mult}X#1#{}",
                    "si la {C:attention}mano de póker{} contiene",
                    "{C:attention}#2#{} o más cartas {C:attention}impares",
                    "{C:inactive}(Actual: multi {C:white,X:mult}X#3#{C:inactive})",
                },
            },
            j_tboj_odd_mushroom_thin = {
                name = "Champiñón raro",
                text = {
                    "Este comodín gana {C:chips}+#1#{} fichas",
                    "cuando anota cada carta",
                    "{C:attention}impar{} jugada",
                    "{C:inactive}(Actual: {C:chips}+#2#{C:inactive} fichas)",
                },
            },
            j_tboj_orphan_socks = {
                name = "Calcetines huérfanos",
                text = {
                    "Este comodín gana {C:chips}+#1#{} fichas si",
                    "la mano jugada contiene una {C:attention}pareja{}",
                    "{C:inactive}(Actual: {C:chips}+#2#{C:inactive} fichas)",
                },
            },
            j_tboj_ouija_board = {
                name = "Tablero de ouija",
                text = {
                    "Si la primera mano de la ronda es",
                    "una sola {C:attention}carta con categoría{}, la",
                    "destruye y crea una carta {C:spectral}espectral",
                    "Solo funciona una vez por categoría",
                    "{C:inactive}(Debe haber espacio)",
                },
            },
            j_tboj_pageant_boy = {
                name = "Niño de concurso",
                text = {
                    "Gana {C:money}$#1#{} por cada",
                    "{C:attention}rey{} de tu {C:attention}baraja completa",
                    "al final de la ronda",
                    "{C:inactive}(Actual: {C:money}$#2#{C:inactive})",
                },
            },
            j_tboj_parasitoid = {
                name = "Parasitoide",
                text = {
                    "Cuando anota una carta jugada,",
                    "{C:green}#1# en #2#{} de crear una {C:attention}mosca bonita",
                    "y {C:green}#1# en #2#{} de crear una {C:attention}araña azul",
                },
            },
            j_tboj_paschal_candle = {
                name = "Cirio pascual",
                text = {
                    "Este comodín gana {C:chips}+#1#{} fichas",
                    "por cada {C:attention}ciega{} seguida",
                    "derrotada en {C:attention}una sola mano",
                    "{C:inactive}(Actual: {C:chips}+#2#{C:inactive} fichas)",
                },
            },
            j_tboj_pentagram = {
                name = "Pentagrama",
                text = {
                    "Los {C:attention}paquetes de bufón{} contienen",
                    "un comodín {C:attention}ángel{} o {C:attention}demonio{} aleatorio",
                },
            },
            j_tboj_piggy_bank = {
                name = "Hucha",
                text = {
                    "Este comodín gana {C:money}$#1#",
                    "de valor de venta cada vez",
                    "que ganas {C:money}dinero",
                },
            },
            j_tboj_pluto = {
                name = "Plutón",
                text = {
                    "Si la mano jugada es una {C:attention}carta alta{},",
                    "anota la categoría {C:attention}más baja{} en lugar",
                    "de la {C:attention}más alta{} y da {C:white,X:mult}multi X",
                    "igual a la {C:attention}raíz cúbica{} de las {C:chips}fichas",
                    "totales de las demás cartas jugadas",
                    "{C:inactive}(Actual: multi {C:white,X:mult}X#1#{C:inactive})",
                },
            },
            j_tboj_proptosis = {
                name = "Proptosis",
                text = {
                    "Las cartas jugadas dan multi {C:white,X:mult}X#1#{}",
                    "dividido entre su {C:attention}posición",
                    "en la {C:attention}mano jugada{} al anotar",
                },
            },
            j_tboj_red_stew = {
                name = "Guiso rojo",
                text = {
                    "{C:mult}+#1#{} multi",
                    "{C:mult}-#2#{} multi por cada mano jugada",
                    "{C:mult}+#2#{} multi al final de la ronda",
                },
            },
            j_tboj_revelation = {
                name = "Revelación",
                text = {
                    "Este comodín gana multi {X:mult,C:white}X#1#{}",
                    "por cada carta {C:attention}robada{};",
                    "se reinicia al final de la ronda",
                    "{C:inactive}(Actual: multi {X:mult,C:white}X#2#{C:inactive})",
                },
            },
            j_tboj_robo_baby = {
                name = "Robo-bebé",
                text = {
                    "Al empezar la ronda,",
                    "añade una {C:attention}carta láser{} aleatoria",
                    "a tu mano",
                },
            },
            j_tboj_sacred_heart = {
                name = "Corazón sagrado",
                text = {
                    "Las {C:attention}cartas que no anotan{}",
                    "dan multi {C:white,X:mult}X#1#{}",
                },
            },
            j_tboj_sacred_orb = {
                name = "Orbe sagrado",
                text = {
                    "Los comodines {C:blue}comunes{} no pueden",
                    "aparecer en la tienda",
                    "Los comodines {C:green}poco comunes{} de la tienda",
                    "tienen {C:green}#1# en #2#{} probabilidades",
                    "de {C:attention}cambiarse",
                },
            },
            j_tboj_schoolbag = {
                name = "Mochila",
                text = {
                    "{C:attention}+#1#{} espacio de activo",
                    "{s:0.8}Si este comodín se vende o se destruye",
                    "{s:0.8}y te quedan más {C:attention,s:0.8}activos",
                    "{s:0.8}que espacios, se destruye un",
                    "{s:0.8}{C:attention,s:0.8}activo{s:0.8} no {s:0.8,C:dark_edition}negativo{s:0.8} aleatorio",
                },
            },
            j_tboj_seraphim = {
                name = "Serafín",
                text = {
                    "Al jugar una mano, añade",
                    "una {C:attention}copia temporal que no anota",
                    "de la {C:attention}primera{} carta de la mano jugada",
                    "a la mano jugada;",
                    "da multi {C:white,X:mult}X#1#{}",
                },
            },
            j_tboj_shard_of_glass = {
                name = "Fragmento de cristal",
                text = {
                    "Cuando se destruye una",
                    "{C:attention}carta de vidrio{}, destruye",
                    "las cartas {C:attention}adyacentes",
                },
            },
            j_tboj_sister_maggy = {
                name = "Hermana Maggy",
                text = {
                    "{C:mult}+#1#{} multi",
                },
            },
            j_tboj_skatole = {
                name = "Escatol",
                text = {
                    "Las cartas de {C:attention}caca{} jugadas crean",
                    "una {C:attention}mosca bonita{} al anotar",
                },
            },
            j_tboj_smart_fly = {
                name = "Mosca lista",
                text = {
                    "Las cartas de {C:diamonds}diamantes{} jugadas",
                    "dan {C:mult}+#1#{} multi por cada carta",
                    "de la mano al anotar",
                },
            },
            j_tboj_sol = {
                name = "Sol",
                text = {
                    "Este comodín gana multi {C:white,X:mult}X#1#{}",
                    "por cada mano de póker {C:attention}distinta",
                    "jugada en esta apuesta inicial",
                    "al derrotar a la {C:attention}ciega jefe",
                    "{C:inactive}(Actual: multi {C:white,X:mult}X#2#{C:inactive})",
                },
            },
            j_tboj_soul_locket = {
                name = "Relicario del alma",
                text = {
                    "Este comodín gana al azar",
                    "{C:chips}+#1#{} fichas o {C:mult}+#2#{} multi al",
                    "usar un {C:attention}corazón de alma",
                    "o un {C:attention}corazón negro",
                    "{C:inactive}(Actual: {C:chips}+#3#{C:inactive} fichas y {C:mult}+#4#{C:inactive} multi)",
                },
            },
            j_tboj_spoon_bender = {
                name = "Doblacucharas",
                text = {
                    "Las {C:attention}cartas que no anotan{}",
                    "dan multi {C:white,X:mult}X#1#{}",
                },
            },
            j_tboj_stapler = {
                name = "Grapadora",
                text = {
                    "Multi {X:red,C:white}X#1#{}",
                    "{C:attention}Fijado",
                },
            },
            j_tboj_steam_sale = {
                name = "Rebajas de Steam",
                text = {
                    "Todo cuesta {C:money}$#1#{} menos",
                    "{C:inactive,s:0.8}(Cambios, cartas, vales, paquetes)",
                },
            },
            j_tboj_steven = {
                name = "Steven",
                text = {
                    "Multi {X:mult,C:white}X#1#{} si la mano",
                    "jugada contiene al menos",
                    "1 carta {C:attention}que no anota",
                },
            },
            j_tboj_stop_watch = {
                name = "Cronómetro",
                text = {
                    "{C:attention}Duplica{} los valores de escalado de los comodines",
                },
            },
            j_tboj_supper = {
                name = "Cena",
                text = {
                    "Gana {C:money}$#1#{} al",
                    "final de la ronda;",
                    "pierde {C:money}$#2#{} por",
                    "ronda jugada",
                },
            },
            j_tboj_the_battery = {
                name = "La batería",
                text = {
                    "Los {C:attention}activos{} pueden sobrecargarse",
                    "hasta el {C:attention}doble{} de su carga máxima",
                },
            },
            j_tboj_the_body = {
                name = "El cuerpo",
                text = {
                    "{C:red}+#1#{} descartes",
                },
            },
            j_tboj_the_halo = {
                name = "El halo",
                text = {
                    "{C:chips}+#1#{} fichas, {C:mult}+#2#{} multi",
                    "Gana {C:money}$#3#{} al",
                    "final de la ronda",
                },
            },
            j_tboj_the_inner_eye = {
                name = "El ojo interior",
                text = {
                    "{C:attention}+1{} al límite de selección de cartas",
                },
            },
            j_tboj_the_mark = {
                name = "La marca",
                text = {
                    "Cada {C:attention}6{} jugado da",
                    "{C:mult}+#1#{} multi al anotar.",
                    "Si la mano jugada es exactamente",
                    "{C:attention}tres 6{}, cada uno da",
                    "{C:mult}+#1#{} y multi {C:white,X:mult}X#2#{}",
                    "al anotar en su lugar",
                },
            },
            j_tboj_the_mind = {
                name = "La mente",
                text = {
                    "{C:attention}+#1#{} de tamaño de mano",
                },
            },
            j_tboj_the_pact = {
                name = "El pacto",
                text = {
                    "{C:chips}+#1#{} fichas y {C:mult}+#2#{} multi",
                },
            },
            j_tboj_the_peeper = {
                name = "El mirón",
                text = {
                    "Cada {C:attention}carta de figura",
                    "de la mano",
                    "da {C:mult}+#1#{} multi",
                },
            },
            j_tboj_the_relic = {
                name = "La reliquia",
                text = {
                    "Crea un {C:attention}corazón de alma",
                    "al final de la ronda",
                    "{C:inactive}(Debe haber espacio)",
                },
            },
            j_tboj_the_sad_onion = {
                name = "La cebolla triste",
                text = {
                    "Este comodín gana {C:chips}+#1#{} fichas",
                    "al jugar una mano",
                    "{C:inactive}(Actual: {C:chips}+#2#{C:inactive} fichas)",
                },
            },
            j_tboj_the_small_rock = {
                name = "La piedrecita",
                text = {
                    "Las cartas de {C:attention}piedra{} jugadas dan",
                    "{C:mult}+#1#{} multi al anotar",
                },
            },
            j_tboj_the_soul = {
                name = "El alma",
                text = {
                    "{C:blue}+#1#{} manos",
                },
            },
            j_tboj_tiny_planet = {
                name = "Planeta diminuto",
                text = {
                    "Este comodín da tantas {C:chips}fichas{} y {C:mult}multi",
                    "como la {C:attention}mano de póker{}",
                    "más débil,",
                    "según {C:chips}fichas{} x {C:mult}multi",
                    "{C:inactive}(Actual: {C:attention}#3#{C:inactive} con",
                    "{C:chips}#1#{C:inactive} fichas y {C:mult}#2#{C:inactive} multi)",
                },
            },
            j_tboj_transcendence = {
                name = "Trascendencia",
                text = {
                    "Destruye las {C:attention}#1#{} últimas",
                    "cartas robadas al final de la ronda",
                },
            },
            j_tboj_transformation_bookworm = {
                name = "Ratón de biblioteca",
                text = {
                    [1] = {
                        "Se obtiene al conseguir {C:attention}3{} objetos",
                        "de {C:attention}libro{} distintos en una partida",
                    },
                    [2] = {
                        "{C:green}#1# en #2#{} probabilidades de",
                        "{C:attention}reactivar{} cada carta jugada",
                    },
                },
            },
            j_tboj_transformation_guppy = {
                name = "Guppy",
                text = {
                    [1] = {
                        "Se obtiene al conseguir {C:attention}3{} objetos",
                        "de {C:attention}Guppy{} distintos en una partida",
                    },
                    [2] = {
                        "Crea una {C:attention}mosca bonita",
                        "por cada carta {C:attention}robada{}",
                    },
                },
            },
            j_tboj_transformation_leviathan = {
                name = "Leviatán",
                text = {
                    [1] = {
                        "Se obtiene al conseguir {C:attention}3{} objetos",
                        "de {C:attention}demonio{} distintos en una partida",
                    },
                    [2] = {
                        "Crea {C:attention}#1# {C:attention}corazones negros",
                        "{C:dark_edition}negativos{} al obtenerlo",
                        "y crea un {C:attention}corazón negro{}",
                        "cada {C:attention}#2# {C:inactive}[#3#]{} cartas robadas",
                    },
                },
            },
            j_tboj_transformation_seraphim = {
                name = "Serafín",
                text = {
                    [1] = {
                        "Se obtiene al conseguir {C:attention}3{} objetos",
                        "de {C:attention}ángel{} distintos en una partida",
                    },
                    [2] = {
                        "Crea {C:attention}#1# {C:attention}corazones de alma",
                        "{C:dark_edition}negativos{} al obtenerlo",
                        "y crea un {C:attention}corazón de alma{}",
                        "cada {C:attention}#2# {C:inactive}[#3#]{} cartas robadas",
                    },
                },
            },
            j_tboj_trisagion = {
                name = "Trisagio",
                text = {
                    "Cada {C:attention}3{} jugado da {C:mult}+#1#{} multi,",
                    "{C:chips}+#2#{} fichas o {C:money}$#3#{} al anotar.",
                    "Si la mano jugada es exactamente",
                    "{C:attention}tres 3{}, cada uno da",
                    "{C:attention}los tres efectos{} al anotar en su lugar",
                },
            },
            j_tboj_uranus = {
                name = "Urano",
                text = {
                    [1] = {
                        "Si la mano jugada es una {C:attention}doble pareja{},",
                        "destruye todas las cartas de la {C:attention}mano de póker",
                        "tras puntuar",
                    },
                    [2] = {
                        "Las cartas destruidas que no son de {C:attention}vidrio",
                        "se convierten en {C:attention}cartas de vidrio{} en su lugar",
                    },
                },
            },
            j_tboj_venus = {
                name = "Venus",
                text = {
                    "Si la mano jugada es un",
                    "{C:attention}trío{}, las {C:spades}picas{}",
                    "jugadas dan {C:chips}+#1#{} fichas,",
                    "los {C:hearts}corazones{} multi {C:white,X:mult}X#2#{},",
                    "los {C:clubs}tréboles{} {C:mult}+#3#{} multi y",
                    "los {C:diamonds}diamantes{} {C:money}$#4#{}",
                    "al anotar",
                },
            },
            j_tboj_whore_of_babylon = {
                name = "Ramera de Babilonia",
                text = {
                    "{C:red}+#1#{} multi en la {C:attention}última",
                    "{C:attention}mano{} de la ronda",
                },
            },
            j_tboj_x_ray_vision = {
                name = "Visión de rayos X",
                text = {
                    "Todas las cartas",
                    "se roban {C:attention}bocarriba",
                },
            },
            j_tboj_zodiac = {
                name = "Zodiaco",
                text = {
                    "Crea una carta de {C:planet}planeta{}",
                    "al seleccionar la {C:attention}ciega",
                    "{C:inactive}(Debe haber espacio)",
                },
            },
        },
        Other = {
            p_tboj_angel_pack_1 = {
                name = "Paquete de ángel",
                text = {
                    "Elige {C:attention}#1#{} entre",
                    "{C:attention}#2# comodines de ángel{} y",
                    "{C:attention}#3# activo de ángel",
                },
            },
            p_tboj_devil_pack_1 = {
                name = "Paquete de demonio",
                text = {
                    "Elige {C:attention}#1#{} entre",
                    "{C:attention}#2# comodines de demonio{} y",
                    "{C:attention}#3# activo de demonio",
                },
            },
            tboj_corpse_stake_sticker = {
                name = "Pegatina de cadáver",
                text = {
                    "Usaste este {C:attention}comodín{}",
                    "para ganar en el pozo",
                    "{C:attention}Cadáver",
                },
            },
            tboj_cursed = {
                name = "Maldito",
                text = {
                    "No se puede vender",
                    "ni destruir;",
                    "se {C:red}autodestruye",
                    "tras {C:attention}#1#{} ronda#2#",
                    "{C:inactive}(Quedan {C:attention}#3#{C:inactive})",
                },
            },
            tboj_element = {
                name = "#1#",
                text = {
                    "{element:1}",
                },
            },
            tboj_home_stake_sticker = {
                name = "Pegatina de hogar",
                text = {
                    "Usaste este {C:attention}comodín{}",
                    "para ganar en el pozo",
                    "{C:attention}Hogar",
                },
            },
            tboj_reroll = {
                name = "Cambio",
                text = {
                    "Se {C:attention}transforma{} en otra",
                    "carta del mismo {C:attention}tipo",
                    "{C:inactive,s:0.8}(Un comodín en otro comodín)",
                },
            },
            tboj_shift = {
                name = "Desplazamiento",
                text = {
                    "{s:0.8}Juegas una carta alta con {C:attention,s:0.8}8{s:0.8} y {C:attention,s:0.8}2{s:0.8}.",
                    "{s:0.8}La {C:attention,s:0.8}primera{s:0.8} carta, el {C:attention,s:0.8}8{s:0.8}, anota.",
                    "{s:0.8}Todas las cartas se {C:attention,s:0.8}mueven{s:0.8} y ahora tienes {C:attention,s:0.8}2{s:0.8} y {C:attention,s:0.8}8{s:0.8}.",
                    "{s:0.8}Luego anota la {C:attention,s:0.8}segunda{s:0.8} carta, otra vez el {C:attention,s:0.8}8{s:0.8}.",
                },
            },
            tboj_temporary_tattoo_tag_pool = {
                name = "Etiquetas posibles",
                text = {
                    "{C:attention}#1#",
                    "{C:attention}#2#",
                    "{C:attention}#3#",
                    "{C:attention}#4#",
                },
            },
            tboj_void_stake_sticker = {
                name = "Pegatina de vacío",
                text = {
                    "Usaste este {C:attention}comodín{}",
                    "para ganar en el pozo",
                    "{C:attention}Vacío",
                },
            },
            undiscovered_tboj_active = {
                name = "Sin descubrir",
                text = {
                    "Compra o usa",
                    "esta carta en una",
                    "partida sin código",
                    "para saber qué hace",
                },
            },
            undiscovered_tboj_loot = {
                name = "Sin descubrir",
                text = {
                    "Compra o usa",
                    "esta carta en una",
                    "partida sin código",
                    "para saber qué hace",
                },
            },
            undiscovered_tboj_trinket = {
                name = "Sin descubrir",
                text = {
                    "Compra o usa",
                    "esta carta en una",
                    "partida sin código",
                    "para saber qué hace",
                },
            },
            used_ranks = {
                name = "Categorías usadas",
                text = {
                    "#1#",
                    "#2#",
                    "#3#",
                },
            },
        },
        Spectral = {
            c_tboj_smelter = {
                name = "Fundidor",
                text = {
                    "Añade {C:dark_edition}negativo{} a",
                    "una {C:attention}baratija{} seleccionada",
                },
            },
            c_tboj_spindown_dice = {
                name = "Dado Spindown",
                text = {
                    "{C:attention}Cambia{} el {C:attention}comodín{} de más a la izquierda",
                    "o el seleccionado por el anterior",
                    "en el orden de la {C:attention}colección",
                    "{C:inactive,s:0.8}Destruye al {C:attention,s:0.8}Comodín {C:inactive,s:0.8}y a {C:attention,s:0.8}La cebolla triste",
                    "{C:inactive,s:0.8}No puede cambiar una {C:attention,s:0.8}transformación",
                    "{C:inactive,s:0.8}ni convertir en una {C:attention,s:0.8}transformación",
                },
            },
        },
        Stake = {
            stake_tboj_corpse_stake = {
                name = "Pozo Cadáver",
                text = {
                    "Los {C:attention}pecados capitales{} aparecen más a menudo",
                    "Pueden aparecer {C:attention}súper pecados capitales",
                    "{s:0.8}Aplica todos los pozos anteriores",
                },
            },
            stake_tboj_home_stake = {
                name = "Pozo Hogar",
                text = {
                    "{X:gray,C:attention}+1{} apuesta inicial para ganar",
                    "{s:0.8}Aplica todos los pozos anteriores",
                },
            },
            stake_tboj_void_stake = {
                name = "Pozo Vacío",
                text = {
                    "{X:gray,C:attention}+1{} apuesta inicial para ganar",
                    "{s:0.8}Aplica todos los pozos anteriores",
                },
            },
        },
        Tag = {
            tag_tboj_blessed = {
                name = "Etiqueta bendita",
                text = {
                    "Da un {C:attention}paquete de ángel",
                    "o de {C:attention}demonio{} gratis",
                },
            },
        },
        tboj_Active = {
            active_tboj_book_of_revelations = {
                name = "Libro de las Revelaciones",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}carga",
                        "Debe estar cargado del todo para usarse",
                        "Se recarga al final de la ronda",
                    },
                    [2] = {
                        "Crea un {C:attention}corazón de alma",
                        "{C:inactive}(Debe haber espacio)",
                    },
                },
            },
            active_tboj_box_of_spiders = {
                name = "Caja de arañas",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}cargas",
                        "Debe estar cargado del todo para usarse",
                        "Se recarga al final de la ronda",
                    },
                    [2] = {
                        "Crea de {C:attention}#3#{} a {C:attention}#4# arañas azules",
                    },
                },
            },
            active_tboj_d1 = {
                name = "D1",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}carga",
                        "Debe estar cargado del todo para usarse",
                        "Se recarga al final de la ronda",
                    },
                    [2] = {
                        "Crea un {C:attention}consumible{} del",
                        "mismo {C:attention}tipo{} que uno que tengas",
                        "{C:inactive}(Debe haber espacio)",
                    },
                },
            },
            active_tboj_d10 = {
                name = "D10",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}cargas",
                        "Debe estar cargado del todo para usarse",
                        "Se recarga al final de la ronda",
                    },
                    [2] = {
                        "{C:attention}Reduce{} en {C:attention}#3#{} la categoría de",
                        "todas las cartas de la mano y",
                        "aleatoriza su {C:attention}palo",
                    },
                },
            },
            active_tboj_d12 = {
                name = "D12",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}carga",
                        "Debe estar cargado del todo para usarse",
                        "Se recarga al final de la ronda",
                    },
                    [2] = {
                        "{C:attention}Cambia{} al azar las {C:attention}mejoras",
                        "de las cartas de la mano",
                    },
                },
            },
            active_tboj_d20 = {
                name = "D20",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}cargas",
                        "Debe estar cargado del todo para usarse",
                        "Se recarga al final de la ronda",
                    },
                    [2] = {
                        "{C:attention}Cambia{} todos los {C:attention}consumibles{},",
                        "{C:attention}baratijas{} y {C:attention}paquetes potenciadores{} de",
                        "la {C:attention}tienda{} o del paquete actual",
                    },
                },
            },
            active_tboj_d8 = {
                name = "D8",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}cargas",
                        "Debe estar cargado del todo para usarse",
                        "Se recarga al final de la ronda",
                    },
                    [2] = {
                        "Gana al azar entre",
                        "{C:red}#3#{} y {C:blue}#4# manos{},",
                        "{C:red}descartes{} y {C:attention}tamaño de mano",
                        "{s:0.8}No puede bajar de {C:attention,s:0.8}1",
                    },
                },
            },
            active_tboj_dark_arts = {
                name = "Artes oscuras",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}cargas",
                        "Debe estar cargado del todo para usarse",
                        "Se recarga al anotar una carta",
                    },
                    [2] = {
                        "Destruye {C:attention}#3#{} cartas",
                        "seleccionadas; las demás cartas de",
                        "la mano ganan para siempre {C:mult}+#4#{} multi",
                    },
                },
            },
            active_tboj_deck_of_cards = {
                name = "Baraja de cartas",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}carga",
                        "Debe estar cargado del todo para usarse",
                        "Se recarga al final de la ronda",
                    },
                    [2] = {
                        "Crea una carta de {C:tarot}tarot{} aleatoria",
                        "{C:inactive}(Debe haber espacio)",
                    },
                },
            },
            active_tboj_dull_razor = {
                name = "Cuchilla desafilada",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}cargas",
                        "Debe estar cargado del todo para usarse",
                        "Se recarga al final de la ronda",
                    },
                    [2] = {
                        "Finge {C:attention}destruir",
                        "las cartas de juego seleccionadas",
                    },
                },
            },
            active_tboj_eden_soul = {
                name = "Alma de Edén",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}cargas",
                        "Debe estar cargado del todo para usarse",
                        "Se recarga al final de la ronda",
                    },
                    [2] = {
                        "Crea un comodín {C:green}poco común{} y otro",
                        "{C:red}raro{} aleatorios y luego se {C:red}autodestruye",
                        "{C:inactive}(Debe haber espacio)",
                    },
                },
            },
            active_tboj_genesis = {
                name = "Génesis",
                text = {
                    [1] = {
                        "Necesitas al menos",
                        "{C:attention}1{} comodín para usarlo",
                        "No se puede usar durante una",
                        "{C:attention}ciega{} ni en un {C:attention}paquete potenciador",
                    },
                    [2] = {
                        "{C:attention}Destruye{} todos tus comodines",
                        "y crea una {C:attention}etiqueta de bufón",
                        "por cada comodín destruido;",
                        "luego se {C:red}autodestruye",
                        "{C:inactive}(Ignora {C:attention}Eterno{C:inactive})",
                    },
                },
            },
            active_tboj_guppy_paw = {
                name = "Pata de Guppy",
                text = {
                    [1] = {
                        "Necesitas al menos",
                        "{C:blue}#1#{} manos para usarlo",
                    },
                    [2] = {
                        "Convierte {C:attention}para siempre",
                        "{C:blue}#2#{} mano en",
                        "{C:red}#3#{} descartes",
                    },
                },
            },
            active_tboj_jar_of_flies = {
                name = "Tarro de moscas",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}cargas",
                        "Necesita al menos 1 carga para usarse",
                        "Se recarga al final de la ronda",
                    },
                    [2] = {
                        "Crea una {C:attention}mosca bonita",
                        "por cada carga al usarlo",
                    },
                },
            },
            active_tboj_larynx = {
                name = "Laringe",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}cargas",
                        "Necesita al menos 1 carga para usarse",
                        "Se recarga al final de la ronda",
                    },
                    [2] = {
                        "Multi {C:white,X:mult}X#3#{} por cada carga al usarlo",
                        "{C:inactive}(Actual: multi {C:white,X:mult}X#4#{C:inactive} y #5#)",
                    },
                },
            },
            active_tboj_lemegeton = {
                name = "Lemegeton",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}cargas",
                        "Debe estar cargado del todo para usarse",
                        "Se recarga al final de la ronda",
                    },
                    [2] = {
                        "Crea un comodín aleatorio {C:dark_edition}negativo{}",
                        "y {C:attention}maldito #3#{}",
                    },
                },
            },
            active_tboj_meat_cleaver = {
                name = "Cuchilla de carnicero",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}cargas",
                        "Debe estar cargado del todo para usarse",
                        "Se recarga al final de la ronda",
                    },
                    [2] = {
                        "Destruye {C:attention}#3#{} carta seleccionada",
                        "para crear {C:attention}2{} cartas idénticas",
                        "con la {C:attention}mitad{} de su categoría",
                        "{C:attention,s:0.8}Reyes{s:0.8}, {C:attention,s:0.8}reinas{s:0.8} y {C:attention,s:0.8}J{s:0.8} cuentan como {C:attention,s:0.8}10",
                        "{C:attention,s:0.8}Los ases{s:0.8} cuentan como {C:attention,s:0.8}11",
                    },
                },
            },
            active_tboj_mr_boom = {
                name = "Sr. Bum",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}carga",
                        "Debe estar cargado del todo para usarse",
                        "Se recarga al final de la ronda",
                    },
                    [2] = {
                        "Multi {C:white,X:mult}X#3#{} en la próxima mano",
                        "{C:inactive}(#4#)",
                    },
                },
            },
            active_tboj_my_little_unicorn = {
                name = "Mi pequeño unicornio",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}cargas",
                        "Debe estar cargado del todo para usarse",
                        "Se recarga al final de la ronda",
                    },
                    [2] = {
                        "Añade {C:dark_edition}polícromo{} a",
                        "una carta seleccionada",
                    },
                },
            },
            active_tboj_the_bible = {
                name = "La Biblia",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}cargas",
                        "Debe estar cargado del todo para usarse",
                        "Se recarga al final de la ronda",
                    },
                    [2] = {
                        "{C:attention}+#3#{} de tamaño de mano esta ronda",
                    },
                },
            },
            active_tboj_the_book_of_belial = {
                name = "El libro de Belial",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}carga",
                        "Debe estar cargado del todo para usarse",
                        "Se recarga al final de la ronda",
                    },
                    [2] = {
                        "Añade para siempre {C:mult}+#3#{} multi",
                        "a {C:attention}#4#{} carta seleccionada",
                    },
                },
            },
            active_tboj_the_book_of_sin = {
                name = "El libro del pecado",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}carga",
                        "Debe estar cargado del todo para usarse",
                        "Se recarga al final de la ronda",
                    },
                    [2] = {
                        "Crea una carta de {C:tboj_loot}botín{} aleatoria",
                        "{C:inactive}(Debe haber espacio)",
                    },
                },
            },
            active_tboj_the_d6 = {
                name = "El D6",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}carga",
                        "Debe estar cargado del todo para usarse",
                        "Se recarga al final de la ronda",
                    },
                    [2] = {
                        "{C:attention}Cambia{} todos los {C:attention}comodines",
                        "y {C:attention}activos{} de la {C:attention}tienda",
                        "o del {C:attention}paquete potenciador{} actual",
                        "por otros de la misma {C:attention}rareza",
                    },
                },
            },
            active_tboj_the_poop = {
                name = "La caca",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}carga",
                        "Debe estar cargado del todo para usarse",
                        "Se recarga al final de la ronda",
                    },
                    [2] = {
                        "Mejora {C:attention}#3#{} carta",
                        "seleccionada a {C:attention}carta de caca",
                    },
                },
            },
            active_tboj_void = {
                name = "Vacío",
                text = {
                    [1] = {
                        "#1#/#2# {C:attention}cargas",
                        "Debe estar cargado del todo para usarse",
                        "Se recarga al final de la ronda",
                    },
                    [2] = {
                        "{C:attention}Destruye{} todas las cartas de la {C:attention}tienda{} y",
                        "mejora una {C:attention}mano de póker{} aleatoria",
                        "por cada carta destruida así.",
                        "Los comodines destruidos",
                        "{C:attention}no pueden volver a aparecer",
                    },
                },
            },
        },
        tboj_Loot = {
            c_tboj_algiz = {
                name = "Algiz",
                text = {
                    "Úsala durante una {C:attention}ciega{} para",
                    "ganar {C:blue}+#1#{} mano esta ronda",
                },
            },
            c_tboj_black_heart = {
                name = "Corazón negro",
                text = {
                    "Añade para siempre {C:mult}+#1#{} multi",
                    "a {C:attention}#2#{} carta seleccionada",
                },
            },
            c_tboj_bomb = {
                name = "Bomba",
                text = {
                    "Multi {C:white,X:red}X#1#{} en la próxima mano",
                    "y se {C:red}autodestruye{} al usarla",
                    "{C:inactive}(¡#2#!)",
                },
            },
            c_tboj_bone_heart = {
                name = "Corazón de hueso",
                text = {
                    "Mejora {C:attention}#1#{} carta",
                    "seleccionada a",
                    "{C:attention}carta de hueso",
                },
            },
            c_tboj_dagaz = {
                name = "Dagaz",
                text = {
                    "Quita {C:attention}Eterno{}, {C:attention}Perecedero",
                    "y {C:attention}De alquiler{} del",
                    "comodín de más a la izquierda o del seleccionado",
                    "y le {C:attention}quita el debilitamiento",
                },
            },
            c_tboj_jera = {
                name = "Jera",
                text = {
                    "Crea la última carta de {C:tboj_loot}botín",
                    "usada en esta partida",
                    "{C:tboj_loot,s:0.8}Salvo Jera",
                },
            },
            c_tboj_key = {
                name = "Llave",
                text = {
                    "Úsala durante una {C:attention}ciega{} para",
                    "obtener su {C:attention}etiqueta de omisión",
                },
            },
            c_tboj_lil_battery = {
                name = "Pequeña batería",
                text = {
                    "Añade hasta {C:attention}#1# cargas",
                    "al {C:attention}activo{} de más a la",
                    "izquierda o al seleccionado",
                },
            },
            c_tboj_perthro = {
                name = "Perthro",
                text = {
                    "{C:attention}Cambia{} todos los {C:attention}comodines",
                    "y {C:attention}activos{} de la tienda",
                    "por otros de la misma {C:attention}rareza",
                },
            },
            c_tboj_pill = {
                name = "Píldora",
                text = {
                    "Sube {C:attention}#3#{} el nivel de una",
                    "{C:attention}mano de póker{} aleatoria",
                    "{C:green}#1# en #2#{} probabilidades de",
                    "bajarlo en su lugar",
                },
            },
            c_tboj_poop_nugget = {
                name = "Pepita de caca",
                text = {
                    "Mejora {C:attention}#1#",
                    "cartas seleccionadas a",
                    "{C:attention}cartas de caca",
                },
            },
            c_tboj_soul_heart = {
                name = "Corazón de alma",
                text = {
                    "Añade para siempre {C:chips}+#1#{} fichas",
                    "a {C:attention}#2#{} carta seleccionada",
                },
            },
            c_tboj_soul_of_apollyon = {
                name = "Alma de Apolión",
                text = {
                    "Crea {C:attention}#1# langostas{} al azar",
                },
            },
            c_tboj_soul_of_cain = {
                name = "Alma de Caín",
                text = {
                    "Crea las {C:attention}etiquetas de omisión",
                    "de esta apuesta inicial",
                },
            },
            c_tboj_soul_of_isaac = {
                name = "Alma de Isaac",
                text = {
                    "{C:attention}Cambia{} todos los {C:attention}comodines{} de la tienda;",
                    "los {C:blue}comunes{} y {C:green}poco comunes",
                    "suben de {C:attention}rareza",
                },
            },
            c_tboj_soul_of_jacob_esau = {
                name = "Alma de Jacob y Esaú",
                text = {
                    "Crea una copia {C:attention}maldita #1#",
                    "de un {C:attention}comodín{} aleatorio",
                },
            },
            c_tboj_soul_of_judas = {
                name = "Alma de Judas",
                text = {
                    "Destruye {C:attention}#1#{} cartas",
                    "seleccionadas; las demás cartas de",
                    "la mano ganan para siempre {C:mult}+#2#{} multi",
                },
            },
            c_tboj_soul_of_lilith = {
                name = "Alma de Lilith",
                text = {
                    "Crea un {C:attention}comodín familiar",
                    "aleatorio",
                    "{C:inactive}(Debe haber espacio)",
                },
            },
            c_tboj_soul_of_the_keeper = {
                name = "Alma del Guardián",
                text = {
                    "Gana entre {C:money}$#1#{} y {C:money}$#2#{}",
                },
            },
        },
        tboj_Trinket = {
            trinket_tboj_brain_worm = {
                name = "Gusano cerebral",
                text = {
                    "Reactiva las cartas {C:attention}que no anotan",
                    "de la mano jugada",
                    "{C:attention}#1#{} vez adicional",
                },
            },
            trinket_tboj_broken_padlock = {
                name = "Candado roto",
                text = {
                    "Usar una {C:attention}bomba{} en la tienda",
                    "la {C:attention}destruye{} y deja",
                    "un paquete potenciador aleatorio {C:attention}gratis",
                },
            },
            trinket_tboj_child_leash = {
                name = "Correa infantil",
                text = {
                    "Cada comodín {C:attention}familiar",
                    "da multi {C:white,X:mult}X#1#{}",
                },
            },
            trinket_tboj_counterfeit_penny = {
                name = "Moneda falsa",
                text = {
                    "{C:green}#1# en #2#{} probabilidades de ganar {C:money}$#3#{}",
                    "cada vez que ganas {C:money}dinero",
                    "{C:inactive,s:0.8}(No se activa con la {C:attention,s:0.8}moneda falsa{C:inactive,s:0.8})",
                },
            },
            trinket_tboj_crow_heart = {
                name = "Corazón de cuervo",
                text = {
                    "Al {C:attention}jugar una mano{},",
                    "si te queda algún descarte,",
                    "ganas {C:blue}+#1#{} mano y {C:red}-#2#{} descarte",
                },
            },
            trinket_tboj_curved_horn = {
                name = "Cuerno curvado",
                text = {
                    "Multi {C:white,X:mult}X#1#{}",
                },
            },
            trinket_tboj_dice_bag = {
                name = "Bolsa de dados",
                text = {
                    "{C:green}#1# en #2#{} probabilidades de",
                    "crear un activo de dado",
                    "{C:dark_edition}negativo{} y {C:attention}maldito #3#",
                    "al final de la ronda",
                },
            },
            trinket_tboj_endless_nameless = {
                name = "Endless Nameless",
                text = {
                    "{C:green}#1# en #2#{} probabilidades de crear una",
                    "copia de un {C:attention}consumible{} usado",
                    "{C:inactive}(Debe haber espacio)",
                    "{C:inactive}(No puede copiar una copia)",
                },
            },
            trinket_tboj_flat_worm = {
                name = "Gusano plano",
                text = {
                    "Reactiva la {C:attention}tercera{} carta",
                    "jugada que anota",
                    "{C:attention}#1#{} veces adicionales",
                },
            },
            trinket_tboj_goat_hoof = {
                name = "Pezuña de cabra",
                text = {
                    "{C:attention}+#1#{} de tamaño de mano",
                },
            },
            trinket_tboj_golden_horse_shoe = {
                name = "Herradura dorada",
                text = {
                    "{C:green}#1# en #2#{} probabilidades de añadir",
                    "un {C:attention}comodín{} aleatorio a la tienda",
                    "al {C:attention}entrar{} o {C:attention}cambiar{} la tienda",
                },
            },
            trinket_tboj_hollow_heart = {
                name = "Corazón hueco",
                text = {
                    "Mejora la {C:attention}primera carta sin mejora",
                    "robada en cada ronda",
                    "a {C:attention}carta de hueso",
                },
            },
            trinket_tboj_hook_worm = {
                name = "Gusano gancho",
                text = {
                    "Reactiva la {C:attention}primera{} y la {C:attention}quinta",
                    "carta jugada que anotan",
                    "{C:attention}#1#{} vez adicional",
                },
            },
            trinket_tboj_lucky_rock = {
                name = "Piedra de la suerte",
                text = {
                    "Las {C:attention}cartas de piedra{} cuentan",
                    "como {C:attention}cartas de la suerte",
                },
            },
            trinket_tboj_lucky_toe = {
                name = "Dedo de la suerte",
                text = {
                    "Suma {C:attention}#1#{} a todas las {C:green,E:1,S:1.1}probabilidades",
                    "{C:attention}indicadas",
                    "{C:inactive}(p. ej.: {C:green}1 en 6{C:inactive} -> {C:green}#2# en 6{C:inactive})",
                },
            },
            trinket_tboj_m = {
                name = "'M",
                text = {
                    "Usar un {C:attention}activo",
                    "lo {C:attention}cambia",
                },
            },
            trinket_tboj_mother_kiss = {
                name = "Beso de mamá",
                text = {
                    "{C:blue}+#1#{} mano",
                },
            },
            trinket_tboj_myosotis = {
                name = "Nomeolvides",
                text = {
                    "Al final de la {C:attention}tienda{}, crea una copia",
                    "de un {C:attention}consumible{} aleatorio",
                    "de la tienda",
                    "{C:inactive}(Debe haber espacio)",
                },
            },
            trinket_tboj_no = {
                name = "¡NO!",
                text = {
                    "Los {C:attention}activos{} ya no",
                    "aparecen en la tienda",
                },
            },
            trinket_tboj_petrified_poop = {
                name = "Caca petrificada",
                text = {
                    "{C:white,X:green}X#1#{} a todas las {C:green,E:1,S:1.1}probabilidades",
                    "{C:attention}indicadas",
                    "en las {C:attention}cartas de caca",
                },
            },
            trinket_tboj_poker_chip = {
                name = "Ficha de póker",
                text = {
                    [1] = {
                        "{C:green}#1# en #2#{} probabilidades de",
                        "{C:red}destruir{} todas las cartas de",
                        "los {C:attention}paquetes potenciadores{} abiertos",
                    },
                    [2] = {
                        "Si no, {C:attention}duplica{} la",
                        "cantidad de cartas que contienen",
                    },
                },
            },
            trinket_tboj_pulse_worm = {
                name = "Gusano pulsante",
                text = {
                    "Reactiva {C:attention}3{} cartas",
                    "jugadas aleatorias que anotan",
                    "{C:attention}#1#{} vez adicional",
                },
            },
            trinket_tboj_purple_heart = {
                name = "Corazón púrpura",
                text = {
                    "Tamaño de ciega {C:white,X:attention}X#1#{}",
                    "Pago al final de la ronda {C:white,X:attention}X#2#{}",
                },
            },
            trinket_tboj_store_credit = {
                name = "Crédito de la tienda",
                text = {
                    "Vende esta carta para",
                    "crear una",
                    "{C:attention}etiqueta de cupón{} gratis",
                },
            },
            trinket_tboj_stud_finder = {
                name = "Detector de vigas",
                text = {
                    [1] = {
                        "{C:green}#1# en #2#{} probabilidades de añadir",
                        "un {C:attention}paquete potenciador{} aleatorio a la",
                        "tienda al {C:attention}entrar{} en ella",
                    },
                    [2] = {
                        "La probabilidad aumenta en {C:green}#3#{}",
                        "cuando se destruye una",
                        "{C:attention}carta de piedra{}; se reinicia",
                        "al {C:attention}crearse{} un paquete potenciador",
                    },
                },
            },
            trinket_tboj_swallowed_penny = {
                name = "Moneda tragada",
                text = {
                    "Gana {C:money}$#1#{} al",
                    "jugar una mano",
                },
            },
            trinket_tboj_telescope_lens = {
                name = "Lente de telescopio",
                text = {
                    "Los comodines {C:attention}espaciales{} pueden",
                    "aparecer en los {C:attention}paquetes celestiales",
                },
            },
            trinket_tboj_temporary_tattoo = {
                name = "Tatuaje temporal",
                text = {
                    "Crea una {C:attention}etiqueta{} aleatoria",
                    "relacionada con {C:attention}paquetes potenciadores",
                    "al derrotar a la {C:attention}ciega jefe",
                },
            },
            trinket_tboj_wiggle_worm = {
                name = "Gusano ondulante",
                text = {
                    "Reactiva la {C:attention}segunda{} y la {C:attention}cuarta",
                    "carta jugada que anotan",
                    "{C:attention}#1#{} vez adicional",
                },
            },
        },
        tboj_spiderfly = {
            spiderfly_tboj_blue_spider = {
                name = "Araña azul",
                text = {
                    "Multi {C:white,X:red}X#1#{} y luego",
                    "se {C:red}autodestruye",
                },
            },
            spiderfly_tboj_locust_of_death = {
                name = "Langosta de la Muerte",
                text = {
                    "Crea una carta de {C:purple}tarot{} al",
                    "{C:attention}descartar{} y luego se {C:red}autodestruye{}",
                },
            },
            spiderfly_tboj_locust_of_famine = {
                name = "Langosta del Hambre",
                text = {
                    "Gana {C:money}$#1#{} al jugar una mano;",
                    "se {C:red}autodestruye{} al final de la ronda",
                },
            },
            spiderfly_tboj_locust_of_pestilence = {
                name = "Langosta de la Peste",
                text = {
                    "Sube el nivel de la próxima",
                    "{C:attention}mano de póker{} jugada y luego se {C:red}autodestruye{}",
                },
            },
            spiderfly_tboj_locust_of_war = {
                name = "Langosta de la Guerra",
                text = {
                    "Multi {C:white,X:red}X#1#{}; se {C:red}autodestruye{}",
                    "al final de la ronda",
                },
            },
            spiderfly_tboj_pretty_fly = {
                name = "Mosca bonita",
                text = {
                    "{C:chips}+#1#{} fichas y luego",
                    "se {C:red}autodestruye",
                },
            },
        },
    },
    misc = {
        challenge_names = {
            c_tboj_aprils_fool = "El bufón de abril",
            c_tboj_daily_run = "Partida diaria",
        },
        dictionary = {
            k_laser = "Láser",
            k_poop = "Caca",
            k_tboj_Actives = "Activos",
            k_tboj_Trinkets = "Baratijas",
            k_tboj_active = "Activo",
            k_tboj_active_stickers = "Pegatinas de activos",
            k_tboj_angel_pack = "Paquete de ángel",
            k_tboj_devil_pack = "Paquete de demonio",
            k_tboj_spiderfly = "Mosca/araña",
            k_tboj_transformation = "Transformación",
            k_tboj_trinket = "Baratija",
            k_tboj_trinket_stickers = "Pegatinas de baratijas",
            tboj_acquire_to_reveal = "[Consíguelo para revelarlo]",
            tboj_active = "Activo",
            tboj_and = "y",
            tboj_angel = "Ángel",
            tboj_angry_ex = "¡Furioso!",
            tboj_become_judas = "Te has convertido en Judas",
            tboj_betrayal_ex = "¡Traición!",
            tboj_black = "Negro",
            tboj_bomb = "Bomba",
            tboj_book = "Libro",
            tboj_champion_ex = "¡Campeón!",
            tboj_charged_ex = "¡Cargado!",
            tboj_charging_dot = "Cargando...",
            tboj_cleaved_ex = "¡Partido!",
            tboj_corn = "Maíz",
            tboj_credits_artist = "Artista:\032",
            tboj_credits_designer = "Diseño:\032",
            tboj_cursed_ex = "¡Maldito!",
            tboj_dark_arts_flavor = "Uno con las sombras",
            tboj_devil = "Demonio",
            tboj_discord = "Discord",
            tboj_drain = "Drenaje",
            tboj_familiar = "Familiar",
            tboj_flaming = "En llamas",
            tboj_flies_ex = "¡Moscas!",
            tboj_fly = "Mosca",
            tboj_forget_me_not_dot = "No me olvides...",
            tboj_fused = "Con mecha",
            tboj_geye_1 = "Esto",
            tboj_geye_2 = "contiene:",
            tboj_growing_dot = "Creciendo...",
            tboj_guppy = "Guppy",
            tboj_hands_played = "Manos jugadas",
            tboj_inactive = "Inactivo",
            tboj_links = "Enlaces",
            tboj_lucky_ex = "¡Suerte!",
            tboj_no_vanilla_joker = "Desactivar comodines originales",
            tboj_none = "Ninguno",
            tboj_not_fused = "Sin mecha",
            tboj_not_supported_pack = "Este paquete no es compatible",
            tboj_oops_dot = "Ups...",
            tboj_opened_ex = "¡Abierto!",
            tboj_play_hand = "Juega una mano primero",
            tboj_plus_consumable = "+1 consumible",
            tboj_plus_dice = "+1 dado",
            tboj_plus_loot = "+1 botín",
            tboj_poop = "Caca",
            tboj_purified_ex = "¡Purificado!",
            tboj_reroll_ex = "¡Cambio!",
            tboj_saved_by = "Te salvó",
            tboj_select_booster = "Selecciona primero un paquete potenciador",
            tboj_shift_ex = "¡Desplazamiento!",
            tboj_spider = "Araña",
            tboj_spiders_ex = "¡Arañas!",
            tboj_stinky = "Apestoso",
            tboj_stone = "Piedra",
            tboj_tamed_ex = "¡Domado!",
            tboj_unique = "Único",
            tboj_unknown = "Desconocido",
            tboj_voided = "Anulado",
            tboj_white = "Blanco",
            tboj_wiki = "Wiki",
        },
        labels = {
            k_tboj_transformation = "Transformación",
            tboj_cursed = "Maldito",
        },
        v_dictionary = {
            tboj_discards = "+#1# descartes",
            tboj_discards_minus = "-#1# descartes",
            tboj_hands_minus = "-#1# manos",
            tboj_minus_luck_var = "-#1# de suerte",
            tboj_minus_money_var = "-$#1#",
            tboj_pack = "+#1# paquete#2# potenciador",
            tboj_percent = "#1# %",
            tboj_playing_card = "#1# de #2#",
        },
        v_text = {
            ch_c_tboj_aprils_fool = {
                "{C:inactive}Ninguno :)",
            },
            ch_c_tboj_daily_run = {
                "Juega una semilla aleatoria cada día",
            },
            ch_c_tboj_daily_run2 = {
                "Se reinicia a la {C:attention}01:00",
            },
        },
    },
}
