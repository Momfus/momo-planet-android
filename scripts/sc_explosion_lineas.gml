///sc_explosion_lineas(x, y, segundos:tiempo, explosion_ancho, explosion_alto, lineas_cantidad, lineas_ancho, color, depth, boolean: invertido)


/*

    Desc:
        Se crea una explosion de lineas en forma de estrella
        
    Return: nada


*/
var temp_x = argument0,
    temp_y = argument1,
    temp_tiempo = argument2,
    temp_exp_ancho = argument3,
    temp_exp_alto = argument4,
    temp_lineas_cantidad = argument5,
    temp_lineas_ancho = argument6,
    temp_color = argument7,
    temp_depth = argument8,
    temp_invertido = argument9;
    
with( instance_create(temp_x, temp_y, ob_lineas_explosion) ){

    mi_explosion_ancho = temp_exp_ancho;
    mi_explosion_alto = temp_exp_alto;
    
    mi_lineas_cantidad = temp_lineas_cantidad;
    mi_radio = temp_lineas_ancho;

    mi_color = temp_color;
    depth = temp_depth;

    if( temp_invertido == false ){
    
        mi_tween = tween_to(self, temp_tiempo, array( "alpha", 0, "mi_radio", 0, "ease", ease_linear, "oncomplete", "user0" ));
    
    }
    else{
    
        mi_tween = tween_fromto(self, temp_tiempo,  array( "alpha", 0, "mi_radio", 0 ),
                                                    array( "alpha", 0.8, "mi_radio", temp_lineas_ancho, "ease", ease_linear, "oncomplete", "user0" )
                                );
    
    }
    
}
