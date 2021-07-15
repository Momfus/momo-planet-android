/// playerprefs_add_list(key, list, value);
/*
    A una lista existente en la key recibida, se le agrega el valor señalado
        
        
*/

playerprefs_get_instance();
global._playerprefs_changes = true;



if( ds_map_exists(global._playerprefs_map, argument0) ){

    var temp_list = ds_list_create();
    
    ds_list_copy( temp_list, playerprefs_get(argument0));
    
    ds_list_insert(temp_list, 0, argument2);
    ds_list_insert(argument1, 0, argument2);
    
    ds_list_copy( playerprefs_get(argument0), temp_list);

    ds_list_destroy(temp_list);

}
else{

    ds_map_add_list(global._playerprefs_map, argument0, ds_list_create() );
    ds_list_copy( playerprefs_get(argument0), argument1);
    
}

