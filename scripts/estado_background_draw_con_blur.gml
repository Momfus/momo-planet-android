///estado_background_draw_con_blur()

/*

 @Descripción:

     Se aplica un fondo con blur usado en el control_background
    
 @Return:
    void

*/

shader_set(mi_shader)

    draw_background_stretched(background_index[0], 0, 0, 720, 1280);

shader_reset();
