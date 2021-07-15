///estado_jugador_draw_salta()

/*

 @Descripción:

    Manejo de la animación cuando el jugador salta
    
 @Return:
    void

*/
if( vel_vertical > 0 ){

    draw_sprite_ext(sprite_saltar, 2, x, y, draw_xscale, draw_yscale, image_angle, image_blend, image_alpha);
    
}
else{

    if( image_index < 1 ){ draw_sprite_ext(sprite_saltar, image_index, x, y, draw_xscale, draw_yscale, image_angle, image_blend, image_alpha); }
    else{ 
    
        image_speed = 0; 
        draw_sprite_ext(sprite_saltar, 1, x, y, draw_xscale, draw_yscale, image_angle, image_blend, image_alpha); 
        
    }

}

