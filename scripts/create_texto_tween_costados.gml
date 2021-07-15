///create_texto_tween_costados(x_objetivo, y_objetivo, escala_texto, string: texto, int: dir [0<=dir<=2], boolean: borde, tiempo_salir )

/*

    Desc: 
        Crea un texto con efecto blur que aparece desde los bordes de la pantalla al (x,y) objetivo. Si el tiempo que se recibe es cero, se queda.
    

        dir:
            0 = random
            1 = izquierda
            2 = derecha
        
    Return: nada
    
*/

with( instance_create(argument0, argument1, ob_texto_tween_costados) ){


    mi_tamanio_texto = argument2;
    str_texto = argument3;
    
    temp_cartel_mitad =  string_width(str_texto) * mi_tamanio_texto;

    switch( argument4 ){
    
        case 0:{ x = choose(g_view_x - temp_cartel_mitad, g_view_x + g_view_ancho + temp_cartel_mitad ); break; }
        case 1:{ x = (g_view_x - temp_cartel_mitad); break; }
        case 2:{ x = (g_view_x + g_view_ancho + temp_cartel_mitad ); break; }
    
    }
    
    if( sign(x) > 0){ mi_blur_angulo = 0; }
    else{ mi_blur_angulo = 180; }

    
    mi_con_borde = argument5;
    
    if( argument6 != 0 ){ alarm[0] = argument6; }
        
    mi_tween = tween_fromto(self, 0.2,   array("xscale", 0.5, "yscale", 0 ),
                                array("x", xstart, "y", ystart, "xscale", mi_tamanio_texto, "yscale", mi_tamanio_texto, "ease", ease_linear, "oncomplete", "user0", "onreversecomplete", "user1")
                                        
                    );

}
