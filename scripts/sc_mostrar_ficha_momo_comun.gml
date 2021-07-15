///sc_mostrar_ficha_momo_comun(sprite_momo, image_number_momo, name, desc)

with( instance_create(g_room_mitad_x, g_room_mitad_y, ob_ficha_momo_comun) ){

    mi_momo_sprite = argument0;
    mi_momo_image = argument1;
    
    mi_momo_nombre = argument2;
    mi_momo_desc = argument3;

}

sc_botones_tap(false);
