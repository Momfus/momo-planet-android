///sc_creditos_ficha_crear(int: num_ficha)

// Ficha de fondo
var temp_num_ficha = argument0,
    temp_ficha = instance_create(g_room_mitad_x, g_room_mitad_y, ob_ficha_creditos);

with( temp_ficha ) {
    
    var temp_ficha_width_half = sprite_get_width( sp_ficha_momo ) * 0.5,
        temp_ficha_height_half = sprite_get_height( sp_ficha_momo ) * 0.5;    
        
    mi_tween = tween_fromto( self, 0.15, array("xscale",0, "yscale",0), 
                                         array("xscale",1, "yscale", 1, "ease", ease_bounceinout, "onreversecomplete", "user0")
                                        );

}

// Págia creditos
sc_creditos_pagina_crear(temp_num_ficha);

// Botón siguiente créditos
with( instance_create(g_view_x + g_view_ancho, g_room_mitad_y + 124, ob_boton_creditos_siguiente) ){
       
    mi_tween = tween_fromto(self, 0.15,   array("x", g_view_ancho + xstart, "yscale", 0.5 ),
                                    array("x", xstart, "yscale", image_yscale, "ease", ease_quartout, "oncomplete", "user0", "onreversecomplete", "user3")
                                    );

}

return temp_ficha;
