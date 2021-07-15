///sc_menu_transicion_ir(room: menu_transicion)

/*

    Desc:
        Segun el menu que se quiere ir, se hace diferentes transiciones
    
    Returnd: void

*/

var temp_room_ir = argument0;

switch(temp_room_ir){

    case rm_menu_tienda_momos_comunes:{

        sc_transicion_fadeoutin_color(0, 0, temp_room_ir, c_black, 0.25);
        
        break;
    
    }
    
    //Para los que no se tiene consideracines especiales
    default:{
    
        room_goto(mi_room_ir)
    
        break;
    
    }

}


