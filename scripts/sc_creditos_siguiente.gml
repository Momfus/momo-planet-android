///sc_creditos_siguiente()

mi_menu_creditos_ficha_actual++;

// Desaparecer los créditos actuales
with(ob_pagina_creditos){ tween_reverse(mi_tween, 0.1);}

// Aparecer nuevos créditos
sc_creditos_pagina_crear(mi_menu_creditos_ficha_actual);

// En caso de ser necesario crear el botón anterior
if not( instance_exists(ob_boton_creditos_anterior) ){

    with( instance_create(g_view_x, g_room_mitad_y + 124, ob_boton_creditos_anterior) ){
           
        mi_tween = tween_fromto(self, 0.15,   array("x", -(g_view_ancho - xstart), "yscale", 0.5 ),
                                        array("x", xstart, "yscale", image_yscale, "ease", ease_quartout, "oncomplete", "user0", "onreversecomplete", "user3")
                                        );
    
    }


}

// En caso de ser la última ficha, sacar el botón siguiente
if( mi_menu_creditos_ficha_actual >= mi_menu_creditos_ficha_total ){

    with(ob_boton_creditos_siguiente){ tween_reverse(mi_tween, 0.1); }

}

// Habilitar el poder seleccionar un botón (excepto los que están detrás)
with(control_menu){ alarm[3] = 0.4 * room_speed;}
