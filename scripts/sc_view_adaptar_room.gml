///sc_view_adaptar_room(bool: set_background_colour)

/*

    Desc: 
        Llamado desde sc_pantalla_escalar, hace que todos los rooms del juego tengan el mismo escalado. En casos especiales (que 
    en alguna room se siga a algún jugador) se debería cambiar por un swtich preguntando el ID del room especifico (sino caería
    todo en default).
    
    Return: nada

    NOTA: El argumento es propio de este juego (no necesariamente estaria en otros casos) por un tema de optimización
*/

var i = true;
var temp_rm = room_first;

while(i == true){

    //Nota: Aqui deberia agregarse un switch contemplando el caso especial de temp_rm
    
    room_set_view(temp_rm, 0, true, view_xview[0], view_yview[0], view_wview[0], view_hview[0], 0, 0, view_wport[0], view_hport[0], 0, 0, -1, -1, -1);
    
    room_set_background_colour(temp_rm, c_black, argument0); //NOTA: Propio para este juego
    
    room_set_view_enabled(temp_rm, true);
    
    if( temp_rm == room_last ){ i = false; }
    else{ temp_rm = room_next(temp_rm); }
    
}
