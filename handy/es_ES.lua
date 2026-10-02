-- Generado automáticamente desde traducciones/Handy.tsv
-- No editar a mano: edita el TSV y ejecuta herramientas/generar.py
return {
    descriptions = {
        Handy_ConfigDictionary = {
            animation_skip = {
                handy_override_align = {
                    unlock = {
                        [5] = "cl",
                        [6] = "cl",
                        [7] = "cl",
                        [8] = "cl",
                    },
                },
                name = "Saltar animaciones",
                text = {
                    "Elimina las animaciones de puntuación y otras del juego",
                },
                unlock = {
                    "Sustituye directamente la misma función",
                    "de mods como {C:attention}Talisman{}, {C:attention}Saturn{} o {C:attention}Nopeus{}",
                    " ",
                    "Tiene 4 niveles:",
                    "{C:chips}#1#{} - sin cambios",
                    "{C:chips}#2#{} - sin mensajes de {C:mult}multi X{}, {C:attention}¡Otra vez!{} ni otras activaciones",
                    "{C:attention}#3#{} - puntuación instantánea",
                    "{C:attention}#4#{} - casi sin animaciones; robo de cartas instantáneo",
                },
            },
            animation_skip_current_value = {
                name = "Saltar animaciones: valor actual",
            },
            animation_skip_decrease = {
                name = {
                    "Saltar animaciones: reducir",
                },
            },
            animation_skip_default_value = {
                name = "Saltar animaciones: valor al iniciar el juego",
            },
            animation_skip_increase = {
                name = {
                    "Saltar animaciones: aumentar",
                },
            },
            animation_skip_load_value = {
                name = "Saltar animaciones: conservar entre recargas",
                unlock = {
                    "Sustituye el valor al iniciar el juego",
                },
            },
            animation_skip_settings_toggle = {
                name = "Saltar animaciones: opción en ajustes",
                unlock = {
                    "Se coloca junto al ajuste original de {C:attention}velocidad del juego{}",
                },
            },
            animation_skip_toggle_temp_disabled = {
                name = {
                    "Saltar animaciones: activar/desactivar",
                },
            },
            appearance = {
                name = "Apariencia",
            },
            controller_sensitivity = {
                name = "Mando: sensibilidad del cursor",
            },
            current_device = {
                name = "Dispositivo de entrada",
                text = {
                    "Ratón + teclado, o mando",
                },
                unlock = {
                    "El mod usa distribuciones de teclas distintas",
                    "para {C:attention}ratón + teclado{} y {C:attention}mando{}",
                    "y cambia entre ellas según",
                    "el dispositivo que estés usando",
                    "{C:inactive}(si está seleccionado el modo «#1#»){}",
                },
            },
            dangerous_actions = {
                name = "Acciones peligrosas",
                text = {
                    "Para cuando hay demasiadas cosas que gestionar",
                },
            },
            dangerous_actions_animation_skip_unsafe = {
                name = {
                    "Saltar animaciones: inseguro",
                },
                unlock = {
                    "Permite subir al nivel {C:mult}#1#{}",
                    " ",
                    "{C:mult}Límite absoluto del juego: todo es instantáneo{}",
                },
            },
            dangerous_actions_crash = {
                name = {
                    "Cerrar el juego de golpe",
                },
                unlock = {
                    "{C:mult}Literalmente{}",
                },
            },
            dangerous_actions_mass_sell_remove_mode = {
                name = "Modo de venta/eliminación masiva",
                unlock = {
                    "Se aplica a los controles:",
                    "{C:mult}#1#{}",
                    "{C:mult}#2#{}",
                    "{C:mult}#3#{}",
                    "{C:mult}#4#{}",
                },
            },
            dangerous_actions_remove_all = {
                name = {
                    "Eliminar TODO al instante",
                },
                text = {
                    "También funciona con etiquetas de omisión",
                },
                unlock = {
                    "{C:attention}Mantén{} la tecla y {C:attention}haz clic{} en la carta/etiqueta",
                    "que quieras {C:mult}eliminar{}",
                    "{C:inactive}(se salta todas las comprobaciones, sin reembolso){}",
                },
            },
            dangerous_actions_remove_all_same = {
                name = {
                    "Eliminar al instante todas las iguales",
                },
                text = {
                    "También funciona con etiquetas de omisión",
                },
                unlock = {
                    "{C:attention}Mantén{} la tecla y {C:attention}haz clic{} en la carta/etiqueta",
                    "que quieras {C:mult}eliminar{}",
                    "{C:inactive}(se salta todas las comprobaciones, sin reembolso){}",
                },
            },
            dangerous_actions_remove_one = {
                name = {
                    "Eliminar al instante",
                },
                text = {
                    "También funciona con etiquetas de omisión",
                },
                unlock = {
                    "{C:attention}Mantén{} la tecla y empieza a {C:attention}pasar el ratón{} por",
                    "las cartas/etiquetas que quieras {C:mult}eliminar{}",
                    " ",
                    "Mientras {C:attention}la mantengas{}, se añaden a una lista",
                    "Al {C:attention}soltarla{}, se {C:mult}eliminan{} todas",
                    "{C:inactive}(se salta todas las comprobaciones, sin reembolso){}",
                },
            },
            dangerous_actions_sell_all = {
                name = {
                    "Vender TODO al instante",
                },
                unlock = {
                    "{C:attention}Mantén{} la tecla y {C:attention}haz clic{} en la carta",
                    "que quieras vender",
                },
            },
            dangerous_actions_sell_all_same = {
                name = {
                    "Vender al instante todas las iguales",
                },
                unlock = {
                    "{C:attention}Mantén{} la tecla y {C:attention}haz clic{} en la carta",
                    "que quieras vender",
                },
            },
            dangerous_actions_sell_one = {
                name = {
                    "Vender al instante",
                },
                unlock = {
                    "{C:attention}Mantén{} la tecla y empieza a {C:attention}pasar el ratón{} por",
                    "las cartas que quieras vender",
                    " ",
                    "Mientras {C:attention}la mantengas{}, se añaden a una lista",
                    "Al {C:attention}soltarla{}, se venden todas",
                },
            },
            dangerous_actions_speed_multiplier_uncap = {
                name = {
                    "Multiplicador de velocidad: sin límite",
                },
                unlock = {
                    "Sube el límite de velocidad hasta {C:mult}#1#{}",
                    " ",
                    "{C:mult}Hunde el rendimiento con valores muy altos{}",
                },
            },
            dangerous_actions_stack_overflow = {
                name = {
                    "Cerrar el juego: desbordamiento de pila",
                },
                unlock = {
                    "{C:mult}Literalmente{}",
                    "{C:mult}El juego se congelará y/o se cerrará solo{}",
                },
            },
            debug_things = {
                name = "Desarrollo y depuración",
            },
            debug_things_reload_localization = {
                name = "Dev: recargar idioma",
                unlock = {
                    "G:set_language();",
                    "init_localization();",
                },
            },
            debug_things_reload_prototypes = {
                name = "Dev: recargar prototipos de objetos",
                unlock = {
                    "G:set_language();",
                    "G:init_item_prototypes();",
                },
            },
            gamepad = {
                name = "Ajustes del mando",
            },
            general = {
                name = "Handy v#1# de #2#",
            },
            hand_selection = {
                name = "Selección y deselección de mano",
                text = {
                    "Desliza para seleccionar, y más",
                },
            },
            hand_selection_combine_select_deselect = {
                name = {
                    "Seleccionar y deseleccionar combinados",
                },
                unlock = {
                    "{C:inactive}Al pasar el ratón por las cartas:{}",
                    "si la carta {C:mult}no{} está seleccionada, se {C:chips}selecciona{}",
                    "si la carta {C:chips}está{} seleccionada, se {C:mult}deselecciona{}",
                },
            },
            hand_selection_deselect_hand = {
                name = {
                    "Deseleccionar mano",
                },
                text = {
                    "#1# del juego original",
                },
            },
            hand_selection_entire_f_hand = {
                name = {
                    "Seleccionar toda la mano",
                },
                unlock = {
                    "Selecciona el {C:attention}máximo posible{}",
                    "de cartas, de izquierda a derecha",
                },
            },
            hand_selection_insta_highlight = {
                name = {
                    "Selección rápida de mano",
                },
                text = {
                    "Arrastra, pasa el ratón o desliza para seleccionar",
                },
                unlock = {
                    "Si está asignado a {C:chips}#1#{},",
                    "empieza a mantener {C:attention}FUERA{} de las cartas",
                    "y luego pasa por encima para seleccionarlas",
                    "{C:inactive}(si no, agarrarías una carta){}",
                },
            },
            hand_selection_insta_highlight_allow_deselect = {
                name = {
                    "Deselección rápida de mano",
                },
                unlock = {
                    "{C:inactive}Al pasar el ratón por las cartas:{}",
                    "si la {C:attention}primera{} carta {C:mult}no{} estaba seleccionada, se {C:chips}seleccionan{}",
                    "si la {C:attention}primera{} carta {C:chips}sí{} lo estaba, se {C:mult}deseleccionan{}",
                },
            },
            hand_selection_mode = {
                name = "Forma de seleccionar la mano",
                text = {
                    "Elige el mod que usabas antes",
                },
                unlock = {
                    "Afecta a algunos matices de cómo funcionan",
                    "la {C:attention}selección{} y la {C:attention}deselección{} de la mano",
                    "al usar una tecla distinta de {C:chips}#1#{}",
                    "y/o si {C:chips}#2#{} tienen la misma tecla:",
                    " ",
                    "{C:attention}Handy{} - selecciona al momento, no deselecciona",
                    "{C:attention}BMaG{} - selecciona solo al moverte, deselecciona al soltar",
                },
            },
            handy = {
                name = "Activar/desactivar el mod entero",
                text = {
                    "Desmárcalo para desactivar TODAS las funciones del mod",
                },
                unlock = {
                    "Cualquier control se puede activar/desactivar",
                    "en {C:attention}cualquier momento{} sin",
                    "reiniciar el juego ni recargar la partida",
                },
            },
            hide_options_button = {
                name = "Ocultar el botón del mod en opciones",
            },
            insta_actions = {
                name = "Comprar/vender/usar rápido",
                text = {
                    "Ahorra clics y usa las cartas más rápido",
                },
            },
            insta_actions_buy_n_sell = {
                name = {
                    "Comprar y vender carta al momento",
                },
                text = {
                    "Compra y vende justo después",
                },
                unlock = {
                    "El uso depende de {C:attention}#1#{}",
                    " ",
                    "{C:attention}Mantén{} la tecla y {C:attention}haz clic{} en una carta",
                    "para comprarla {C:inactive}(en la tienda){} o elegirla {C:inactive}(en un paquete potenciador){}",
                    "y {C:attention}venderla al momento{}",
                },
            },
            insta_actions_buy_n_sell_alt = {
                name = {
                    "Comprar y vender carta al momento",
                },
                text = {
                    "Compra y vende justo después",
                },
                unlock = {
                    "El uso depende de {C:attention}#1#{}",
                    " ",
                    "{C:attention}Pasa el ratón/agarra{} la carta y {C:attention}pulsa{} la tecla",
                    "para comprarla {C:inactive}(en la tienda){} o elegirla {C:inactive}(en un paquete potenciador){}",
                    "y {C:attention}venderla al momento{}",
                },
            },
            insta_actions_buy_or_sell = {
                name = {
                    "Comprar/vender carta rápido",
                },
                unlock = {
                    "El uso depende de {C:attention}#1#{}",
                    " ",
                    "{C:attention}Mantén{} la tecla y {C:attention}haz clic{} en una carta",
                    "para comprarla {C:inactive}(en la tienda){}, elegirla {C:inactive}(en un paquete potenciador){}",
                    "o venderla {C:inactive}(de los espacios de comodines/consumibles){}",
                },
            },
            insta_actions_buy_or_sell_alt = {
                name = {
                    "Comprar/vender carta rápido",
                },
                unlock = {
                    "El uso depende de {C:attention}#1#{}",
                    " ",
                    "{C:attention}Pasa el ratón/agarra{} la carta y {C:attention}pulsa{} la tecla",
                    "para comprarla {C:inactive}(en la tienda){}, elegirla {C:inactive}(en un paquete potenciador){}",
                    "o venderla {C:inactive}(de los espacios de comodines/consumibles){}",
                },
            },
            insta_actions_trigger_mode = {
                name = "Modo de comprar/vender/usar",
            },
            insta_actions_use = {
                name = {
                    "Usar carta rápido",
                },
                unlock = {
                    "El uso depende de {C:attention}#1#{}",
                    " ",
                    "{C:attention}Mantén{} la tecla y {C:attention}haz clic{} en la carta",
                    "para usarla {C:inactive}(si se puede){}",
                },
            },
            insta_actions_use_alt = {
                name = {
                    "Usar carta rápido",
                },
                unlock = {
                    "El uso depende de {C:attention}#1#{}",
                    " ",
                    "{C:attention}Pasa el ratón/agarra{} la carta y {C:attention}pulsa{} la tecla",
                    "para usarla {C:inactive}(si se puede){}",
                },
            },
            keybinds_trigger_mode = {
                name = "Modo de activación de teclas",
            },
            me = {
                name = "¡Hola, soy yo! Te seguiré...",
                text = {
                    "Arte de {C:mult}#1#{}",
                },
            },
            me_in_game_over = {
                name = "...en la pantalla de derrota",
            },
            me_in_game_win = {
                name = "...en la pantalla de victoria",
            },
            me_in_mod_config = {
                name = "...en la configuración del mod",
            },
            me_in_screenswipe = {
                name = "...en la carta de transición",
            },
            misc = {
                name = "Varios",
            },
            move_highlight = {
                name = "Selección precisa",
                text = {
                    "Selección y movimiento precisos de cartas",
                },
                unlock = {
                    "Útil para gestionar cartas cuando hay",
                    "muchas en una misma zona",
                    " ",
                    "{C:attention}Selecciona{} una carta de la zona",
                    "y usa los controles indicados",
                },
            },
            move_highlight_one_left = {
                name = {
                    "Selección precisa: una a la izquierda",
                },
                unlock = {
                    "Puedes {C:attention}mantener{} esta tecla",
                    "para avanzar más rápido",
                },
            },
            move_highlight_one_right = {
                name = {
                    "Selección precisa: una a la derecha",
                },
                unlock = {
                    "Puedes {C:attention}mantener{} esta tecla",
                    "para avanzar más rápido",
                },
            },
            move_highlight_swap = {
                name = {
                    "Selección precisa: mover carta",
                },
                unlock = {
                    "{C:attention}Mientras la mantengas{}, se moverá",
                    "la propia carta en su lugar",
                },
            },
            move_highlight_to_end = {
                name = {
                    "Selección precisa: mover al extremo",
                },
                unlock = {
                    "Mientras la {C:attention}mantengas{}, en vez de mover la selección/carta",
                    "{C:attention}una a la izquierda/derecha{}, se moverá",
                    "al extremo {C:attention}izquierdo/derecho{} respectivamente",
                },
            },
            mp_extension = {
                name = {
                    "Extensión Multiplayer",
                },
                text = {
                    "Funciones específicas de Multiplayer",
                },
            },
            mp_extension_animation_skip_mode = {
                name = "Saltar animaciones: valor máximo de la sala",
            },
            mp_extension_animation_skip_mode_default_value = {
                name = "Saltar animaciones: valor máximo por defecto de la sala",
                unlock = {
                    "Al {C:attention}crear una sala{},",
                    "se usará este valor por defecto",
                },
            },
            mp_extension_current_lobby = {
                name = {
                    "Extensión MP: opciones de la sala actual",
                },
            },
            mp_extension_dangerous_actions_mode = {
                name = "Acciones peligrosas: modo de la sala",
                unlock = {
                    "Permite activar algunas {C:mult}acciones peligrosas{}",
                    "para vender en masa",
                },
            },
            mp_extension_dangerous_actions_mode_default_value = {
                name = "Acciones peligrosas: modo por defecto de la sala",
                unlock = {
                    "Al {C:attention}crear una sala{},",
                    "se usará este valor por defecto",
                },
            },
            mp_extension_default_values = {
                name = {
                    "Extensión MP: opciones por defecto de la sala",
                },
            },
            mp_extension_enabled = {
                name = "Permitir la extensión Multiplayer",
                unlock = {
                    "Al marcar esta casilla, {C:attention}TÚ{} permites que",
                    "la {C:mult}extensión Multiplayer{} se active en esta sala",
                    " ",
                    "Solo cuando {C:attention}TODOS{} los jugadores de la sala la tienen activada,",
                    "controles como {C:chips}#1#{} y {C:attention}#2#{}",
                    "pasan a estar disponibles para {C:attention}TODOS{} los jugadores",
                },
            },
            mp_extension_enabled_default_value = {
                name = "Permitir extensión MP: valor por defecto",
                unlock = {
                    "Al {C:attention}crear o unirte a una sala{},",
                    "se usará este valor por defecto",
                },
            },
            mp_extension_speed_multiplier_mode = {
                name = "Multiplicador de velocidad: valor máximo de la sala",
            },
            mp_extension_speed_multiplier_mode_default_value = {
                name = "Multiplicador de velocidad: valor máximo por defecto de la sala",
                unlock = {
                    "Al {C:attention}crear una sala{},",
                    "se usará este valor por defecto",
                },
            },
            notifications_level = {
                name = "Notificaciones",
            },
            presets = {
                name = "Configuraciones predefinidas",
                text = {
                    "Distribuciones de ajustes fáciles de alternar",
                },
            },
            presets_load_1 = {
                name = {
                    "Configuraciones: cargar la 1",
                },
            },
            presets_load_2 = {
                name = {
                    "Configuraciones: cargar la 2",
                },
            },
            presets_load_3 = {
                name = {
                    "Configuraciones: cargar la 3",
                },
            },
            presets_load_next = {
                name = {
                    "Configuraciones: cargar la siguiente",
                },
                text = {
                    "1 -> 2 -> 3 -> 1",
                },
                unlock = {
                    "Se salta las vacías o desactivadas",
                },
            },
            prevent_if_debugplus = {
                name = "DebugPlus: evitar conflictos",
                unlock = {
                    "No ejecuta ningún control mientras se mantiene {C:chips}#1#{}",
                    "para no chocar con los",
                    "controles de {C:attention}DebugPlus{}",
                    " ",
                    "Requiere que {C:attention}«CTRL para atajos»{} esté",
                    "activado en los ajustes del mod",
                    " ",
                    "Como efecto secundario, las teclas",
                    "con el botón {C:chips}#1#{} quedan {C:mult}inutilizables{}",
                },
            },
            regular_keybinds = {
                name = "Teclas normales y del juego original",
                text = {
                    "Todos los controles del juego base, y más",
                },
            },
            regular_keybinds_cash_out = {
                name = {
                    "Cobrar",
                },
                unlock = {
                    "{C:attention}Mantén{} la tecla para saltarte el cobro",
                    "en cuanto esté disponible",
                },
            },
            regular_keybinds_change_sort_rank = {
                name = {
                    "Ordenar mano por categoría",
                },
            },
            regular_keybinds_change_sort_suit = {
                name = {
                    "Ordenar mano por palo",
                },
            },
            regular_keybinds_collection = {
                name = {
                    "Colección",
                },
            },
            regular_keybinds_copy_log_file = {
                name = {
                    "Copiar el registro de Lovely",
                },
                unlock = {
                    "Por limitaciones técnicas, el registro",
                    "se copia {C:attention}como texto{}, no como archivo",
                },
            },
            regular_keybinds_discard = {
                name = {
                    "Descartar mano",
                },
            },
            regular_keybinds_group_blind_select = {
                name = "Selección de ciega",
            },
            regular_keybinds_group_game = {
                name = "Juego",
            },
            regular_keybinds_group_hand = {
                name = "Mano",
            },
            regular_keybinds_group_menus = {
                name = "Menús",
            },
            regular_keybinds_group_round = {
                name = "Ronda",
            },
            regular_keybinds_group_shop = {
                name = "Tienda",
            },
            regular_keybinds_group_swappable_menus = {
                name = "Menús de la partida",
                unlock = {
                    "Puedes pasar de un menú a otro",
                    "con las teclas",
                    "{C:attention}sin cerrarlos{} primero",
                },
            },
            regular_keybinds_leave_shop = {
                name = {
                    "Salir de la tienda",
                },
            },
            regular_keybinds_mod_settings = {
                name = {
                    "Handy: ajustes del mod",
                },
            },
            regular_keybinds_not_just_yet_interaction = {
                name = {
                    "NotJustYet: terminar ronda",
                },
            },
            regular_keybinds_options = {
                name = {
                    "Opciones",
                },
                text = {
                    "Igual que #1#",
                },
            },
            regular_keybinds_play = {
                name = {
                    "Jugar mano",
                },
            },
            regular_keybinds_quick_restart = {
                name = {
                    "Reiniciar partida al instante",
                },
                text = {
                    "#1# del juego original, pero instantáneo",
                },
                unlock = {
                    "También funciona en la pantalla de {C:attention}derrota{}",
                },
            },
            regular_keybinds_reload_run = {
                name = {
                    "Cargar partida",
                },
                text = {
                    "Menú principal -> Continuar partida",
                },
                unlock = {
                    "Simula salir al menú principal",
                    "y luego continuar la partida",
                    "{C:attention}sin animación{}",
                },
            },
            regular_keybinds_reroll_boss = {
                name = {
                    "Cambiar ciega jefe",
                },
            },
            regular_keybinds_reroll_shop = {
                name = {
                    "Cambiar tienda",
                },
            },
            regular_keybinds_restart = {
                name = {
                    "Reiniciar partida",
                },
                text = {
                    "#1# del juego original",
                },
            },
            regular_keybinds_restart_game = {
                name = "Reiniciar Balatro",
            },
            regular_keybinds_run_info = {
                name = {
                    "Información de la partida: manos de póker",
                },
            },
            regular_keybinds_run_info_blinds = {
                name = {
                    "Información de la partida: ciegas",
                },
            },
            regular_keybinds_run_info_vouchers = {
                name = {
                    "Información de la partida: vales",
                },
            },
            regular_keybinds_save_run = {
                name = {
                    "Guardar partida",
                },
                text = {
                    "Autoguardado, pero manual",
                },
                unlock = {
                    "El juego guarda la partida automáticamente tras algunas acciones",
                    "{C:inactive}(como jugar mano, descartar o cambiar la tienda){}",
                    " ",
                    "Esta tecla permite hacerlo manualmente",
                },
            },
            regular_keybinds_select_blind = {
                name = {
                    "Seleccionar ciega",
                },
            },
            regular_keybinds_show_deck_preview = {
                name = {
                    "Vista previa de la baraja",
                },
                text = {
                    "Igual que pasar el ratón sobre la baraja",
                },
            },
            regular_keybinds_skip_blind = {
                name = {
                    "Omitir ciega",
                },
            },
            regular_keybinds_skip_booster = {
                name = {
                    "Omitir paquete potenciador",
                },
                unlock = {
                    "{C:attention}Mantén{} la tecla para omitir el paquete potenciador",
                    "en cuanto esté disponible",
                    " ",
                    "{C:attention}Sigue manteniéndola{} para omitir varios",
                    "paquetes {C:attention}seguidos{}",
                },
            },
            regular_keybinds_start_fantoms_preview = {
                name = {
                    "Fantom's Preview: calcular puntuación",
                },
            },
            regular_keybinds_swappable_overlays_mode = {
                name = "Modo de menús de la partida",
            },
            regular_keybinds_toggle_sort = {
                name = {
                    "Cambiar orden de la mano",
                },
                text = {
                    "Palo > categoría > palo...",
                },
            },
            regular_keybinds_view_deck = {
                name = {
                    "Abrir baraja",
                },
            },
            regular_keybinds_view_lobby_info = {
                name = {
                    "Multiplayer: información de la sala",
                },
            },
            scoring_hold = {
                name = {
                    "Pausar puntuación",
                },
                unlock = {
                    "{C:attention}Mantén{} para pausar las animaciones de puntuación",
                    "{C:attention}antes{} de calcular la puntuación final de la mano",
                    " ",
                    "Útil para recolocar comodines antes de terminar la ronda",
                },
            },
            scoring_hold_any_moment = {
                name = {
                    "Pausar puntuación: en cualquier momento",
                },
                unlock = {
                    "{C:attention}Mantén{} para pausar las animaciones de puntuación",
                    "en {C:attention}cualquier momento{} de la puntuación",
                },
            },
            show_custom_pip = {
                name = "Mostrar teclas en los botones",
                unlock = {
                    "Muestra las teclas asignadas sobre",
                    "los botones que activan",
                    "{C:inactive}(jugar mano, descartar, información de la partida, cambiar, etc.){}",
                },
            },
            speed_multiplier = {
                name = "Multiplicador de velocidad",
                text = {
                    "Aumenta la velocidad del juego",
                },
                unlock = {
                    "Como su nombre indica, {C:attention}multiplica{} la velocidad del juego,",
                    "así que el valor por defecto siempre es {C:attention}1x{}",
                    " ",
                    "A partir de {C:attention}#1#{}, acelera",
                    "la {C:attention}cola de eventos{} para superar el límite",
                    "de 60 acciones por segundo",
                },
            },
            speed_multiplier_current_value = {
                name = "Multiplicador de velocidad: valor actual",
            },
            speed_multiplier_default_value = {
                name = "Multiplicador de velocidad: valor al iniciar el juego",
            },
            speed_multiplier_divide = {
                name = {
                    "Multiplicador de velocidad: reducir",
                },
            },
            speed_multiplier_load_value = {
                name = "Multiplicador de velocidad: conservar entre recargas",
                unlock = {
                    "Sustituye el valor al iniciar el juego",
                },
            },
            speed_multiplier_multiply = {
                name = {
                    "Multiplicador de velocidad: aumentar",
                },
            },
            speed_multiplier_settings_toggle = {
                name = "Multiplicador de velocidad: opción en ajustes",
                unlock = {
                    "Se coloca junto al ajuste original de {C:attention}velocidad del juego{}",
                },
            },
            speed_multiplier_toggle_temp_disabled = {
                name = {
                    "Multiplicador de velocidad: activar/desactivar",
                },
            },
            swap_controller_cursor_stick = {
                name = "Mando: cambiar el stick del cursor",
                unlock = {
                    "Por defecto, {C:chips}#1#{} activa",
                    "el cursor integrado del juego.",
                    " ",
                    "Este ajuste lo cambia a {C:chips}#2#{}",
                },
            },
            updater = {
                name = "Actualización automática del mod",
                text = {
                    "Sé que eres vago",
                },
            },
            updater_auto_install_new_update = {
                name = "Instalar automáticamente las actualizaciones",
                unlock = {
                    "La actualización se instalará al {C:attention}iniciar el juego{}",
                },
            },
            updater_auto_restart_game_after_update = {
                name = "Reiniciar el juego tras actualizar",
            },
            updater_notify_about_new_update = {
                name = "Avisar de nuevas actualizaciones",
                unlock = {
                    "Verás un aviso al {C:attention}iniciar el juego{}",
                },
            },
            updater_target_release_type = {
                name = "Tipo de versión",
            },
        },
        Handy_Other = {
            better_mouse_and_gamepad_in_hand_selection = {
                text = {
                    "{C:mult,s:1.5}Ups...{}",
                    " ",
                    "Parece que tienes instalado {C:attention}Better Mouse and Gamepad{}.",
                    "Tengo 2 noticias: una {C:mult}mala{} y una {C:green}buena{}.",
                    " ",
                    "La {C:mult}mala{} es que {C:attention}BMaG{} sustituye por completo la selección de mano de {C:chips}Handy{}",
                    "y rompe botones como",
                    "{C:chips}[rueda arriba/abajo]{}, {C:chips}[botón central]{}, {C:chips}[clic derecho]{} y más.",
                    " ",
                    "La {C:green}buena{} es que {C:chips}Handy{} incluye {C:inactive,s:0.75}casi{} todos sus controles,",
                    "así que puedes desinstalar {C:attention}BMaG{} sin perder nada.",
                    " ",
                    "O puedes seguir usando {C:attention}ambos mods{}; casi siempre irá bien.",
                    "{s:0.8}Aunque no me guste, ¿quién soy yo para decirte qué mods usar?{}",
                },
            },
            cant_use_in_mp = {
                text = {
                    "Este control está desactivado en {C:mult}Multiplayer{}",
                },
            },
            cant_use_with_gamepad = {
                text = {
                    "Este control está desactivado con {C:attention}mando{}",
                },
            },
            conflict_mods = {
                text = {
                    "Este control está inactivo por otros mods:",
                },
            },
            missing_deps = {
                text = {
                    "Este control está inactivo hasta que se activen",
                    "los controles indicados:",
                },
            },
            missing_req_mods = {
                text = {
                    "Este control necesita otros mods para funcionar:",
                },
            },
            mp_extension_empty = {
                text = {
                    "Instala {C:mult}Multiplayer{} para ver",
                    "ajustes adicionales aquí",
                    "{C:inactive}Las funciones de la 1.0 están en desarrollo{}",
                },
            },
            mp_lobby_require_all_hint = {
                text = {
                    "Los ajustes de sala indicados solo tienen efecto si",
                    "{C:attention}TODOS{} los miembros tienen instalado {C:chips}Handy v2.0{} o superior",
                },
            },
            overall_title = {
                text = {
                    "- Desliza para seleccionar cartas",
                    "- Atajos de teclado en partida",
                    "- Más velocidad de juego",
                    "- Quitar animaciones",
                    "- Compatible con mando",
                    " ",
                    "- Los controles se pueden asignar a {C:chips}cualquier combinación{}",
                    "  de teclado, ratón o mando",
                    "  y activar/desactivar en {C:chips}cualquier momento{}",
                    "  sin reiniciar el juego ni recargar la partida",
                    "- {C:chips}No{} desactiva los logros",
                },
            },
        },
        Handy_Preset = {
            full_default = {
                name = "Restablecer por defecto",
                text = {
                    "Restablece toda la configuración por defecto",
                },
            },
        },
    },
    misc = {
        dictionary = {
            b_handy_install = "Instalar",
            b_handy_mp_extension = "Extensión Multiplayer",
            b_handy_open_github = "Abrir en GitHub",
            b_handy_restart_game = "Reiniciar juego",
            handy_advanced_mode = "Modo avanzado",
            handy_advanced_mode_description = "Más control e información",
            handy_buy_sell_use_mode_hold_n_click = "Mantener tecla + clic en carta",
            handy_buy_sell_use_mode_hover_n_press = "Pasar ratón o agarrar carta + pulsar tecla",
            handy_current_device_auto = "Automático",
            handy_current_device_gamepad = "Mando",
            handy_current_device_keyboard = "Ratón + teclado",
            handy_dangerous_actions_mass_sell_remove_mode = {
                "Afecta a todas las cartas",
                "Afecta a todas salvo la elegida",
            },
            handy_disabled = "Desactivado",
            handy_example_state_panel = "Aquí aparecen varios avisos",
            handy_gamepad_2step_adjust = "para ajustar",
            handy_gamepad_2step_deselect = "para deseleccionar",
            handy_gamepad_2step_select = "para seleccionar",
            handy_keybinds_trigger_mode_press = "Al pulsar la tecla",
            handy_keybinds_trigger_mode_release = "Al soltar la tecla",
            handy_mod_disabled = "Mod desactivado",
            handy_mod_enabled = "Mod activado",
            handy_modals_move_highlight_preview_description = "Usa la vista previa para probar los controles",
            handy_modals_preview_description = "Usa la vista previa para ver el efecto de los ajustes",
            handy_modals_start_calculation = {
                "Iniciar",
                "cálculo",
            },
            handy_modals_stop_calculation = {
                "Detener",
                "cálculo",
            },
            handy_mp_animation_skip_mode = "Saltar animaciones: valor máximo de la sala",
            handy_mp_dangerous_actions_mode = "Acciones peligrosas: modo de la sala",
            handy_mp_dangerous_actions_modes = {
                "Desactivado",
                "Venta masiva",
                "Venta y eliminación masivas",
            },
            handy_mp_extension_status_disabled = "La extensión Multiplayer está DESACTIVADA por TI en esta sala",
            handy_mp_extension_status_disabled_by_other_player = "La extensión Multiplayer está DESACTIVADA por OTROS jugadores en esta sala",
            handy_mp_extension_status_disabled_by_ruleset = "La extensión Multiplayer está DESACTIVADA por las REGLAS en esta sala",
            handy_mp_extension_status_enabled = "La extensión Multiplayer está ACTIVADA en esta sala",
            handy_mp_extension_status_not_initialized = "La extensión Multiplayer NO ESTÁ CARGADA en esta sala",
            handy_mp_speed_multiplier_mode = "Multiplicador de velocidad: valor máximo de la sala",
            handy_notification_level_all = "Todas",
            handy_notification_level_dangerous = "Solo peligrosas",
            handy_notification_level_essential = "Esenciales",
            handy_notification_level_none = "Ninguna",
            handy_regular_keybinds_swappable_overlays_mode = {
                "Pulsar para abrir",
                "Pulsar para abrir",
                "Pulsar otra vez para cerrar",
                "Mantener para abrir",
                "Soltar para cerrar",
            },
            handy_release_type_pre_release = "Versión previa",
            handy_release_type_stable = "Estable",
            handy_show_custom_pip_mode = {
                "Ninguno",
                "Solo con mando",
                "Siempre",
            },
            handy_smods_compat_mode = "Modo compatible: cargar desde .zip requiere un SMODS actualizado",
            handy_updater_no_release_found = "No se han encontrado datos de la versión",
            handy_updater_status_already_installed = "Instalado: reinicia el juego",
            handy_updater_status_busy = "Espera, por favor...",
            handy_updater_status_current_version = "Versión actual",
            handy_updater_status_new_version_available = "Nueva versión disponible",
            handy_updater_status_no_data = "Sin datos de la versión",
            handy_updater_status_ready_for_installation = "Lista para instalar",
            k_handy_preview_buy = "Comprar",
            k_handy_preview_buy_n_sell = "Comprar y vender",
            k_handy_preview_buy_n_use = "Comprar y usar",
            k_handy_preview_remove = "ELIMINAR",
            k_handy_preview_sell = "Vender",
            k_handy_preview_use = "Usar",
            ph_handy_dangerous_actions_remove_all = "Eliminar TODO",
            ph_handy_dangerous_actions_remove_all_same = "Eliminar todas las iguales",
            ph_handy_dangerous_actions_remove_one = "Eliminar una",
            ph_handy_dangerous_actions_sell_all = "Vender TODO",
            ph_handy_dangerous_actions_sell_all_same = "Vender todas las iguales",
            ph_handy_dangerous_actions_sell_one = "Vender una",
            ph_handy_notif_reload_item_prototypes = "Depuración: prototipos de objetos recargados",
            ph_handy_notif_reload_localization = "Depuración: idioma recargado",
        },
        handy_tabs = {
            Animations = "Animaciones",
            Debug = "Desarrollo",
            ["Fast hand selection"] = "Selección de mano",
            Game = "Juego",
            General = "General",
            ["Hand & Round"] = "Mano/ronda",
            ["Highlight movement"] = "Selección precisa",
            Hold = "Mantener",
            ["MP Extension"] = "Multiplayer",
            Menus = "Menús",
            Misc = "Varios",
            Overall = "General",
            ["Quick buy/sell/use"] = "Comprar, vender y usar",
            Round = "Ronda",
            ["Shop & Blind Select"] = "Tienda/ciegas",
            Speed = "Velocidad",
            ["Speed & Animations"] = "Velocidad y animaciones",
            Thunderstore = "Thunderstore",
            Updater = "Actualizaciones",
            ["Updater Settings"] = "Ajustes",
            ["Vanilla keybinds"] = "Teclas",
        },
        v_dictionary = {
            Handy_binding_cancel_reason_multiple_no_hold = "La combinación no puede tener varias teclas que no se puedan mantener",
            Handy_binding_cancel_reason_no_hold = "No se puede asignar #1# aquí porque no se puede mantener",
            Handy_binding_cancel_reason_no_safe = "No se puede asignar #1# aquí para evitar bloqueos",
            Handy_binding_canceled = "Asignación cancelada",
            Handy_binding_esc_hint = "Pulsa #1# para guardar",
            Handy_binding_finished = "Asignación terminada: #1#",
            Handy_binding_guide = "Pulsa teclas para añadirlas a la combinación",
            Handy_binding_progress = "Asignando: #1#",
            Handy_disabled_in_mp = "[desactivado por Multiplayer]",
            Handy_load_run_done = "Partida cargada",
            Handy_load_run_nothing_to_load = "No hay partida que cargar",
            Handy_log_file_copied = "Registro de Lovely copiado al portapapeles",
            Handy_new_pre_release_available = "Nueva versión previa disponible",
            Handy_new_release_description = "Ve a los ajustes del mod para ver detalles y descargarla",
            Handy_new_stable_available = "Nueva versión estable disponible",
            Handy_preset_example_loaded = "Configuración predefinida [#1#] cargada",
            Handy_preset_saved = "Configuración #1# [#2#] guardada",
            Handy_prevented_by_debugplus = "Bloqueado por DebugPlus",
            Handy_reload_run_done = "Partida recargada",
            Handy_reload_run_nothing_to_load = "No hay partida que recargar",
            Handy_scoring_hold_hand_score = "Puntuación de la mano: [#1#]",
            Handy_temp_disabled = "[desactivado]",
            Handy_updater_auto_restart = "Reiniciando el juego para aplicar los cambios...",
            Handy_updater_finish_cannot_move_files = "No se pueden instalar los archivos de la versión",
            Handy_updater_finish_cannot_unzip = "No se pueden extraer los archivos de la versión",
            Handy_updater_finish_cannot_write_zip = "No se pueden guardar los archivos de la versión",
            Handy_updater_finish_check_request_failed = "No se pueden comprobar las versiones disponibles",
            Handy_updater_finish_description = "Reinicia el juego para aplicar los cambios",
            Handy_updater_finish_download_request_failed = "No se puede descargar la versión",
            Handy_updater_finish_fetcher_error = "Error inesperado",
            Handy_updater_finish_invalid_server_response = "Respuesta del servidor no válida",
            Handy_updater_finish_no_connection = "Sin conexión a internet",
            Handy_updater_finish_no_data_to_replace = "No hay archivos de la versión que instalar",
            Handy_updater_finish_no_fetcher = "No hay ninguna API disponible para las peticiones",
            Handy_updater_finish_no_release = "No se ha encontrado ninguna versión",
            Handy_updater_finish_success = "Versión instalada correctamente",
            Handy_updater_progress_downloading_release = "Descargando versión...",
            Handy_updater_progress_getting_releases = "Obteniendo versiones...",
            Handy_updater_progress_installing_files = "Instalando versión...",
            Handy_updater_progress_unzipping_archive = "Descomprimiendo versión...",
            Handy_version_by = "v#1# de #2#",
        },
    },
}
