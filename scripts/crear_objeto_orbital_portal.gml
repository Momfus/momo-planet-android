///crear_objeto_orbital_portal( int: cantidad_vueltar_crearlo, int: numero_orbita)

/*

    @Descripción:
        Se crea el portal desde el timeline pero solo aparece recién cuando se cumple la cantidad de vueltas señaladas desde que se indicó
        
        El segundo valor es la orbita que se desea (ver sc_armar_arreglo_mov_orbital para saber cuales hay).
       
        El timeline es propio delo contro_generador, asi que la referencia a variables de instancia y alarmas son de ese objeto.
                                   
    @Return: 
        double: tiempo en steps que tarda en terminar de dar las cantidad de vueltas necesarias.

*/
var temp_orbita = argument1,
    temp_tiempo_vuelta = abs(360/g_pta_vel), 
    temp_shader_tiempo_duracion = (temp_tiempo_vuelta / 30), //Una vuelta para volverse todo gris el planeta, la segunda es cuando aumenta el brillo para explotar (y ahi game over)
    temp_tiempo_crear_portal = temp_tiempo_vuelta * argument0;
    

control_generador.portal_orbita_auxiliar = temp_orbita; //Para saber en que órbita crear el portal cuando se llame a la alarma


if( temp_tiempo_crear_portal > 0 ){ 
    alarm[0] = temp_tiempo_crear_portal; 
}
else{ event_perform(ev_alarm, 0); }

//Saber cuanto tiempo debe ir aumentado el efecto de absorver color en el planeta
ob_planeta.mi_tween_shader = tween_fromto(ob_planeta, temp_shader_tiempo_duracion, 

                                array("delay", (temp_tiempo_crear_portal / 30 ),"mi_shader_radio_actual", 15, "ease", ease_linear, "oncomplete", "user0"),
                                array("mi_shader_radio_actual", g_pta_radio)
    
);
