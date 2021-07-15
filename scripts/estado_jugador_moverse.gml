///estado_jugador_moverse()

/*

 @Descripción:

    Estado en el que jugador se está moviéndo normalmente sobre el planeta y salta   
    
 @Return:
    void

*/

//Controla si está sobre un suelo o en el aire
if( sobre_suelo == false ){

    //La velocidad de caida es más rápida
    if( vel_vertical > 0 ){ vel_vertical += GRAVEDAD+1; }
    else{ vel_vertical += GRAVEDAD; }
    
    //Manejo del sprite del jugador en el aire
    sprite_index = sprite_saltar;
    mi_estado_draw = estado_jugador_draw_salta;
}
else{

    vel_vertical = 0;
    
    //Manejo del sprite
    sprite_index = sprite_moverse
    image_speed = 0.25;
    mi_estado_draw = estado_jugador_draw_moverse;
    
    
    //<< SALTAR >> (tocar la pantalla)
    if( control_input.tap_simple == true ){
    
        sc_sonido_jugador_salto();
    
        y += velocidad_salto; //Hace la reacción más rápida
        vel_vertical = velocidad_salto;
        sobre_suelo = false;
        
        activar_colision = true;
        alarm[1] = 1;
        
        //Efecto visual de apriete
        draw_xscale = 0.75 * mi_dir;
        draw_yscale = 1.5;
        
        //Manejo del sprite
        sprite_index = sprite_saltar;
        image_index = 0;
        image_speed = 0.5;
        mi_estado_draw = estado_jugador_draw_salta;
        
    }
    
}



//Se hace todo lo relacionado con moverse y detección de colisión
if( activar_gravedad == true ){ 

    sc_jugador_gravedad();
    if( activar_colision == true ){ sc_jugador_colision_general(); }
    
}



