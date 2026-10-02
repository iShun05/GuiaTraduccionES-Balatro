-- Generado automáticamente desde traducciones/BalatroMultiplayer.tsv
-- No editar a mano: edita el TSV y ejecuta herramientas/generar.py
return {
    descriptions = {
        Back = {
            b_mp_cocktail = {
                name = "Baraja cóctel",
                text = {
                    "Copia todos los efectos",
                    "de otras {C:attention}3{} barajas",
                    "al azar",
                },
            },
            b_mp_gradient = {
                name = "Baraja degradada",
                text = {
                    "Las cartas también cuentan como",
                    "una categoría {C:attention}superior{} o {C:attention}inferior",
                    "para todos los efectos de {C:attention}comodines",
                },
            },
            b_mp_heidelberg = {
                name = "Baraja Heidelberg",
                text = {
                    "Crea una copia {C:dark_edition}negativa{} de",
                    "{C:attention}1{} carta {C:attention}consumible{} aleatoria",
                    "que tengas",
                    "al final de la {C:attention}tienda",
                },
            },
            b_mp_indigo = {
                name = "Baraja índigo",
                text = {
                    "Elige {C:attention}+1{} carta adicional",
                    "en todos los paquetes potenciadores",
                    "Los paquetes potenciadores {C:attention}no se pueden omitir",
                },
            },
            b_mp_oracle = {
                name = "Baraja oráculo",
                text = {
                    "Empieza la partida con {C:spectral,T:c_medium}Médium",
                    "y {C:attention,T:v_clearance_sale}Rebajas",
                    "El dinero está limitado a",
                    "{C:money}$50{} + {C:attention}el límite de interés actual{}",
                },
            },
            b_mp_orange = {
                name = "Baraja naranja",
                text = {
                    "Empieza la partida con un",
                    "{C:attention,T:p_mp_standard_giga}paquete estándar giga{} y",
                    "{C:attention}2{} copias de {C:tarot,T:c_hanged_man}El colgado",
                },
            },
            b_mp_violet = {
                name = "Baraja violeta",
                text = {
                    "{C:attention}+1{} vale en la tienda",
                    "Los vales tienen un {C:attention}50 %{} de descuento",
                    "en la apuesta inicial {C:attention}1{} y un {C:attention}30 %{}",
                    "en la apuesta inicial {C:attention}2",
                },
            },
            b_mp_white = {
                name = "Baraja blanca",
                text = {
                    "Muestra la baraja y los comodines",
                    "actuales de tu {X:purple,C:white}Némesis{}",
                    "{C:inactive}(Se actualiza en la ciega PvP){}",
                },
            },
        },
        Joker = {
            j_mp_8ball_release = {
                name = "Bola 8",
                text = {
                    "Crea una carta de {C:planet}planeta",
                    "si la mano jugada contiene",
                    "{C:attention}#1#{} o más {C:attention}8",
                    "{C:inactive}(Debe haber espacio)",
                },
            },
            j_mp_alloy_sandbox = {
                name = "Aleación",
                text = {
                    "Las {C:attention}cartas de oro{} también",
                    "cuentan como {C:attention}cartas de acero{}",
                    "Las {C:attention}cartas de acero{} también",
                    "cuentan como {C:attention}cartas de oro{}",
                },
            },
            j_mp_ambrosia_sandbox = {
                name = "Ambrosía",
                text = {
                    "{C:attention}Llena{} los espacios de consumibles con",
                    "cartas {C:spectral}espectrales{} cada vez que",
                    "se {C:attention}omite{} una {C:attention}ciega{}; se destruye",
                    "al {C:attention}vender{} cualquier carta {C:spectral}espectral",
                    "{C:inactive}(Debe haber espacio)",
                },
            },
            j_mp_baron = {
                name = "Barón",
                text = {
                    "Cada {C:attention}rey{} que tengas en la mano",
                    "da multi {X:mult,C:white} X#1# {}",
                },
            },
            j_mp_baseball_sandbox = {
                name = "Carta de béisbol",
                text = {
                    "Cada comodín {C:green}poco común",
                    "da multi",
                    "{X:mult,C:white}X#1#{}",
                },
            },
            j_mp_bloodstone = {
                name = "Heliotropo",
                text = {
                    "{C:green}#1# en #2#{} probabilidades de que",
                    "las cartas jugadas de",
                    "{C:hearts}corazones{} den",
                    "multi {X:mult,C:white} X#3# {} cuando anotan",
                },
            },
            j_mp_bloodstone_sandbox = {
                name = "Heliotropo",
                text = {
                    "{V:1}SÍNDROME DE REGRESIÓN DE PARCHES",
                    "volviendo al TRAUMA DEL DÍA DE LANZAMIENTO",
                    "¡¡¡¡para PICOS DE PODER NOSTÁLGICOS de {X:mult,C:white}X#3#{}!!!!",
                    "{C:inactive}({C:green}#1# en #2#{} {C:inactive}probabilidades)",
                },
            },
            j_mp_bobby_sandbox = {
                name = "Bobby",
                text = {
                    "Al seleccionar la {C:attention}ciega{},",
                    "pierdes {C:attention}#1#{} manos y ganas",
                    "{C:red}+#1#{} descartes por cada mano perdida",
                },
            },
            j_mp_candynecklace_sandbox = {
                name = "Collar de caramelos",
                text = {
                    "Al final de la {C:attention}tienda{}, crea",
                    "una {C:attention}etiqueta de paquete potenciador",
                    "aleatoria {C:inactive}(Quedan #1# usos){C:inactive}",
                },
            },
            j_mp_castle_sandbox = {
                name = "Castillo",
                text = {
                    "Este comodín gana {C:chips}+#3#{} fichas",
                    "por cada {V:1}#1#{} descartado",
                    "El palo se fija al comprarlo",
                    "{C:inactive}(Actual: {C:chips}+#2#{C:inactive} fichas)",
                },
            },
            j_mp_chainlightning_sandbox = {
                name = "Rayo en cadena",
                text = {
                    "Las {C:attention}cartas multi{} jugadas dan",
                    "multi {X:mult,C:white}X#1#{} cuando anotan",
                    "y luego esto aumenta en {X:mult,C:white}X#2#",
                    "{C:inactive}(Se reinicia en cada mano)",
                },
            },
            j_mp_cloud_9_sandbox = {
                name = "La 9º puerta",
                text = {
                    "GRANJERO DE MONOCULTIVO NUMÉRICO",
                    "¡¡¡¡que convierte tu BARAJA DIVERSA en una",
                    "RENTABLE PLANTACIÓN DE NUEVES!!!!",
                    "{C:inactive}({C:green}#1# en #2#{} {C:inactive}probabilidades; actual: {C:money}$#3#{}{C:inactive})",
                },
            },
            j_mp_clowncar_sandbox = {
                name = "Coche de payasos",
                text = {
                    "{C:mult}+#1#{} multi y {C:money}-$#2#",
                    "{C:attention}antes{} de que anoten las cartas",
                },
            },
            j_mp_clowncollege_sandbox = {
                name = "Escuela de payasos",
                text = {
                    "{C:attention}Llena{} los espacios de consumibles",
                    "con {C:tarot}El loco{} tras derrotar",
                    "a la {C:attention}ciega jefe",
                    "{C:inactive}(Debe haber espacio)",
                },
            },
            j_mp_constellation_sandbox = {
                name = "Constelación",
                text = {
                    "trastorno de ansiedad por mantenimiento planetario",
                    "HAY QUE ALIMENTAR AL TAMAGOTCHI",
                    "¡¡¡¡o SE MARCHITA!!!!",
                    "{C:inactive}(Actual: multi {X:mult,C:white} X#1# {C:inactive})",
                },
            },
            j_mp_couponsheet_sandbox = {
                name = "Hoja de cupones",
                text = {
                    "Crea una {C:attention}etiqueta de cupón",
                    "y una {C:attention}etiqueta de vale",
                    "tras derrotar a la {C:attention}ciega jefe",
                },
            },
            j_mp_doublerainbow_sandbox = {
                name = "Doble arcoíris",
                text = {
                    "{C:attention}Reactiva{} todas las {C:attention}cartas de la suerte{}",
                },
            },
            j_mp_error_sandbox = {
                text = {
                    "{X:purple,C:white,s:0.85}algo{} {X:purple,C:white,s:0.85}va{} {X:purple,C:white,s:0.85}mal",
                },
            },
            j_mp_espresso_sandbox = {
                name = "Expreso",
                text = {
                    "Gana {C:money}$#1#{} y destruye esta",
                    "carta al omitir una {C:attention}ciega",
                    "Disminuye en {C:money}$#2#{} al final de la ronda",
                },
            },
            j_mp_faceless_sandbox = {
                name = "Comodín sin cara",
                text = {
                    "SUMILLER DE ÉLITE DE CARTAS DE FIGURA",
                    "que selecciona CATAS ARTESANALES",
                    "DE TRES VARIEDADES",
                    "¡¡¡¡para EXPERIENCIAS DE DESCARTE PREMIUM!!!!",
                },
            },
            j_mp_farmer_sandbox = {
                name = "Granjero",
                text = {
                    "Las cartas de {V:1}#2#{} que tengas",
                    "en la mano dan {C:money}$#1#",
                    "al final de la ronda",
                    "{s:0.8}el palo cambia al final de la ronda",
                },
            },
            j_mp_flower_pot_release = {
                name = "Florero",
                text = {
                    "Multi {X:mult,C:white} X#1# {} si la mano",
                    "jugada tiene, entre las que anotan, una carta",
                    "de {C:diamonds}diamantes{}, una de {C:clubs}tréboles{},",
                    "una de {C:hearts}corazones{} y una de {C:spades}picas{}",
                },
            },
            j_mp_forklift_sandbox = {
                name = "Carretilla elevadora",
                text = {
                    "{C:attention}+#1#{} espacios de consumibles",
                },
            },
            j_mp_gofish_sandbox = {
                name = "A pescar",
                text = {
                    "La {C:attention}primera vez{} que una",
                    "{C:attention}mano jugada{} contiene",
                    "{C:attention}#1#{} que anotan, se destruyen",
                    "{s:0.8}la categoría cambia al final de la ronda",
                },
            },
            j_mp_golden_ticket_sandbox = {
                name = "Billete dorado",
                text = {
                    "{C:green}#2# en #3#{} probabilidades de que",
                    "las cartas de {C:attention}oro{} ganen",
                    "{C:money}$#1#{} al jugarse",
                },
            },
            j_mp_hanging_chad_release = {
                name = "Papel perforado",
                text = {
                    "Reactiva la {C:attention}primera{} carta",
                    "jugada que anota",
                },
            },
            j_mp_hit_the_road_sandbox = {
                name = "Al camino",
                text = {
                    "Este comodín gana multi {X:mult,C:white}X0.75{}",
                    "por cada {C:attention}J{} descartada",
                    "Las J descartadas se {C:attention}destruyen{}",
                    "{C:inactive}(Actual: multi {X:mult,C:white} X#2# {C:inactive})",
                },
            },
            j_mp_hoarder_sandbox = {
                name = "Acumulador",
                text = {
                    "Este comodín gana {C:money}$#1#{} de valor de venta",
                    "cada vez que ganas {C:money}dinero",
                },
            },
            j_mp_idol = {
                name = "El ídolo",
                text = {
                    "Cada {C:attention}#2#",
                    "de {V:1}#3#{} jugado da",
                    "multi {X:mult,C:white} X#1# {} cuando anota",
                    "{s:0.8}La carta cambia cada ronda",
                },
            },
            j_mp_idol_rare = {
                name = "El ídolo",
                text = {
                    "Cada {C:attention}#2#",
                    "de {V:1}#3#{} jugado da",
                    "multi {X:mult,C:white} X#1# {} cuando anota",
                    "{s:0.8}La carta cambia cada ronda",
                },
            },
            j_mp_idol_sandbox_collector = {
                name = "Ídolo del coleccionista",
                text = {
                    "La carta más común da",
                    "multi {X:mult,C:white}X#3#{} cuando anota",
                    "({X:mult,C:white}+X#4#{} por copia en la baraja)",
                    "{C:inactive}(Actual: {C:attention}#1#{} de {V:1}#2#{})",
                },
            },
            j_mp_idol_sandbox_zealot = {
                name = "Ídolo del fanático",
                text = {
                    "Cada {C:attention}#1#{} jugado",
                    "da multi {X:mult,C:white}X#2#{}",
                    "cuando anota",
                    "{s:0.8}La carta cambia cada ronda",
                },
            },
            j_mp_jokalisa_sandbox = {
                name = "La Jokonda",
                text = {
                    "Gana multi {X:mult,C:white}X#2#{} por",
                    "cada {C:attention}mejora distinta",
                    "en la mano que anota",
                    "{C:inactive}(Actual: {X:mult,C:white}X#1#{C:inactive})",
                },
            },
            j_mp_jokeroftheyear_sandbox = {
                name = "Comodín del año",
                text = {
                    "Si la mano jugada tiene",
                    "{C:attention}5{} cartas que anotan,",
                    "{C:attention}reactiva{} las cartas jugadas",
                },
            },
            j_mp_juggler_sandbox = {
                name = "Malabarista",
                text = {
                    "PERFECCIONISTA DEL TAMAÑO DE MANO",
                    "que debe mantener TODAS LAS CARTAS",
                    "¡¡¡¡en el aire EN TODO MOMENTO!!!!",
                    "{C:inactive}(Actual: {C:attention}+#1#{C:inactive} de tamaño de mano)",
                },
            },
            j_mp_lets_go_gambling = {
                name = "¡A apostar!",
            },
            j_mp_loyalty_card_sandbox = {
                name = "Tarjeta de fidelización",
                text = {
                    "Multi {X:mult,C:white}X6{} cada {C:attention}#3#{}",
                    "manos jugadas de {C:attention}#1#{}",
                    "{C:inactive}(#2#/#3#)",
                },
            },
            j_mp_lucky7_sandbox = {
                name = "7 de la suerte",
                text = {
                    "Si la mano jugada contiene",
                    "un {C:attention}7{} que anota, todas las",
                    "cartas jugadas cuentan como {C:attention}cartas de la suerte",
                },
            },
            j_mp_lucky_cat_sandbox = {
                name = "Gato de la suerte",
                text = {
                    "OPERADOR DEL CIRCUITO SUERTE-A-FRAGILIDAD",
                    "los gatos de la suerte se vuelven GATOS DE VIDRIO",
                    "¡¡¡¡con PODER EXPONENCIAL!!!!",
                    "{C:inactive}(Actual: multi {X:mult,C:white} X#2# {C:inactive})",
                },
            },
            j_mp_madness_release = {
                name = "Locura",
                text = {
                    "Al seleccionar la {C:attention}ciega{},",
                    "gana multi {X:mult,C:white} X#1# {} y",
                    "{C:attention}destruye{} un comodín aleatorio",
                    "{C:inactive}(Actual: multi {X:mult,C:white} X#2# {})",
                },
            },
            j_mp_magnet_sandbox = {
                name = "Imán",
                text = {
                    "Tras {C:attention}#1#{} rondas, vende",
                    "esta carta para {C:attention}copiar{} el {C:attention}comodín",
                    "de mayor valor de venta de tu {X:purple,C:white}Némesis{}",
                    "la polaridad se invierte tras {C:attention}#3#{} rondas",
                    "¡¡¡¡Y SE CONVIERTE EN CHATARRA SIN VALOR!!!!",
                    "{C:inactive}(Actual: {C:attention}#2#{C:inactive}/#1# rondas)",
                },
            },
            j_mp_mail_sandbox = {
                name = "Reembolso por correo",
                text = {
                    "Gana {C:money}$#1#{} por cada",
                    "{C:attention}#2#{} descartado",
                    "{s:0.8}La categoría nunca cambia",
                },
            },
            j_mp_midas_mask_release = {
                name = "Máscara de Midas",
                text = {
                    "Todas las cartas de {C:attention}figura",
                    "se convierten en cartas de {C:attention}oro",
                    "al jugarse",
                },
            },
            j_mp_mime = {
                name = "Mimo",
                text = {
                    "Reactiva todas las habilidades",
                    "de las cartas {C:attention}en la mano",
                },
            },
            j_mp_misprint_sandbox = {
                name = "Error de imprenta",
                text = {
                    "{V:1}#1#{} multi",
                    "{C:attention}El valor se revela al comprarlo{}",
                    "{C:green}Los errores de impresión se acumulan{}",
                },
            },
            j_mp_montehaul_sandbox = {
                name = "Monte Haul",
                text = {
                    "Tras {C:attention}1 ronda{}, vende esta carta",
                    "para obtener {C:attention}2{} {C:attention}etiquetas de comodín{} aleatorias",
                    "{C:inactive}(Actual: {C:attention}#1#{C:inactive} rondas)",
                },
            },
            j_mp_order_sandbox = {
                name = "La orden",
                text = {
                    "Multi {X:mult,C:white}X3{} si la mano jugada contiene una {C:attention}escalera{}",
                    "Gana multi {X:mult,C:white}X#1#{} por cada {C:attention}escalera{} seguida jugada",
                    "Se reinicia al jugar cualquier otra mano",
                    "{C:inactive}(Actual: multi {X:mult,C:white}X#2#{C:inactive})",
                },
            },
            j_mp_photograph_sandbox = {
                name = "Fotografía",
                text = {
                    "FOTÓGRAFO DE UN SOLO DISPARO que consigue",
                    "¡¡¡¡UNA FOTO PERFECTA POR MANO!!!!",
                },
            },
            j_mp_pizza = {
                name = "Pizza",
            },
            j_mp_pocketaces_sandbox = {
                name = "Pareja de ases",
                text = {
                    "Gana {C:money}$#1#{} al final de la ronda",
                    "Los {C:attention}ases{} jugados aumentan el pago",
                    "en {C:money}$#2#{}; se reinicia en cada {C:attention}apuesta inicial",
                },
            },
            j_mp_pyromancer_sandbox = {
                name = "Piromante",
                text = {
                    "{C:mult}+#1#{} multi si las {C:attention}manos",
                    "restantes son menos",
                    "o iguales que los {C:attention}descartes",
                },
            },
            j_mp_ride_the_bus_sandbox = {
                name = "Al autobús",
                text = {
                    "PROGRAMA DE ABSTINENCIA DE FIGURAS",
                    "UNA SOLA FIGURA y te",
                    "¡¡¡¡ECHAN DEL AUTOBÚS!!!!",
                    "{C:inactive}(Actual: {C:mult}+#1#{C:inactive} multi)",
                },
            },
            j_mp_runner_sandbox = {
                name = "Corredor",
                text = {
                    "SUPREMACISTA DE LAS CARTAS SEGUIDAS",
                    "que cree que TODAS las demás",
                    "¡¡¡¡MANOS DE PÓKER son INFERIORES!!!!",
                    "{C:inactive}(Actual: {C:chips}+#1#{C:inactive})",
                },
            },
            j_mp_satellite_sandbox = {
                name = "Satélite",
                text = {
                    "ansiedad crónica por degradación de satélites",
                    "LA INFRAESTRUCTURA SE DESMORONA POCO A POCO",
                    "¡¡¡¡SIN MEJORAS PLANETARIAS CONSTANTES!!!!",
                    "{C:inactive}(Actual: {C:money}$#1#{C:inactive})",
                },
            },
            j_mp_seltzer = {
                name = "Agua con gas",
                text = {
                    "Reactiva todas",
                    "las cartas jugadas durante",
                    "las próximas {C:attention}#1#{} manos",
                },
            },
            j_mp_shipoftheseus_sandbox = {
                name = "Barco de Teseo",
                text = {
                    "Cada vez que se {C:attention}destruye{} una {C:attention}carta de juego{},",
                    "añade una {C:attention}copia{} de ella a tu {C:attention}baraja",
                    "y este comodín gana multi {X:mult,C:white}X#2#{}",
                    "{C:inactive}(Actual: multi {X:mult,C:white}X#1#{C:inactive})",
                },
            },
            j_mp_speedrun = {
                name = "SPEEDRUN",
            },
            j_mp_square_sandbox = {
                name = "Comodín cuadriculado",
                text = {
                    "Este comodín gana {C:chips}+#2#{} fichas",
                    "si la mano jugada tiene",
                    "exactamente {C:attention}4{} cartas",
                    "{C:attention}Solo se aplica en manos de 4 cartas{}",
                    "{C:inactive}(Actual: {C:chips}+#1#{C:inactive} fichas)",
                },
            },
            j_mp_starfruit_sandbox = {
                name = "Carambola",
                text = {
                    "La {C:attention}primera mano jugada{} de cada ronda",
                    "tiene {C:green}#2# en #3#{} probabilidades",
                    "de subir {C:attention}1{} nivel",
                    "{C:inactive}(Quedan {}{C:attention}#1#{}{C:inactive} rondas)",
                },
            },
            j_mp_steel_joker_sandbox = {
                name = "Comodín de acero",
                text = {
                    "Las cartas de acero jugadas",
                    "se {C:attention}reactivan{}",
                },
            },
            j_mp_swashbuckler_release = {
                name = "Aventurero",
                text = {
                    "Suma al multi el valor de venta",
                    "de todos los {C:attention}comodines{} que tengas",
                    "a la izquierda de esta carta",
                    "{C:inactive}(Actual: {C:mult}+#1#{C:inactive} multi)",
                },
            },
            j_mp_throwback_sandbox = {
                name = "Retro",
                text = {
                    "Multi base {X:mult,C:white}X#2#{} por cada",
                    "{C:attention}ciega{} omitida en esta partida",
                    "Multi {X:mult,C:white}X#3#{} en la siguiente ciega tras omitir",
                    "Pierde {X:mult,C:white}X#4#{} si no se omite la ciega",
                    "{C:inactive}(Actual: multi {X:mult,C:white} X#1# {C:inactive})",
                },
            },
            j_mp_ticket = {
                name = "Billete dorado",
                text = {
                    "Las cartas de {C:attention}oro{} jugadas",
                    "ganan {C:money}$#1#{} cuando anotan",
                },
            },
            j_mp_ticket_experimental = {
                name = "Billete dorado",
                text = {
                    "Las cartas de {C:attention}oro{} jugadas",
                    "ganan {C:money}$#1#{} cuando anotan",
                },
            },
            j_mp_todo_list = {
                name = "Lista de tareas",
                text = {
                    "Gana {C:money}$#1#{} si la {C:attention}mano de póker",
                    "jugada es {C:attention}#2#{};",
                    "la mano de póker cambia",
                    "al final de la ronda",
                },
            },
            j_mp_todo_list_release = {
                name = "Lista de tareas",
                text = {
                    "Gana {C:money}$#1#{} si la {C:attention}mano de póker{}",
                    "es {C:attention}#2#{};",
                    "la mano de póker cambia",
                    "en cada pago",
                },
            },
            j_mp_trafficlight_sandbox = {
                name = "Semáforo",
                text = {
                    "Multi {X:mult,C:white}X#1#{}",
                    "Disminuye en {X:mult,C:white}X#2#{} tras",
                    "cada mano; se reinicia tras {X:mult,C:white}X0.5",
                },
            },
            j_mp_turtle_bean = {
                name = "Habichuela negra",
                text = {
                    "{C:attention}+#1#{} de tamaño de mano;",
                    "se reduce en",
                    "{C:red}#2#{} cada ronda",
                },
            },
            j_mp_tuxedo_sandbox = {
                name = "Esmoquin",
                text = {
                    "{C:attention}Reactiva{} todas las cartas",
                    "de {V:1}#1#{}",
                    "{s:0.8}el palo cambia al final de la ronda",
                },
            },
            j_mp_vampire_release = {
                name = "Vampiro",
                text = {
                    "Este comodín gana multi {X:mult,C:white} X#1# {}",
                    "por cada {C:attention}carta mejorada{} jugada",
                    "y le quita la {C:attention}mejora",
                    "{C:inactive}(Actual: multi {X:mult,C:white} X#2# {C:inactive})",
                },
            },
            j_mp_vampire_sandbox = {
                name = "Vampiro",
                text = {
                    "Este comodín gana multi {X:mult,C:white}X#1#{} por cada",
                    "{C:attention}carta mejorada{} jugada que anota",
                    "Las cartas mejoradas jugadas se vuelven de {C:attention}piedra{}",
                    "Las cartas de piedra dan {C:money}$#3#{} al jugarse",
                    "{C:inactive}(Actual: multi {X:mult,C:white} X#2# {C:inactive})",
                },
            },
            j_mp_warlock_sandbox = {
                name = "Brujo",
                text = {
                    "{C:green}#1# en #2#{} probabilidades de que las",
                    "{C:attention}cartas de la suerte{} jugadas se {C:red}destruyan",
                    "y generen una carta {C:spectral}espectral",
                    "{C:inactive}(Debe haber espacio)",
                },
            },
            j_mp_werewolf_sandbox = {
                name = "Hombre lobo",
                text = {
                    "Las cartas jugadas que están",
                    "{C:attention}mejoradas{} se convierten en {C:attention}cartas versátiles",
                },
            },
            j_mp_yorick_release = {
                name = "Yorick",
                text = {
                    "Multi {X:mult,C:white} X#1# {} solo después",
                    "de usar {C:attention}#2#{} descartes",
                    "{C:inactive}(Descartes restantes: {C:attention}#3#{C:inactive})",
                },
            },
            j_to_the_moon_mp = {
                name = "Hasta la luna",
                text = {
                    "Gana {C:money}$#1#{} extra de",
                    "{C:attention}interés{} por cada {C:money}$#2#{} que",
                    "tengas al final de la ronda",
                },
            },
        },
        Other = {
            mp_blue_seal_release = {
                name = "Sello azul",
                text = {
                    "Crea una carta de {C:planet}planeta",
                    "si esta carta está {C:attention}en",
                    "la mano al final de la ronda",
                },
            },
            mp_internal_sell_value = {
                name = "Valor de venta",
            },
            mp_sticker_balanced = {
                name = "Equilibrado",
                text = {
                    "Esta carta ha sido reequilibrada",
                },
            },
            mp_sticker_balanced_c_mp_ouija_standard = {
                name = "Equilibrado",
                text = {
                    "Destruye {C:attention}3{} cartas en lugar de",
                    "convertirlas todas y perder",
                    "{C:attention}-1{} de tamaño de mano",
                },
            },
            mp_sticker_balanced_c_mp_wraith = {
                name = "Equilibrado",
                text = {
                    "Crea un comodín {C:green}poco común{} en lugar",
                    "de uno {C:red}raro{} y te da {C:money}$5{} en lugar",
                    "de dejar tu dinero en {C:money}$0{}",
                },
            },
            mp_sticker_balanced_j_mp_baron = {
                name = "Equilibrado",
                text = {
                    "Ahora es {C:green}poco común{} ({C:money}$5{})",
                    "en lugar de {C:red}raro{} ({C:money}$8{})",
                },
            },
            mp_sticker_balanced_j_mp_bloodstone = {
                name = "Equilibrado",
                text = {
                    "En {C:attention}PvP{}, las tiradas de {C:green}1 en 2{}",
                    "salen de una {C:attention}secuencia fija{}",
                    "compartida por ambos jugadores y",
                    "{C:attention}reutilizada{} en cada mano de la ronda",
                },
            },
            mp_sticker_balanced_j_mp_hanging_chad = {
                name = "Equilibrado",
                text = {
                    "Reactiva las {C:attention}2{} primeras cartas",
                    "en lugar de la primera dos veces",
                },
            },
            mp_sticker_balanced_j_mp_mime = {
                name = "Equilibrado",
                text = {
                    "Ahora es {C:red}raro{} ({C:money}$8{})",
                    "en lugar de {C:green}poco común{} ({C:money}$5{})",
                },
            },
            mp_sticker_balanced_j_mp_seltzer = {
                name = "Equilibrado",
                text = {
                    "Dura {C:attention}8{} manos",
                    "en lugar de {C:attention}10{}",
                },
            },
            mp_sticker_balanced_j_mp_ticket = {
                name = "Equilibrado",
                text = {
                    "Ahora es {C:green}poco común",
                    "Sin requisito de cartas de {C:attention}oro",
                },
            },
            mp_sticker_balanced_j_mp_todo_list = {
                name = "Equilibrado",
                text = {
                    "Da {C:money}$5{} en lugar de {C:money}$4{}",
                    "Elige entre {C:attention}todas{} las manos de póker,",
                    "no solo las descubiertas",
                },
            },
            mp_sticker_balanced_j_mp_turtle_bean = {
                name = "Equilibrado",
                text = {
                    "{C:attention}+4{} de tamaño de mano",
                    "en lugar de {C:attention}+5{}",
                },
            },
            mp_sticker_balanced_m_gold = {
                name = "Equilibrado",
                text = {
                    "Da {C:money}$4{} en lugar de {C:money}$3{}",
                },
            },
            mp_sticker_draining = {
                name = "Agotador",
                text = {
                    "Multi {X:mult,C:white}X0.75{}",
                },
            },
            mp_sticker_extra_credit = {
                name = "Crédito extra",
                text = {
                    "¡Hecho con amigos de",
                    "Balatro University!",
                },
            },
            mp_sticker_persistent = {
                name = "Persistente",
                text = {
                    "No se puede destruir",
                    "Venderlo cuesta {C:red}${}",
                    "El coste aumenta en",
                    "{C:red}$3{} al final de la ronda",
                },
            },
            mp_sticker_unreliable = {
                name = "Poco fiable",
                text = {
                    "No se activa en la",
                    "{C:attention}última mano{}",
                },
            },
            mp_transmutations = {
                name = "Transmutaciones",
                text = {
                    "{C:purple,s:1.1}Se transmutará en:",
                },
            },
            p_mp_standard_giga = {
                name = "Paquete estándar giga",
                text = {
                    "Elige {C:attention}#1#{} de hasta",
                    "{C:attention}#2#{} cartas {C:attention}de juego{} para",
                    "añadirlas a tu baraja",
                    "{C:attention}No se puede omitir{}",
                },
            },
        },
        Spectral = {
            c_mp_ectoplasm_sandbox = {
                name = "Ectoplasma",
                text = {
                    "Añade {C:dark_edition}negativo{} a",
                    "un {C:attention}comodín{} aleatorio;",
                    "aplica al azar uno de estos:",
                    "{C:red}-1{} mano, {C:red}-1{} descarte o {C:red}-1{} de tamaño de mano",
                },
            },
            c_mp_ouija_standard = {
                name = "Ouija",
                text = {
                    "Destruye {C:attention}#1#{} cartas aleatorias",
                    "y luego convierte todas las",
                    "restantes en una misma {C:attention}categoría{} aleatoria",
                },
            },
            c_mp_wraith = {
                name = "Espectro",
                text = {
                    "Crea un comodín {C:green}poco común{} aleatorio",
                    "Ganas {C:money}$#1#{}",
                },
            },
        },
        Stake = {
            stake_mp_antimatter = {
                name = "Pozo de antimateria",
                text = {
                    "Algunos comodines son {C:attention}agotadores",
                    "{C:inactive,s:0.8}(Multi {X:mult,C:white,s:0.8} X0.75 {C:inactive,s:0.8})",
                    "{s:0.8}Aplica el pozo de cristal",
                },
            },
            stake_mp_crystal = {
                name = "Pozo de cristal",
                text = {
                    "Algunos comodines son {C:attention}poco fiables",
                    "{C:inactive,s:0.8}(No se activan en la {C:attention,s:0.8}última mano{C:inactive,s:0.8})",
                    "{s:0.8}Aplica el pozo de jade",
                },
            },
            stake_mp_ferrite = {
                name = "Pozo de ferrita",
                text = {
                    "Algunos comodines son {C:attention}persistentes",
                    "{C:inactive,s:0.8}(No se pueden destruir; coste de venta creciente)",
                    "{s:0.8}Aplica el pozo de guijarro",
                },
            },
            stake_mp_gold_release = {
                name = "Pozo de oro",
                text = {
                    "{C:red}-1{} de tamaño de mano",
                    "{s:0.8}Aplica todos los pozos anteriores",
                },
            },
            stake_mp_jade = {
                name = "Pozo de jade",
                text = {
                    "La puntuación requerida aumenta",
                    "más rápido en cada {C:attention}apuesta inicial",
                    "{s:0.8}Aplica el pozo de pirita",
                },
            },
            stake_mp_orange_release = {
                name = "Pozo naranja",
                text = {
                    "Los {C:attention}paquetes potenciadores{} cuestan",
                    "{C:money}$1{} más por apuesta inicial",
                    "{s:0.8}Aplica todos los pozos anteriores",
                },
            },
            stake_mp_pebble = {
                name = "Pozo de guijarro",
                text = {
                    "La puntuación requerida aumenta",
                    "más rápido en cada {C:attention}apuesta inicial",
                    "{s:0.8}Aplica el pozo de plástico",
                },
            },
            stake_mp_planet = {
                name = "Pozo planetario",
                text = {
                    "Aplica los efectos del {C:black}pozo negro{}, además:",
                    "En la tienda puede haber comodines {C:attention}perecederos",
                    "{C:inactive,s:0.8}(Se debilitan tras 5 rondas)",
                    "La puntuación requerida aumenta",
                    "más rápido en cada {C:attention}apuesta inicial",
                },
            },
            stake_mp_plastic = {
                name = "Pozo de plástico",
                text = {
                    "Ganas {C:money}$1{} de interés por cada {C:money}$10{}",
                    "{C:inactive,s:0.8}(Máx. {C:money,s:0.8}$50{C:inactive,s:0.8})",
                    "{s:0.8}Aplica el pozo blanco",
                },
            },
            stake_mp_pyrite = {
                name = "Pozo de pirita",
                text = {
                    "El precio de cambio aumenta",
                    "{C:money}$2{} en cada cambio",
                    "{s:0.8}Aplica el pozo de ferrita",
                },
            },
            stake_mp_spectral = {
                name = "Pozo espectral",
                text = {
                    "Aplica los efectos del {C:planet}pozo planetario{}, además:",
                    "Aparecen comodines {C:money}de alquiler{} en la tienda",
                    "La puntuación requerida aumenta",
                    "más rápido en cada {C:attention}apuesta inicial",
                },
            },
            stake_mp_spectralplus = {
                name = "Pozo espectral+",
                text = {
                    "Aplica los efectos del {C:planet}pozo espectral{}, además:",
                    "La puntuación requerida aumenta",
                    "aún más rápido en cada {C:attention}apuesta inicial",
                },
            },
        },
        Tag = {
            tag_mp_foil_release = {
                name = "Etiqueta laminada",
                text = {
                    "El próximo comodín de edición base",
                    "de la tienda pasa a ser {C:dark_edition}laminado",
                },
            },
            tag_mp_gambling_sandbox = {
                name = "Etiqueta de apuesta",
                text = {
                    "{C:green}#1# en #2#{} probabilidades",
                    "de que la tienda tenga un",
                    "{C:red}comodín raro{} gratis",
                },
            },
            tag_mp_holo_release = {
                name = "Etiqueta holográfica",
                text = {
                    "El próximo comodín de edición base",
                    "de la tienda pasa a ser {C:dark_edition}holográfico",
                },
            },
            tag_mp_investment_sandbox = {
                name = "Etiqueta de inversión",
                text = {
                    "Tras derrotar",
                    "a la ciega jefe, ganas:",
                    "{C:money}$#1#{} + {C:money}$#2#{} por apuesta inicial",
                    "{C:inactive}(Actual: {C:money}$#3#{C:inactive})",
                },
            },
            tag_mp_juggle_sandbox = {
                name = "Etiqueta malabares",
                text = {
                    "{C:attention}+#1#{} de tamaño de mano",
                    "en la próxima {C:attention}ciega PvP",
                },
            },
            tag_mp_negative_release = {
                name = "Etiqueta negativa",
                text = {
                    "El próximo comodín de edición base",
                    "de la tienda pasa a ser {C:dark_edition}negativo",
                },
            },
            tag_mp_poly_release = {
                name = "Etiqueta polícroma",
                text = {
                    "El próximo comodín de edición base",
                    "de la tienda pasa a ser {C:dark_edition}polícromo",
                },
            },
            tag_mp_rare_release = {
                name = "Etiqueta rara",
                text = {
                    "La tienda tiene un",
                    "{C:red}comodín raro",
                },
            },
            tag_mp_uncommon_release = {
                name = "Etiqueta poco común",
                text = {
                    "La tienda tiene un",
                    "{C:green}comodín poco común",
                },
            },
        },
        Tarot = {
            c_mp_magician_release = {
                name = "El mago",
                text = {
                    "Mejora {C:attention}#1#{} carta",
                    "seleccionada a",
                    "{C:attention}#2#",
                },
            },
        },
    },
    misc = {
        challenge_names = {
            c_mp_all_must_go = "Todo debe irse",
            c_mp_bacon = "Hielo azul",
            c_mp_badlatro = "Badlatro",
            c_mp_balancing_act = "Número de equilibrio",
            c_mp_eeeee = "EEEEE",
            c_mp_lets_go_gambling = "¡A apostar!",
            c_mp_planet_tycoon = "Magnate planetario",
            c_mp_polymorph_spam = "Polimorfia sin fin",
            c_mp_salvaged_sibyl = "Sibila rescatada",
            c_mp_sandbox = "Sandbox",
            c_mp_shared_pockets = "Bolsillos compartidos",
            c_mp_vanilla = "Original",
            c_mp_vantablack = "Vantablack",
        },
        dictionary = {
            b_get_log_file = "Obtener registros",
            b_join_lobby_clipboard = "Unirse desde el portapapeles",
            b_lobby_info = "Información de la sala",
            b_open_log_parser = "Analizador de registros",
            b_opts_disable_preview = "Desactivar vista previa de puntuación",
            b_opts_hide_score = "Ocultar la puntuación rival hasta que juegues",
            b_opts_legacy_smallworld = "Mecánicas antiguas de Mundo pequeño",
            b_opts_modifier_pvp_timer = "Temporizador PvP",
            b_opts_modifier_smallworld = "Mundo pequeño",
            b_opts_random_loadout = "Baraja y pozo aleatorios",
            b_opts_the_order = "Activar The Order",
            b_opts_timer = "Activar temporizador",
            b_practice = "Práctica",
            b_preview_integration = "Activar vista previa de puntuación",
            b_sc_choose_deck = "Elegir baraja/pozo",
            b_skip_tutorial = "Omitir tutorial",
            b_sp_with_ruleset = "Modo práctica",
            b_toggle_jokers = "Mostrar/ocultar comodines",
            b_wait_for_guest_ready = {
                "ESPERANDO A QUE",
                "EL INVITADO ESTÉ LISTO",
            },
            k_amount_short = "Cant.",
            k_applies_singleplayer_vanilla_rulesets = "*Se aplica en un jugador y en las reglas originales",
            k_are_you_sure = "¿Seguro?",
            k_asteroids = "Asteroides",
            k_attrition = "Desgaste",
            k_attrition_description = "Tras la primera apuesta inicial, cada ciega jefe es una ciega Némesis. Sin tiempo para prepararse: este modo te obliga a estar listo para el combate desde el principio.",
            k_automatic_pvp_timer = "Temporizador PvP automático",
            k_automatic_pvp_timer_description = {
                "Reactiva el temporizador PvP cuando esté disponible",
                "(Primero hay que activarlo manualmente)",
            },
            k_badlatro = "Badlatro",
            k_bans = "Prohibiciones",
            k_battle = "Batalla",
            k_blitz = "Estándar",
            k_blitz_description = "El conjunto de reglas multijugador equilibrado.\n\nIncluye comodines multijugador y cambios de equilibrio\ncon control total sobre los ajustes de tu sala.\n\n(Mira las pestañas de prohibiciones y cambios para más detalles)",
            k_challenge = "Desafío",
            k_chaos = "Caos",
            k_chaos_description = "Todo a la vez en todas partes.\n\nCombina Estándar, Mundo pequeño, Sandbox y el temporizador de Speedlatro\nen un solo conjunto de reglas. Buena suerte.",
            k_cocktail_rightclick = "Clic derecho para seleccionar todas",
            k_cocktail_select = "Selecciona barajas para incluirlas",
            k_cocktail_shiftclick = "Mayús + clic para laminar; las barajas laminadas siempre se eligen",
            k_comeback_money_sandbox = "\032Dinero de remontada ($3 × apuesta inicial superada)",
            k_continue_singleplayer_tooltip = "Esto sobrescribirá tu partida actual de un jugador",
            k_cost_up = "Sube el coste",
            k_created_by = "Creado por",
            k_custom = "Personalizado",
            k_customization = "Personalización",
            k_customize_preview = "Personalizar texto de la vista previa:",
            k_destabilized = "Desestabilizado",
            k_edit = "Editar",
            k_edition_cycling = "Alternar edición (Q)",
            k_experimental = "Experimental",
            k_experimental_description = "La vanguardia de Estándar.\n\nCambios de equilibrio más fuertes en prueba\npara un futuro conjunto de reglas Estándar.\n\n(Mira las pestañas de prohibiciones y cambios para más detalles)",
            k_experimental_legacy = "Experimental (clásico)",
            k_experimental_legacy_description = "Una versión con criterio propio del clasificatorio antiguo.\n\nVidrio debilitado, Papel perforado rehecho, Justicia prohibida,\n¡a apostar!",
            k_experimental_modifiers_pvp_timer = {
                "- Temporizador disponible durante las rondas {C:mult}PvP{}.",
                "  {C:chips}90{} segundos más {C:chips}15{} segundos por mano jugada {C:attention}sin contar animaciones{}.",
                "  Solo puedes usar el temporizador contra el rival si tienes {C:attention}más{} puntuación",
            },
            k_experimental_modifiers_smallworld = {
                "- El {C:attention}75 %{} de comodines, consumibles, vales y etiquetas",
                "  se prohíben al azar en cada partida.",
                "- El efecto de {C:attention}Jefe de pista{} siempre está activo.",
            },
            k_experimental_modifiers_timers = {
                "- Por defecto: temporizador normal de {C:chips}150{} {C:inactive}(1x){} segundos",
                " ",
                "- Sin animaciones: temporizador de {C:chips}100{} {C:inactive}(0.67x){} segundos {C:attention}sin contar animaciones{}",
                " ",
                "- Presión: temporizador de {C:chips}300{} {C:inactive}(2x){} segundos {C:attention}sin contar animaciones{}",
                "  que empieza {C:attention}de inmediato{}",
                " ",
                "- Presión+: igual que {C:attention}Presión{} más {C:chips}15{} segundos por mano jugada",
            },
            k_experimental_standard = "Experimental (estándar)",
            k_filed_ex = "¡Archivado!",
            k_forces_gamemode = "Fuerza el modo de juego",
            k_forces_lobby_options = "Fuerza las opciones de sala",
            k_gamemodes = "Modos de juego",
            k_ghost = "Fantasma",
            k_ghost_replays = "Repeticiones de partidas",
            k_has_multiplayer_content = "Tiene contenido multijugador",
            k_hide_mp_content = "Ocultar contenido multijugador*",
            k_info = "Información",
            k_legacy_ranked = "Clasificatoria antigua",
            k_legacy_ranked_description = "Un conjunto de reglas competitivo mínimo.\n\nSin cartas multijugador ni cambios de equilibrio\nsalvo el vidrio. Ajustes bloqueados:\n- Modo Desgaste\n- The Order activado\n- Requiere la versión recomendada de Steamodded",
            k_lobby_advanced = "Avanzado",
            k_lobby_gameplay = "Jugabilidad",
            k_lobby_general = "General",
            k_lobby_modifiers = "Modificadores",
            k_major_contributors = "Contribuciones principales de",
            k_majorleague = "Liga Mayor",
            k_majorleague_description = "Reglas oficiales de la Major League Balatro.\n\nCartas originales con ajustes competitivos:\n- Temporizador de 180+60 segundos, oculto por encima de 180\n- Sin ubicaciones del rival\n- The Order desactivado salvo en vales, Heliotropo y El ídolo\n- Modo Desgaste",
            k_matchmaking = "Emparejamiento",
            k_may_roll_stickers = "Puede tener pegatinas",
            k_minorleague = "Liga Menor",
            k_minorleague_description = "Reglas oficiales de la Minor League Balatro.\n\nCartas originales con ajustes competitivos:\n- Temporizador de 210 segundos\n- The Order activado\n- Se perdona el primer tiempo agotado\n- Modo Desgaste",
            k_mp_ruleset_tab_experimental = "Experimental",
            k_mp_ruleset_tab_general = "General",
            k_mp_ruleset_tab_tournaments = "Torneos",
            k_mp_version_warning = "¡Los jugadores tienen versiones distintas de Multiplayer! Las semillas y los comodines se desincronizarán: actualizad para que coincidan.",
            k_nemesis_timer = "Némesis",
            k_no = "No",
            k_no_ghost_replays = "Aún no hay repeticiones",
            k_oops_ex = "¡Ups!",
            k_opts_modifier_timer = "Tipo de temporizador",
            k_opts_pvp_countdown_seconds = "Segundos de cuenta atrás PvP",
            k_opts_pvp_timer_increment = "Incremento del temporizador",
            k_opts_showdown_starting_antes = "Enfrentamiento empieza en la apuesta inicial",
            k_other = "Otros",
            k_practice_collection_hint = "Psst... haz clic en una carta y es tuya. ¡Sin preguntas!",
            k_practice_options = "Opciones de práctica...",
            k_preview_credit = "*Créditos a @Fantom y @Divvy",
            k_preview_integration_desc = "Activa una vista previa de la puntuación antes de jugar una mano",
            k_release = "Versión final",
            k_release_description = "Allan, añade detalles, por favor",
            k_reworks = "Cambios",
            k_ruleset_disabled_the_order_banned = "The Order está prohibido",
            k_ruleset_disabled_the_order_required = "The Order es obligatorio",
            k_ruleset_not_found = "Conjunto de reglas desconocido",
            k_rulesets = "Conjuntos de reglas",
            k_sandbox = "Sandbox: Crédito extra",
            k_sandbox_description = "Se unen 26 comodines nuevos de Extra Credit.\nEl ídolo se divide en dos: Fanático y Coleccionista. Eliges uno y el otro desaparece.\nNuevas cartas espectrales, oro de remontada rehecho y sin vista previa de puntuación.\nEl meta está totalmente abierto. Hecho con amigos de Balatro University.\n",
            k_sc_hint = "Pulsa una tecla o suelta TAB para cerrar",
            k_sc_title = "ATAJOS",
            k_showdown = "Enfrentamiento",
            k_showdown_description = "Tras las 2 primeras apuestas iniciales, cada ciega es una ciega Némesis. Este modo te da tiempo para prepararte antes de la batalla.",
            k_skips = "Omisiones",
            k_smallworld = "Mundo pequeño",
            k_smallworld_description = "Al final, el mundo es un pañuelo.\n\nEl 75 % de comodines, consumibles, vales y etiquetas\nse prohíben al azar en cada partida.\n\nLo prohibido se sustituye por lo disponible.\nSe permiten duplicados.",
            k_speedlatro = "Speedlatro",
            k_speedlatro_description = "Sube el ritmo con un temporizador incómodamente rápido de 147 segundos\nentre cada ciega PvP. Suerte usando Vagabundo",
            k_standard_ranked = "Clasificatoria estándar",
            k_standard_ranked_description = "El conjunto de reglas competitivo oficial.\n\nReglas estándar con ajustes bloqueados:\n- Modo Desgaste\n- The Order activado\n- Requiere la versión recomendada de Steamodded",
            k_steamodded_warning = "Los jugadores tienen versiones distintas de Steamodded. Esto puede hacer que las semillas difieran.",
            k_survival = "Supervivencia",
            k_survival_description = "Gana quien supere la ciega más lejana. Sin ciegas Némesis. Este modo pone a prueba tu capacidad para crecer poco a poco hasta las manos originales de mayor puntuación.",
            k_timer_sfx = "Efectos de sonido del temporizador",
            k_traditional = "Tradicional",
            k_traditional_description = "Contenido multijugador sin presión de tiempo.\n\nIncluye comodines multijugador y cambios de equilibrio,\npero elimina las mecánicas de tiempo para jugar con calma.\n\nLos comodines basados en tiempo están prohibidos.\nEl temporizador está desactivado.\n\n(Mira las pestañas de prohibiciones y cambios para más detalles)",
            k_tutorial_not_complete = "Debes completar el tutorial antes de jugar a Multiplayer",
            k_unlimited_slots = "Espacios ilimitados",
            k_values_are_modifiable = "* Los valores se pueden modificar",
            k_vanilla = "Original",
            k_wait_enemy_reach_this_blind = "Esperando a que el rival llegue a esta ciega...",
            k_warning_banned_mods = "Uno o más jugadores tienen mods prohibidos instalados. Estos mods no están permitidos en partidas clasificatorias.",
            k_warning_nemesis_unlock = "Tu rival juega con un perfil que no está totalmente desbloqueado. Pídele que cree un perfil nuevo y pulse «Desbloquear todo» en los ajustes del perfil",
            k_warning_no_order = "Un jugador tiene activada la integración de The Order y el otro no. Esto hará que las semillas difieran.",
            k_wsob = "WSOB",
            k_wsob_description = "Reglas de la World Series of Balatro.\n\nCartas casi originales con cambios de equilibrio mínimos:\n- Papel perforado, Heliotropo y Vidrio rehechos\n- Justicia prohibida\n- Sin contenido original de Multiplayer\n\n(Mira las pestañas de prohibiciones y cambios para más detalles)",
            k_yes = "Sí",
            k_your_deck = "Tu baraja",
            k_your_jokers = "Tus comodines",
            ml_mp_modifier_timer_opt = {
                "Por defecto",
                "Sin animaciones",
                "Presión",
                "Presión+",
            },
            ml_mp_timersfx_opt = {
                "Activado",
                "Una vez por apuesta inicial",
                "Desactivado",
            },
        },
        labels = {
            mp_sticker_balanced = "Equilibrado",
            mp_sticker_draining = "Agotador",
            mp_sticker_extra_credit = "Crédito extra",
            mp_sticker_persistent = "Persistente",
            mp_sticker_unreliable = "Poco fiable",
        },
        v_dictionary = {
            k_ante_min = "Apuesta inicial #1#+",
            k_ante_number = "Apuesta inicial #1#",
            k_ante_range = "Apuesta inicial #1#-#2#",
            k_credits_list = "¡#1# y muchos más!",
            k_failed_to_join_lobby = "No se pudo unir a la sala: #1#",
            k_ruleset_disabled_lovely_version = "Requiere Lovely #1#",
            k_ruleset_disabled_smods_version = "Requiere SMODS versión #1#",
        },
        v_text = {
            ch_c_mp_ante_scaling = {
                "Tamaño base de ciega {C:red}X#1#{}",
            },
            ch_c_mp_eeeee = {
                "Algunas colas de azar elegidas al azar están {C:attention}bugueadas{} en cada apuesta inicial",
            },
            ch_c_mp_indigo = {
                "Se juega con la {C:attention}baraja índigo{}",
            },
            ch_c_mp_no_shop_planets = {
                "Los {C:planet}planetas{} ya no aparecen en la {C:attention}tienda",
            },
            ch_c_mp_only_medium = {
                "Todas las cartas {C:spectral}espectrales{} son {C:spectral}Médium{}",
            },
            ch_c_mp_only_purple_seals = {
                "Todos los {C:attention}sellos{} son {C:purple}sellos morados{}",
            },
            ch_c_mp_planet_tycoon_CREDITS = {
                "{C:inactive}(Idea de {C:attention}BlockAttack{C:inactive})",
            },
            ch_c_mp_polymorph_spam = {
                "Al seleccionar la ciega, todos los {C:attention}comodines{} y {C:attention}consumibles{} que tengas",
            },
            ch_c_mp_polymorph_spam_EXTENDED1 = {
                "se transmutan en la {C:attention}N{}-ésima carta siguiente de su colección,",
            },
            ch_c_mp_polymorph_spam_EXTENDED2 = {
                "donde {C:attention}N{} es su posición actual en los espacios",
            },
            ch_c_mp_score_instability = {
                "La puntuación desequilibrada se {C:purple}desestabiliza{} aún más:",
            },
            ch_c_mp_score_instability_EXAMPLE = {
                "\032\032{C:inactive}(p. ej.: {C:chips}30{C:inactive}x{C:mult}24{C:inactive} -> {C:chips}36{C:inactive}x{C:mult}18{C:inactive})",
            },
            ch_c_mp_score_instability_LOC1 = {
                "\032\032{C:inactive}Mínimo de {C:attention}1{} {C:mult}multi",
            },
            ch_c_mp_score_instability_LOC2 = {
                "\032\032{C:inactive}Mínimo de {C:attention}0{} {C:chips}fichas",
            },
            ch_c_mp_shared_pockets = {
                "El {C:attention}tamaño de mano{}, los {C:attention}espacios de comodín{} y los {C:attention}de consumibles{} se comparten",
            },
            ch_c_mp_shop_planets = {
                "Las cartas de {C:planet}planeta{} aparecen",
            },
            ch_c_mp_shop_planets_EXTENDED = {
                "{C:attention}40X{} más a menudo en la tienda",
            },
            ch_c_mp_sibyl_CREDITS = {
                "{C:inactive}(Arte de {C:attention}Ganpan14O{C:inactive})",
            },
            ch_c_mp_vantablack_CREDITS = {
                "{C:inactive}(Arte de {C:attention}aura!{C:inactive})",
            },
        },
    },
}
