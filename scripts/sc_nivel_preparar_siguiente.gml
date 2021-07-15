///sc_nivel_preparar_siguiente()

/*

    @Descripción:
        Se setea lo necesario al pasar al siguiente nivel

    @return:
        void

*/


//Destruir todos los recogibles, obstáculos y otros objetos que no se usarán más
sc_nivel_destruir_planeta(true);


//Cambios en el planeta
with(ob_planeta){
    

    planeta_vel_rotacion = choose(2, -2);
    
    mi_estado = estado_planeta_moverse;
    
    //Manejo del shader
    mi_estado_draw = estado_planeta_draw_sin_shader;
    mi_shader_radio_actual = 0;
    mi_shader_mul_brillo = 1.0;

}

//Seleccionar el nivel que se va a estar
sc_nivel_seleccionar(false);


//Terminar la transición para mostrar el nivel
with(transicion_siguiente_nivel){ event_perform(ev_other, ev_user1); }

