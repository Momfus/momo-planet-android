///sc_obtener_timeline_nivel(string:dificultad, int:num_nivel)

/*

    @Descripción:
        Se devuelve el time_line del nivel de la dificultad y número señalado 
                                      
    @Return: 
        Index de timeline a usar

*/

//Código del script

return asset_get_index( "time_nivel_" + argument0 + "_" + string(argument1) );

