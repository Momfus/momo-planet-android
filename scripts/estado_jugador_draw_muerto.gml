///estado_jugador_draw_muerto()

/*

 @Descripción:

    Animación cuando el jugador muere
    
 @Return:
    void

*/

if( image_index < (image_number - 1) ){

    draw_sprite_ext(sprite_muerto, image_index, x, y, draw_xscale, draw_yscale, image_angle, image_blend, image_alpha);

}
else{

    image_speed = 0;    

}
