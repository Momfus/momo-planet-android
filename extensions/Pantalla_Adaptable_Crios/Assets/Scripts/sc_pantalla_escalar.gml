///sc_pantalla_escalar()

/*

    Este script ajusta el view y application surface con la misma proporción que el tamaño de la ventana.
    
    NOTA: Este código ha sido probado para pantallas verticales 16:9

*/

var viejo_wview = view_wview[0],
    viejo_hview = view_hview[0];


//Se obtiene el tamaño actual de la ventana, siendo minimo 1 para no causar error si se minimiza mucho hasta llegar a ser cero (segun OS)
if( sc_is_pc() ){
    actual_ancho = max(1, window_get_width() );
    actual_alto = max(1, window_get_height() );
}
else{
    actual_ancho = max(1, display_get_width() );
    actual_alto = max(1, display_get_height() );
}


var aspect_ratio = actual_ancho / actual_alto; //De esta manera se obtiene el "aspect aspect_ratio" del juego, el cual luego se usa para multiplicar o dividir (segun el caso) para escalar correctamente en pantalla  las disposiciones que se necesiten

//Se verifica si el ancho de la ventana es menor que el alto, de esta manera se hacen correciones para que se mantengan las proporciones.
//En dispositivos, si actual_ancho > actual_alto => el dispositivo esta en horizontal, caso contrario vertical
if( actual_ancho <= actual_alto ){

    view_hview[0] = median(min_alto, actual_alto, room_height);
    view_wview[0] = round(view_hview[0] * aspect_ratio);

}
else{

    // NOTA: Para pantalla horizontal, no aseguro que funcione en todos los casos
    view_wview[0] = median( min_ancho, actual_ancho, room_width );
    view_hview[0] = round( view_wview[0]/ aspect_ratio);

}

//El viewport se coloca igual que el tamaño de ventana para respetar las proporciones.
view_wport[0] = actual_ancho;
view_hport[0] = actual_alto;

//Acomodar por lo nuevos valores el view del juego
var xview_offset = sc_pantalla_escalar_offset_xview(viejo_wview, view_wview[0]),
    yview_offset = sc_pantalla_escalar_offset_yview(viejo_hview, view_hview[0]);

view_xview[0] += xview_offset;
view_yview[0] += yview_offset;

//Se redimensiona la apllication surface segun el tamaño de la vista que tenemos
surface_resize(application_surface, view_wview[0], view_hview[0] )

//Redimensionar la capa de GUI y setear las posiciones relativas de la misma para que sean dentro del room del juego
sc_gui_offset(view_wview[0], view_hview[0], view_xview[0], view_yview[0]);

