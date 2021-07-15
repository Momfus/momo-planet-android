///sc_menu_transicion_salir(room: menu_transicion)

/*

    Desc:
        Segun el menu que se quiere salir, se hace diferentes transiciones
    
    Returnd: void

*/

var temp_room_salir = argument0;

switch(temp_room_salir){

    case rm_menu_tienda_momos_comunes:{

        sc_transicion_fadeoutin_color(0, 0, rm_menu_principal, c_black, 0.25);
        
        break;
    
    }
    
    //Para los que no se tiene consideracines especiales
    default:{
    
        room_goto(mi_room_ir)
    
        break;
    
    }

}


