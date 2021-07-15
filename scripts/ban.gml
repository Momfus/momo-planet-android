///sc_jugador_sprite_elegir()

/*

 @Descripción:

     Setea los sprites que usará el jugador en sus diferentes estados

 @return: 
    void

*/
var temp_id = string(0);

//Controlar primero si la lista de skins no esta vacia, en caso de estarlo se vuelve a crear.
//if( ds_list_empty(g_


//Asignar sprite
sprite_moverse = asset_get_index("sp_momo_moverse_" + temp_id );
sprite_saltar = asset_get_index("sp_momo_saltar_" + temp_id );
sprite_aparece = asset_get_index("sp_momo_aparece_" + temp_id);
sprite_muerto = asset_get_index("sp_momo_muerto_" + temp_id);


