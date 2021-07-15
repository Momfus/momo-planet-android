///sc_cargar_lista_skins()

/*

    Desc:

        Carga el arreglo de skins existente y lo almacena en la lista creada, en caso que no exista 
    se crea con el skin basico y se guarda en la lista global.
    
        Esta lista guarda los index a tener en cuenta para usarse.
        
        Las referencias usadas son números que siendo "0" el básico y lo demas segun el "id" de json que tienen en
    la tienda.
            

    Return: 
        void

*/

//Comprobar primero si esta creada la lista
if not ( ds_exists(g_lista_skins_desbloqueados, ds_type_list) ){
     g_lista_skins_desbloqueados = ds_list_create();
}


//Verifica si se ha grabado alguna primero (caso negativo la crea) y lo almacena en la variable global
if( playerprefs_has("lista_skins_desbloqueados") ){
    
    //Copiar por valor la lista
    ds_list_copy(g_lista_skins_desbloqueados, playerprefs_get("lista_skins_desbloqueados"));

}
else{
 
    //Crear la lista y guardarla con el elemento minimo   
    ds_list_add(g_lista_skins_desbloqueados, "0" );
    
    playerprefs_set_list("lista_skins_desbloqueados", g_lista_skins_desbloqueados);
    
}


