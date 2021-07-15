///sc_nivel_cambiar_fondo()

/*
    @Descripción:
        Se cambia el background del fondo de nivel de forma aleatoria

    @return:
        void


*/
temp_bg = asset_get_index( "bg_espacio_" + string( irandom(2) ) ); 



background_index[0] = temp_bg;
