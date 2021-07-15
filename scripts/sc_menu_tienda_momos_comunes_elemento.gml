#define sc_menu_tienda_momos_comunes_elemento
///sc_menu_tienda_momos_comunes_elemento(boolean:elemento_comprado)


/*

    Desc:
        Se muestra la información del elemento si ya esta comprado o se da la opción de poderlo comprar (si es que le alcanzan las monedas)
        
    Returnd: void

*/

if( argument0 == false ){

    sc_menu_tienda_momos_comunes_elemento_comprar();

}
else{

    sc_sonido_menu_seleccionar();
    sc_menu_tienda_momos_comunes_elemento_info();

}

#define sc_menu_tienda_momos_comunes_elemento_comprar
///sc_menu_tienda_momos_comunes_elemento_comprar()

//Verificar si puede comprarlo

if( g_moneda_cantidad < mi_data[? "price"] ){ //No puede comprarlo
    
    sc_sonido_menu_monedas_insuficientes();
    sc_mostrar_mensaje(g_room_mitad_x, g_room_mitad_y, "Insufficient#chocolate coins", false);
    
}
else{ //Puede comprarlo
 
    sc_sonido_menu_comprar_momo();

    //Destrabar el elemento
    sprite_index = mi_sprite_desbloqueado;
    image_index = mi_elemento_nro;
    
    //Guardar la preferencia que ahora esta desbloqueado
    mi_elemento_comprado = true;
    playerprefs_set("skin_" + mi_data[? "id"], true);
    
    
    //Quitar las monedas necesarias
    g_moneda_cantidad -= mi_data[? "price"];
    playerprefs_set("moneda_cantidad", g_moneda_cantidad);
    
    //Agregar a la lista de skins a usar
    playerprefs_add_list("lista_skins_desbloqueados", g_lista_skins_desbloqueados, mi_data[? "id"]);
   
    //Sacar cartel de precio
    with(mi_cartel_precio){ tween_reverse(mi_tween);}
    
    //Animacion que se destrabo
    sc_efecto_temblor(2, 0.25);

    instance_create_elipseTween_center(x, y, 300, 300, c_gray, ease_cubicout, 0.2, 1, false, 0, depth - 1);
    instance_create_elipseTween_center(x, y, 150, 150, c_white, ease_cubicout, 0.2, 1, false, 0, depth - 2);
    instance_create_elipseTween_center(x, y, 50, 50, c_black, ease_cubicout, 0.2, 1, false, 0, depth - 3);
    
    instance_create_elipseTween_center(x, y, 150, 150, c_black, ease_cubicout, 0.2, 1, false, 0.1, depth - 4);
    
    //Se desactiva por un momento el poder volver atras(para que termine la animación) y se vuelve a activar el hacer tap.
    control_menu.mi_can_back = false;
    with(control_menu){ alarm[3] = 0.25 * room_speed; }
       
       
}



#define sc_menu_tienda_momos_comunes_elemento_info
///sc_menu_tienda_momos_comunes_elemento_info()

sc_mostrar_ficha_momo_comun(sprite_index, image_index, mi_data[? "name"], mi_data[? "desc"])