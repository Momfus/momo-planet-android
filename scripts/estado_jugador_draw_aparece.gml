///estado_jugador_draw_aparece()

/*

 @Descripción:

    Animación cuando el jugador aparece, al terminarse pasa al ocioso hasta caer
    
 @Return:
    void

*/

if( image_index > 0 ){

    draw_sprite_ext(sprite_muerto, image_index, x, y, draw_xscale, draw_yscale, image_angle, image_blend, image_alpha);

}
else{

    image_speed = 0.1;
    image_index = 0;
    mi_estado_draw = estado_jugador_draw_ocioso;    

}
