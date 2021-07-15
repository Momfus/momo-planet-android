///estado_jugador_draw_moverse()

/*

 @Descripción:

    Animación del movimiento del personaje
    
 @Return:
    void

*/

if( mi_parpadeo = false ){

    if( image_index >= (image_number - 1) ){ image_index = 0; }
    draw_sprite_ext(sprite_index, image_index, x, y, draw_xscale, draw_yscale, image_angle, image_blend, image_alpha);
    
}
else{

    draw_sprite_ext(sprite_index, (image_number - 1), x, y, draw_xscale, draw_yscale, image_angle, image_blend, image_alpha);

}
