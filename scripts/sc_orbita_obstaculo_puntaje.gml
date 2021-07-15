///sc_orbita_obstaculo_puntaje()
/*

    Para controlar cuando el obstaculo pasa por debajo del jugador y suma un punto
    
*/

if( g_pta_vel_dir > 0 ){

    if( mi_planeta_ang >= 450 ){ 
    
        mi_planeta_ang = (mi_planeta_ang - 360); // mi_planeta_ang - 450 + 90
        
        //Doble puntaje si el planeta está por explotar
        if( ob_planeta.mi_estado_draw != estado_planeta_draw_con_shader_brillo_multiplicador ){ 
            sc_puntaje_cambiar(1, true, true);
        }
        else{
            sc_puntaje_cambiar(2, true, true);
        }
       
    }

}
else{

    if( mi_planeta_ang <= 90 ){ 
    
        mi_planeta_ang = (mi_planeta_ang + 360); // mi_planeta_ang + 270 + 90
       
        //Doble puntaje si el planeta está por explotar
        if( ob_planeta.mi_estado_draw != estado_planeta_draw_con_shader_brillo_multiplicador ){ 
            sc_puntaje_cambiar(1, true, true);
        }
        else{
            sc_puntaje_cambiar(2, true, true);
        }
       
    }

}
