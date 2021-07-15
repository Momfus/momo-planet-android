///estado_background_draw_con_blur_menu_inicio()

/*

 @Descripción:

     Se aplica un fondo con blur usado en el control_background
    
 @Return:
    void

*/

shader_set(mi_shader)

    draw_sprite_ext(sp_menu_inicio_circulo_rotar, 0, g_room_mitad_x, g_room_mitad_y, 1, 1, mi_angulo, -1, 1);

shader_reset();
