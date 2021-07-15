///sc_pantalla_escalar_offset_yview(view_alto_anterior, view_alto_nuevom)

var view_alto_viejo = argument0,
    view_alto_nuevo = argument1,
    offset_yview = ( abs( view_alto_nuevo - view_alto_viejo ) / 2 );


///A mayor pantalla mover a la izquierda
if( view_alto_nuevo > view_alto_viejo ){

    return -offset_yview;
}
else{

    // A menor pantalla mueve a la derecha
    return offset_yview;    

}
