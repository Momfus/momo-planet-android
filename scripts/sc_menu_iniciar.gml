#define sc_menu_iniciar
///sc_menu_iniciar(enum_room: menu_a_iniciar)

/*

    Desc:
        Según el menú que debe iniciarse, realiza la creación y animación de los objetos necesarios.
    
    Returnd: void

*/

var mi_menu = argument0;



switch(mi_menu){

    case menu_juego.inicio:{ sc_menu_iniciar_inicio(); break; }
    case menu_juego.principal:{ sc_menu_iniciar_principal(); break; }
    case menu_juego.tienda_momos_comunes:{ sc_menu_iniciar_tienda_momos_comunes(); break; }

}

#define sc_menu_iniciar_inicio
///sc_menu_iniciar_inicio()

//sacar esto luego, hago un with para asegurarme de sacarlo luego
with( control_prueba ){

     if not ( instance_exists(prueba_boton_sumar_monedas) ){
    
        instance_create(g_view_x + 40,160, prueba_boton_sumar_monedas);
        instance_create(g_room_mitad_x,160, prueba_boton_delete);
        instance_create(g_view_x + g_view_ancho - 40,160, prueba_boton_sacar_shader);
        instance_create(g_view_x + 40, g_view_y + g_view_alto - 40, prueba_boton_visibles);
        
    }

}

//Cambios varios
sc_menu_fondo_cambiar(menu_juego.inicio);
sc_menu_musica_cambiar(menu_juego.inicio);

//Logo y botón de inicio de juego
var boton_mitad = sprite_get_width(sp_logo_momoplanet) / 2;
var x_ini = choose(g_view_x - boton_mitad, g_view_x + g_view_ancho + boton_mitad );

with( instance_create(x_ini, g_room_mitad_y, ob_boton_iniciar) ){

    mi_tween = tween_fromto(self, 0.6,   array("xscale", 0.5, "yscale", 0 ),
                            array("x", g_room_mitad_x, "xscale", image_xscale, "yscale", image_yscale, "ease", ease_elasticin, "oncomplete", "user0", "onreversecomplete", "user3")
                                    
                );
             

}

var temp_gui_medio_x = g_view_x + (g_view_ancho / 2),
    temp_gui_inferior_y = g_view_y + g_view_alto;

//Cabeza de Momo que aparece y desaparece
with( instance_create(temp_gui_medio_x, temp_gui_inferior_y + 16 , ob_momo_cabeza) ){

    mi_tween = tween_to(self, 0.4, array("y", temp_gui_inferior_y - sprite_get_height(sp_momo_cabeza), "ease", ease_sineout, "oncomplete", "user0", "onreversecomplete", "user1") );

}



//Boton para ir al menu principal
boton_mitad = sprite_get_height(sp_boton_menu) / 2;

with( instance_create(temp_gui_medio_x, temp_gui_inferior_y + boton_mitad, ob_boton_menuprincipal) ){

    mi_tween = tween_to(self, 0.4, array("delay", 0.5, "y", g_view_y + g_view_alto - 120, "ease", ease_quadout, "oncomplete", "user0", "onreversecomplete", "user3") );
    
}

//Botones varios

    boton_mitad = sprite_get_height(sp_boton_creditos) * 0.5;
    
    //---> Creditos
    with( instance_create(temp_gui_medio_x - 180, temp_gui_inferior_y + boton_mitad, ob_boton_creditos) ){

        mi_red_social = 0;
        mi_tween = tween_to(self, 0.4, array("delay", 0.6, "y", g_view_y + g_view_alto - 210, "ease", ease_quadout, "oncomplete", "user0", "onreversecomplete", "user3") );
    
    }
    
    //---> Activar / Desactivar sonido
    with( instance_create(temp_gui_medio_x + 180, temp_gui_inferior_y + boton_mitad, ob_boton_sonido) ){

        mi_red_social = 1;
        mi_tween = tween_to(self, 0.4, array("delay", 0.6, "y", g_view_y + g_view_alto - 210, "ease", ease_quadout, "oncomplete", "user0", "onreversecomplete", "user3") );
    
    }
    

#define sc_menu_iniciar_principal
///sc_menu_iniciar_principal()

//Cambios varios
sc_menu_fondo_cambiar(menu_juego.principal);
sc_menu_musica_cambiar(menu_juego.principal);

//Alarma para activar el volver atras
alarm[1] = 0.5 * room_speed;

//Crear los botones del menú principal con sus animaciones en distintas posibilidades

//<<< Texto animado (viene de los costados) del Menu Principal >>
create_texto_tween_costados(g_room_mitad_x, g_view_y + 64, 2, "MENU", 0, false, 0);

//<<< Atributos temporales para ubicar los botones >>>
var temp_tipo_animacion = irandom(4),
    temp_image_index = 0,
    temp_boton_mitad = ( sprite_get_width(sp_boton_menuprincipal_opciones) / 2 ),
    temp_arreglo_col_x = 0,
    temp_arreglo_col_y = 0,
    temp_lista_botones_id; //Ver en el evento create de ob_boton_menuprincipal_opciones lo que significa cada indice

    temp_arreglo_col_x[0] = g_view_x + temp_boton_mitad + 32;
    temp_arreglo_col_x[1] = g_room_mitad_x;
    temp_arreglo_col_x[2] = g_view_x + g_view_ancho - temp_boton_mitad - 32;
    
    temp_arreglo_col_y[0] = g_view_y + temp_boton_mitad + 160;
    temp_arreglo_col_y[1] = temp_arreglo_col_y[0] + temp_boton_mitad + 144;
    temp_arreglo_col_y[2] = temp_arreglo_col_y[1] + temp_boton_mitad + 144;
    temp_arreglo_col_y[3] = g_view_y + g_view_alto - temp_boton_mitad - 24;

//<< Creación de los botones en su origen >>

//FILA 0 / 1
for( var i = 0; i < 2; i++ ){

    for( var j = 0; j < 3; j++){
    
        temp_lista_botones_id[temp_image_index] = instance_create(temp_arreglo_col_x[j], temp_arreglo_col_y[i], ob_boton_menuprincipal_opciones );
        temp_image_index++;    
    }
}

//FILA 2
temp_lista_botones_id[temp_image_index] = instance_create(temp_arreglo_col_x[1], temp_arreglo_col_y[2], ob_boton_menuprincipal_opciones );
temp_image_index++; 

//FILA 3
temp_lista_botones_id[temp_image_index] = instance_create(temp_arreglo_col_x[0], temp_arreglo_col_y[3], ob_boton_menuprincipal_opciones );
temp_image_index++; 

//Asignacion de su subimagen
for( var i = 0; i < temp_image_index; i++ ){  
    with( temp_lista_botones_id[i] ){ image_index = i; }
}


//<< Animación aleatoria de botones>>
switch(temp_tipo_animacion){

    //Todos por la derecha
    case 0:{
    
        var temp_ease = ease_quartout,
            temp_time = 0.5;
    
        for( var i = 0; i < temp_image_index; i++ ){  
            with( temp_lista_botones_id[i] ){ 
               mi_tween = tween_fromto(self, temp_time,   array("x", g_view_ancho + xstart, "yscale", 0.5 ),
                                    array("x", xstart, "yscale", image_yscale, "ease", temp_ease, "oncomplete", "user0", "onreversecomplete", "user3")
                                    )
            }
        }
    
        break;
    
    }

    //Todos por debajo
    case 1:{
    
        var temp_ease = ease_quartout,
            temp_time = 0.5;
    
        for( var i = 0; i < temp_image_index; i++ ){  
            with( temp_lista_botones_id[i] ){ 
               mi_tween = tween_fromto(self, temp_time,   array("y", g_view_alto + ystart, "xscale", 0.5 ),
                                    array("y", ystart, "xscale", image_xscale, "ease", temp_ease, "oncomplete", "user0", "onreversecomplete", "user3")
                                    )
            }
        }
    
        break;
    
    }

    //Todos por la izquierda
    case 2:{
    
        var temp_ease = ease_quartout,
            temp_time = 0.5;
    
        for( var i = 0; i < temp_image_index; i++ ){  
            with( temp_lista_botones_id[i] ){ 
               mi_tween = tween_fromto(self, temp_time,   array("x", -(g_view_ancho - xstart), "yscale", 0.5 ),
                                    array("x", xstart, "yscale", image_yscale, "ease", temp_ease, "oncomplete", "user0", "onreversecomplete", "user3")
                                    )
            }
        }
    
        break;
    
    }

    //Todos rebotando desde el centro
    case 3:{
    
        var temp_ease = ease_bounceout,
            temp_time = 0.5;
    
        for( var i = 0; i < temp_image_index; i++ ){  
            with( temp_lista_botones_id[i] ){ 
               mi_tween = tween_fromto( self, temp_time, array("xscale",0, "yscale",0), 
                                                    array("xscale",1, "yscale", 1, "ease", temp_ease, "oncomplete", "user0", "onreversecomplete", "user3")
                                        );
            }
        }
    
        break;
    
    }

    case 4:{

        var temp_ease = ease_quartout,
            temp_time = 0.5;
    
        //Tienda de momos comunes.
        with( temp_lista_botones_id[0] ){ 
            mi_tween = tween_fromto(self, temp_time,   array("x", -(g_view_ancho - xstart), "yscale", 0.5 ),
                                    array("x", xstart, "yscale", image_yscale, "ease", temp_ease, "oncomplete", "user0", "onreversecomplete", "user3")
                                    )
        }
        
        //Tienda de momos especiales.
        with( temp_lista_botones_id[1] ){ 
            mi_tween = tween_fromto(self, temp_time,   array("y", g_view_alto + ystart, "xscale", 0.5 ),
                                    array("y", ystart, "xscale", image_xscale, "ease", temp_ease, "oncomplete", "user0", "onreversecomplete", "user3")
                                    )
        }
        
        //Lista de Planetas.
        with( temp_lista_botones_id[2] ){ 
            mi_tween = tween_fromto(self, temp_time,   array("x", g_view_ancho + xstart, "yscale", 0.5 ),
                                    array("x", xstart, "yscale", image_yscale, "ease", temp_ease, "oncomplete", "user0", "onreversecomplete", "user3")
                                    )
        }
        
        //Logros.
        with( temp_lista_botones_id[3] ){ 
            mi_tween = tween_fromto(self, temp_time,   array("x", -(g_view_ancho - xstart), "yscale", 0.5 ),
                                    array("x", xstart, "yscale", image_yscale, "ease", temp_ease, "oncomplete", "user0", "onreversecomplete", "user3")
                                    )
        }
        
        //Información General.
        with( temp_lista_botones_id[4] ){ 
            mi_tween = tween_fromto(self, temp_time,   array("y", g_view_alto + ystart, "xscale", 0.5 ),
                                    array("y", ystart, "xscale", image_xscale, "ease", temp_ease, "oncomplete", "user0", "onreversecomplete", "user3")
                                    )
        }
        
        //Créditos.
        with( temp_lista_botones_id[5] ){ 
            mi_tween = tween_fromto(self, temp_time,   array("x", g_view_ancho + xstart, "yscale", 0.5 ),
                                    array("x", xstart, "yscale", image_yscale, "ease", temp_ease, "oncomplete", "user0", "onreversecomplete", "user3")
                                    )
        }
        
        //Desactivar / Activar sonido y música 
        with( temp_lista_botones_id[6] ){ 
            mi_tween = tween_fromto(self, temp_time,   array("y", g_view_alto + ystart, "xscale", 0.5 ),
                                    array("y", ystart, "xscale", image_xscale, "ease", temp_ease, "oncomplete", "user0", "onreversecomplete", "user3")
                                    )
        }
        
        //Ir a Pantalla de Inicio.
        with( temp_lista_botones_id[7] ){ 
            mi_tween = tween_fromto(self, temp_time,   array("x", -(g_view_ancho - xstart), "yscale", 0.5 ),
                                    array("x", xstart, "yscale", image_yscale, "ease", temp_ease, "oncomplete", "user0", "onreversecomplete", "user3")
                                    )
        }
        
        break;
    
    }

}

#define sc_menu_iniciar_tienda_momos_comunes
///sc_menu_iniciar_principal()

//Setear paginas
mi_menu_pagina_actual = 0;
mi_menu_pagina_cantidad = 1;

//Alarma para activar el volver atras
alarm[1] = 0.5 * room_speed; //agregado para el demo

//Cambios varios
sc_menu_fondo_cambiar(menu_juego.tienda_momos_comunes);
sc_menu_musica_cambiar(menu_juego.tienda_momos_comunes);

mi_ds_map_skins = get_data_tienda_momos_comunes(mi_menu_pagina_actual); //Carga de datos json

//<<<Elementos de pantalla>>
var temp_boton_redondo_mitad = ( sprite_get_width(sp_boton_menuprincipal_opciones) / 2 );


//Categoria de la pagina de la tienda
var temp_nombre_categoria = mi_ds_map_skins[? "name_skin"];
create_texto_tween_costados(g_room_mitad_x, g_view_y + 64, 1.5, temp_nombre_categoria, 2, false, 0 );

//Momos comunes comprar de la tienda
sc_menu_tienda_momos_comunes_buscar(1);

for( var i = 0; i < 3; i++ ){

    for( var j = 0; j < 3; j++ ){
    
        with( mi_elementos_tienda_id[i,j] ){

            mi_tween = tween_fromto( self, 0.5, array("xscale",0, "yscale",0), 
                                                array("xscale",1, "yscale", 1, "ease", ease_quartout, "oncomplete", "user0", "onreversecomplete", "user3")
                                    );
        }
    
    }

} 
//Botón de siguiente o anterior página

//-->Anterior página
if( mi_menu_pagina_actual != 0 ){

    with( instance_create(g_view_x, g_room_mitad_y + 124, ob_boton_menu_tienda_momos_comunes_anterior) ){
        
        mi_tween = tween_fromto(self, 0.5,   array("x", -(g_view_ancho - xstart), "yscale", 0.5 ),
                                        array("x", xstart, "yscale", image_yscale, "ease", ease_quartout, "oncomplete", "user0", "onreversecomplete", "user3")
                                        );
    
    }

}
//-->Siguiente
if( mi_menu_pagina_actual != mi_menu_pagina_cantidad ){

    with( instance_create(g_view_x + g_view_ancho, g_room_mitad_y + 124, ob_boton_menu_tienda_momos_comunes_siguiente) ){
       
        mi_tween = tween_fromto(self, 0.5,   array("x", g_view_ancho + xstart, "yscale", 0.5 ),
                                        array("x", xstart, "yscale", image_yscale, "ease", ease_quartout, "oncomplete", "user0", "onreversecomplete", "user3")
                                        );
    
    }

}

//Cantidad monedas totales obtenidas
with( instance_create(g_view_x + g_view_ancho, g_view_y + g_view_alto - temp_boton_redondo_mitad - 24, ob_tienda_momo_comun_hud_monedas) ){

    mi_tween = tween_fromto( self, 0.5, array("y",ystart + sprite_height),
                                        array("y", ystart, "ease", ease_quartout, "onreversecomplete", "user1") 
                            );

}


//Botón de volver atras (se usa el mismo del menu principal).
var temp_boton_atras_x = g_view_x + temp_boton_redondo_mitad + 32,
    temp_boton_atras_y = g_view_y + g_view_alto - temp_boton_redondo_mitad - 24;
    
with( instance_create(temp_boton_atras_x, temp_boton_atras_y, ob_boton_menuprincipal_opciones ) ){

    mi_tween = tween_fromto(self, 0.5,   array("y", g_view_alto + ystart, "xscale", 0.5 ),
                                    array("y", ystart, "xscale", image_xscale, "ease", ease_quartout, "oncomplete", "user0", "onreversecomplete", "user3")
                                    );
                                                            
    image_index = 7;

}