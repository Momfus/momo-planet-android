///sc_jugador_sprite_elegir()

/*

 @Descripción:

     Setea los sprites que usará el jugador en sus diferentes estados

 @return: 
    void

*/
var temp_id = undefined;

//Controlar primero si la lista de skins no esta vacia, en caso de estarlo se vuelve a obtener y mezclar
if( ds_list_empty(g_lista_skins_desbloqueados ) ){

    sc_cargar_lista_skins();
    ds_list_shuffle(g_lista_skins_desbloqueados);

}

//Cargar el primer elemento de la lista y sacarlo
temp_id = ds_list_find_value(g_lista_skins_desbloqueados, 0);
ds_list_delete(g_lista_skins_desbloqueados, 0);

//Asignar sprite
sprite_moverse = asset_get_index("sp_momo_moverse_" + temp_id );
sprite_saltar = asset_get_index("sp_momo_saltar_" + temp_id );
sprite_aparece = asset_get_index("sp_momo_aparece_" + temp_id);
sprite_muerto = asset_get_index("sp_momo_muerto_" + temp_id);


