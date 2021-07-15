///sc_nivel_explota()

/*

    @Descripción:
        Se paso dos veces el portal y se hace un efecto que explota todo (y el jugador pierde)
                                      
    @return: 
        void

*/

//Denter todo primero
with(ob_jugador){ sc_jugador_morir(true); }

//Crear el efecto de flash y el que controla los sucesos luego
instance_create(0, 0, ob_nivel_explota);
