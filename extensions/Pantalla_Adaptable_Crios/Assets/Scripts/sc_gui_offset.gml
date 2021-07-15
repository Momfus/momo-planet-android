///sc_gui_offset(app_sur_ancho, app_sur_alto, offset_x, offset_y)

/*

    Desc:
    
        Redimensiones la capa de GUI segun el application surface y arregla los valores relativos guardados en variables globales
    de la ubicación de los elementos de la GUI
    
        Nota: Las variables globales se referencias a unos macros pre-establecidos en el proyecto
    
    Return: nada

*/

var app_sur_ancho = argument0,
    app_sur_alto = argument1,
    offset_x = argument2,
    offset_y = argument3;
    
display_set_gui_size(app_sur_ancho, app_sur_alto);

//>>> Arreglos de la coordenadas iniciales (x,y) de la capa GUI y su ancho y largo relativo. Esto sucede cuando el aspect ratio no coincide (superando el tamaño del room)

//"X" y ancho
if( app_sur_ancho < room_width ){

    g_gui_x = 0;
    g_gui_ancho = app_sur_ancho;

}
else{

    var xx = abs(offset_x);
    g_gui_x = xx;
    g_gui_ancho = app_sur_ancho - xx;

}

//"Y" y ancho
if( app_sur_alto < room_height ){

    g_gui_y = 0;
    g_gui_alto = app_sur_alto;

}
else{

    var yy = abs(offset_y);
    g_gui_y = yy;
    g_gui_alto = app_sur_alto - yy;

}
