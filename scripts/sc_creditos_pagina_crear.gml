///sc_creditos_pagina_crear(int: número página)

var temp_num_pagina = argument0,
    temp_pagina = instance_create(g_room_mitad_x, g_room_mitad_y, ob_pagina_creditos);

with( temp_pagina ){

    mi_pagina = temp_num_pagina;
    
    var temp_ficha_width_half = sprite_get_width( sp_ficha_momo ) * 0.5,
        temp_ficha_height_half = sprite_get_height( sp_ficha_momo ) * 0.5;    
        
    mi_tween = tween_fromto( self, 0.15, array("xscale",0, "yscale",0, "alpha", 0), 
                                         array("xscale",1, "yscale", 1, "alpha", 1,"ease", ease_bounceinout, "onreversecomplete", "user0")
                                        );
    
}
