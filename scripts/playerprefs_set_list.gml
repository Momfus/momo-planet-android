/// playerprefs_set_list(key, value);
/*
    Sets the value of the preference identified by key.
    Example: 
    
        playerprefs_set("list_items", my_ds_list_items);
        
        
*/

playerprefs_get_instance();
global._playerprefs_changes = true;


if( ds_map_exists(global._playerprefs_map, argument0) ){

    ds_list_copy( playerprefs_get(argument0), argument1);


}
else{

    ds_map_add_list(global._playerprefs_map, argument0, ds_list_create() );
    ds_list_copy( playerprefs_get(argument0), argument1);
    
}

