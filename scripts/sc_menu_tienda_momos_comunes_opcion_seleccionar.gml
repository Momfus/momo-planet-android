#define sc_menu_tienda_momos_comunes_opcion_seleccionar
///sc_menu_tienda_momos_comunes_opcion_seleccionar(int: opcion)

/*

    Desc:
        Segun la opcion recibida, se va al submenu o se ejecuta la opción seleccionada en la tienda de momo comunes.
        
    
    Returnd: void

*/



var temp_opcion = argument0;

switch(temp_opcion){

    //Página anterior
    case 0:{
        
        sc_sonido_menu_seleccionar();
        sc_menu_tienda_momos_comunes_cambiar_anterior();
        
        break;
    
    }
    
    //Página siguiente
    case 1:{
    
        sc_sonido_menu_seleccionar();    
        sc_menu_tienda_momos_comunes_cambiar_siguiente();
        
        break;
    
    }
    
    //Comprar algún momo de la tienda o seleccionarlo
    case 2:{
        //Nota: Esto se hace en el ob_tienda_momo_comun_elemento (no en control_menu)
        sc_menu_tienda_momos_comunes_elemento(mi_elemento_comprado);  
        break;
    
    }
    
    //Cualquier otra cosa
    default:{
    
        sc_sonido_menu_seleccionar();
        sc_mostrar_mensaje(g_room_mitad_x, g_room_mitad_y, "UNDER MONSTRUCTION", true);
    
    }

}

#define sc_menu_tienda_momos_comunes_cambiar_siguiente
///sc_menu_tienda_momos_comunes_cambiar_siguiente()

/*

    Desc:
         Se mueven los elementos de la tienda a la siguiente página, si es la ultima se quita el boton correspondiente. Si ya no se está en
    la primera página, se hace aparecer el boton "anterior página"
        
    Returnd: void

*/


//Sacar cartel titulo a la izquierda
with(ob_texto_tween_costados){ tween_to(self, 0.2,   array("x", (g_view_x - temp_cartel_mitad), "y", ystart, "xscale", 0.5, "yscale", 0, "ease", ease_linear, "oncomplete", "user1") ); } 

//Desaparecer los que estan en pantalla
for( var i = 0; i < 3; i++ ){

    for( var j = 0; j < 3; j++ ){
    
        with( mi_elementos_tienda_id[i,j] ){

            tween_to( self, 0.5, array("x", -(g_view_ancho - xstart), "yscale", 0.5, "ease", ease_quartout, "oncomplete", "user3") );
                
        }
    
    }

} 

//Buscar los que estan en la siguiente página
mi_menu_pagina_actual = clamp(mi_menu_pagina_actual + 1, 0, mi_menu_pagina_cantidad);

//Limpiar los datos en pantalla y buscar los nuevos
ds_map_clear(mi_ds_map_skins);
mi_ds_map_skins = get_data_tienda_momos_comunes(mi_menu_pagina_actual); //Carga de datos json

//Buscar los elementos de pantalla de la nueva pagina
sc_menu_tienda_momos_comunes_buscar(2);

//Colocar cartel titulo desde derecha
var temp_nombre_categoria = mi_ds_map_skins[? "name_skin"];
create_texto_tween_costados(g_room_mitad_x, g_view_y + 64, 1.5, temp_nombre_categoria, 2, false, 0 );

//Animar a los de la siguiente página
for( var i = 0; i < 3; i++ ){

    for( var j = 0; j < 3; j++ ){
    
        with( mi_elementos_tienda_id[i,j] ){
    
            image_yscale = 0.5; 
            tween_to( self, 0.5, array("x", xstart,"yscale", 1, "ease", ease_quartout, "oncomplete", "user0", "onreversecomplete", "user3") );
        }
    
    }

} 

//Controlar si puede seguir habiendo siguiente pagina
if( mi_menu_pagina_actual == mi_menu_pagina_cantidad ){

    with(ob_boton_menu_tienda_momos_comunes_siguiente){
    
        tween_reverse(mi_tween);
    
    }
}

//Crear el boton para ir a la anterior pagina si no existe
if( mi_menu_pagina_actual > 0 ){

    if not( instance_exists(ob_boton_menu_tienda_momos_comunes_anterior) ){
   
        with( instance_create(g_view_x, g_room_mitad_y + 124, ob_boton_menu_tienda_momos_comunes_anterior) ){
        
            mi_tween = tween_fromto(self, 0.5,   array("x", -(g_view_ancho - xstart), "yscale", 0.5 ),
                                            array("x", xstart, "yscale", image_yscale, "ease", ease_quartout, "oncomplete", "user0", "onreversecomplete", "user3")
                                            );
    
        }
    
    }
}


alarm[3] = 0.5 * room_speed;


#define sc_menu_tienda_momos_comunes_cambiar_anterior
///sc_menu_tienda_momos_comunes_cambiar_anterior()

/*

    Desc:
         Se mueven los elementos de la tienda a la anterior página, si es la primera se quita el boton correspondiente. Si ya no se está en
    la ultima página, se hace aparecer el boton "siguiente página"
        
    Returnd: void

*/

//Sacar cartel titulo a la derecha
with(ob_texto_tween_costados){ tween_to(self, 0.2,   array("x", (g_view_x + g_view_ancho + temp_cartel_mitad ), "y", ystart, "xscale", 0.5, "yscale", 0, "ease", ease_linear, "oncomplete", "user1") ); }




//Desaparecer los que estan en pantalla
for( var i = 0; i < 3; i++ ){

    for( var j = 0; j < 3; j++ ){
    
        with( mi_elementos_tienda_id[i,j] ){

            tween_to( self, 0.5, array("x", (g_view_ancho + xstart), "yscale", 0.5, "ease", ease_quartout, "oncomplete", "user3") );
                
        }
    
    }

} 

//Buscar los que estan en la siguiente página
mi_menu_pagina_actual = clamp(mi_menu_pagina_actual - 1, 0, mi_menu_pagina_cantidad);

//Limpiar los datos en pantalla y buscar los nuevos
ds_map_clear(mi_ds_map_skins);
mi_ds_map_skins = get_data_tienda_momos_comunes(mi_menu_pagina_actual); //Carga de datos json

//Buscar los elementos de pantalla de la nueva pagina
sc_menu_tienda_momos_comunes_buscar(0);

//Colocar cartel titulo
var temp_nombre_categoria = mi_ds_map_skins[? "name_skin"];
create_texto_tween_costados(g_room_mitad_x, g_view_y + 64, 1.5, temp_nombre_categoria, 1, false, 0 );

//Animar a los de la siguiente página
for( var i = 0; i < 3; i++ ){

    for( var j = 0; j < 3; j++ ){
    
        with( mi_elementos_tienda_id[i,j] ){

            image_yscale = 0.5; 
            tween_to( self, 0.5, array("x", xstart,"yscale", 1, "ease", ease_quartout, "oncomplete", "user0", "onreversecomplete", "user3") );
        }
    
    }

} 

//Controlar si puede seguir habiendo anterior pagina
if( mi_menu_pagina_actual == 0 ){

    with(ob_boton_menu_tienda_momos_comunes_anterior){
    
        tween_reverse(mi_tween);
    
    }
}

//Crear el boton para ir a la siguiente pagina si no existe
if( mi_menu_pagina_actual < mi_menu_pagina_cantidad ){

    if not( instance_exists(ob_boton_menu_tienda_momos_comunes_siguiente) ){
   
        with( instance_create(g_view_x + g_view_ancho, g_room_mitad_y + 124, ob_boton_menu_tienda_momos_comunes_siguiente) ){
       
            mi_tween = tween_fromto(self, 0.5,   array("x", g_view_ancho + xstart, "yscale", 0.5 ),
                                                array("x", xstart, "yscale", image_yscale, "ease", ease_quartout, "oncomplete", "user0", "onreversecomplete", "user3")
                                    );
    
        }
    
    }
}


alarm[3] = 0.5 * room_speed;