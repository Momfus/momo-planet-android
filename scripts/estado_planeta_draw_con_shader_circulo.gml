///estado_planeta_draw_con_shader_circulo()

/*

 @Descripción:

     El planeta se dibuja con el shader que va incrementando un circulo que va descolorando el planeta
    
 @Return:
    void

*/

shader_set(mi_shader);

    shader_set_uniform_f(uniform_posicion,x,y);
    shader_set_uniform_f(uniform_radio,mi_shader_radio_actual);

    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, planeta_angulo, -1, 1);
    
shader_reset();
