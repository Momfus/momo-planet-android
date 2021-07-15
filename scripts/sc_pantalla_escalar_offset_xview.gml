///sc_pantalla_escalar_offset_xview(view_ancho_anterior, view_ancho_nuevo)

var view_ancho_viejo = argument0,
    view_ancho_nuevo = argument1,
    offset_xview = ( abs( view_ancho_nuevo - view_ancho_viejo ) / 2 );


///A mayor pantalla mover a la izquierda
if( view_ancho_nuevo > view_ancho_viejo ){

    return -offset_xview;
}
else{

    // A menor pantalla mueve a la derecha
    return offset_xview;
}
