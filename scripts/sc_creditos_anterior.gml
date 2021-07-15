///sc_creditos_anterior()


///sc_creditos_siguiente()

mi_menu_creditos_ficha_actual--;

// Desaparecer los créditos actuales
with(ob_pagina_creditos){ tween_reverse(mi_tween, 0.1);}

// Aparecer nuevos créditos
sc_creditos_pagina_crear(mi_menu_creditos_ficha_actual);

// En caso de ser necesario crear el botón siguiente
if not( instance_exists(ob_boton_creditos_siguiente) ){

    with( instance_create(g_view_x + g_view_ancho, g_room_mitad_y + 124, ob_boton_creditos_siguiente) ){
       
        mi_tween = tween_fromto(self, 0.15,   array("x", g_view_ancho + xstart, "yscale", 0.5 ),
                                        array("x", xstart, "yscale", image_yscale, "ease", ease_quartout, "oncomplete", "user0", "onreversecomplete", "user3")
                                        );
    
    }


}

// En caso de ser la última ficha, sacar el botón siguiente
if( mi_menu_creditos_ficha_actual <= 0 ){

    with(ob_boton_creditos_anterior){ tween_reverse(mi_tween, 0.1); }

}

// Habilitar el poder seleccionar un botón
with(control_menu){ alarm[3] = 0.4 * room_speed;}
