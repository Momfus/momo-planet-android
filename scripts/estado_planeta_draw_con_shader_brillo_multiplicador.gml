///estado_planeta_draw_con_shader_brillo_multiplicador()

/*

 @Descripción:

     El planeta se dibuja con el shader que va incrementando o decrementando el brillo de los colores en gris
    
 @Return:
    void

*/

shader_set(mi_shader);

    shader_set_uniform_f(uniform_mul_brillo, mi_shader_mul_brillo );
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, planeta_angulo, -1, 1);
    
shader_reset();
