///sc_nivel_siguiente()

/*

    @Descripción:
        Al entrar al portal, se realiza las animaciones y los cambios de estados necesarios para pasar al siguiente nivel

    @return:
        void

*/

sc_sonido_portal_entrar();

//Manejo del puntaje que junto en ese nivel y manejo del actual y total.
sc_puntaje_trasladar(false)


//Detener al jugador y objetos que giran
sc_estado_cambiar_otro(ob_jugador, estado_jugador_ocioso );
sc_estado_cambiar_otro(parent_obstaculo_danio, estado_obstaculo_quieto );
sc_estado_cambiar_otro(parent_obstaculo_plataforma, estado_obstaculo_quieto);
sc_estado_cambiar_otro(ob_planeta, estado_planeta_quieto);
sc_estado_cambiar_otro(parent_recogibles, estado_recogible_quieto);

//Timelines a detener
with( control_generador ){ timeline_running = false; }

//Tweens a detener
tween_pause(ob_planeta.mi_tween_shader);

//Se detiene cualquier efecto temblor que hubiera
with(control_nivel){ 
    
    if( alarm[2] != -1 ){ alarm[2] = -1; }
    else{ instance_destroy_other(ob_efecto_temblor); }
    
}

//Cambios en el jugador
with(ob_jugador){

    vel_vertical = 0;

    sprite_index = sprite_aparece;

}

//Pasar al siguiente nivel teniendo en cuenta el avance
instance_create(0, 0, transicion_siguiente_nivel);



