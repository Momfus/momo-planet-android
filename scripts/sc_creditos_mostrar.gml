///sc_creditos_mostrar()

sc_menu_musica_cambiar(menu_juego.creditos);

with( control_menu ){

    mi_can_back = false;
    alarm[1] = 0.25 * room_speed;
    
    mi_menu_anterior = mi_menu_actual;
    mi_menu_actual = menu_juego.creditos;

}

instance_create(0, 0, control_creditos);

// No poder hacer click en otro botón de pantalla
sc_botones_tap(false);
