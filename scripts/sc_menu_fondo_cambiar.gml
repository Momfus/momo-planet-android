///sc_menu_fondo_cambiar(enum_room: fondo_menu_cambiar)

/*

    Desc:
        Segun el menú indicado, cambia el fondo al respecto.
    
    Returnd: void

*/

var temp_menu = argument0;

switch(temp_menu){


    case menu_juego.tienda_momos_comunes:{
    
        control_background.mi_estado_draw = estado_background_draw_sin_blur;
        background_index[0] = bg_menu_tienda_comun;
    
        break;
    
    }
    

    case menu_juego.inicio:{

        with(control_background){
    
            mi_estado = estado_background_menu_inicio;
        
            if( mi_soporte_shader == true ){
            
                mi_estado_draw = estado_background_draw_con_blur_menu_inicio;
            
            }
            else{
            
                mi_estado_draw = estado_background_draw_sin_blur_menu_inicio;
            
            }
        
        }
        background_index[0] = noone;
    
        break;
    
    }

}
