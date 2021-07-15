///sc_jugador_morir(bool:explota_nivel)


/*
    Desc:
        Reliza los cambios necesario para hacer la animacione al morir y cambia el estado del jugador.
        Se toma dos consideraciones diferentes si el jugador muere porque el nivel explota (se pasa dos veces el portal) o 
    por algún obstáculo
    
    Return: nada


*/

var temp_explota_nivel = argument0;

sc_sonido_jugador_muere();

//Cambios de estados y sprite

    mi_parpadeo = false;
    alarm[2] = -1; //Cancelar efecto parpadeo para que nos iga cambiando

    mi_estado = estado_jugador_muerto;
    
    sc_estado_cambiar_otro(ob_planeta, estado_planeta_quieto);
    sc_estado_cambiar_otro(parent_obstaculo_danio, estado_obstaculo_quieto);
    sc_estado_cambiar_otro(parent_obstaculo_plataforma, estado_obstaculo_quieto);    
    sc_estado_cambiar_otro(parent_recogibles, estado_obstaculo_quieto);    

    
    
    sprite_index = sprite_muerto;
    image_index = 0;
    image_speed = 0.5;
    mi_estado_draw = estado_jugador_draw_muerto;

//Detención de tweeen necesarios
tween_pause(ob_planeta.mi_tween_shader);

//Se detiene cualquier efecto temblor que hubiera, ademas de resetear dificultad
with(control_nivel){ 
    

    //Detener temblor
    if( alarm[2] != -1 ){ alarm[2] = -1; }
    else{ instance_destroy_other(ob_efecto_temblor); }
    
    //Reiniciar dificultad
    nivel_cantidad_dificultad_hechos = 0;
    nivel_dificultad = "facil";
    sc_nivel_armar_lista_niveles(nivel_dificultad);
    
}
       
//Detener efecto de explosión de planeta
with(ob_planeta){ alarm[0] = -1; } 

//Animación y calcular tiempo para mostrar información de game over
var tiempo = sc_jugador_animacion_muerte();

//Manejo del puntaje que junto en ese nivel y manejo del actual y total.
sc_puntaje_trasladar(true)

   
//Otros

    //Se detiene el timeline por si aún se estaban generando objetos y la alarma de creación de portal
    with(control_generador){ 
        timeline_running = false;
        timeline_position = 0;
        
        alarm[0] = -1;
        
    } 
        
    //Se muestra información de game over
    if( temp_explota_nivel == false ){ 
        sc_efecto_temblor(25, 0.20); 
        with(control_nivel){ alarm[1] = room_speed * ( tiempo + 0.4); }     
    }
    

