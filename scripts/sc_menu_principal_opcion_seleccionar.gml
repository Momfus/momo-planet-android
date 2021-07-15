//sc_menu_principal_opcion_seleccionar(int: opcion)

/*

    Desc:
        Segun la opcion recibida, se va al submenu o se ejecuta la opción seleccionada en el Menu Principal.
        
        Para ver una lista de las opciones que hay, ver el evento create en el objeto ob_boton_menuprincipal_opciones
    
    Returnd: void

*/

mi_can_back = false;

var temp_opcion = argument0;

switch(temp_opcion){

    //Tienda de momos comunes
    case 0:{
    
        event_inherited();
    
        with(control_menu){
            mi_menu_actual = menu_juego.tienda_momos_comunes;
            event_perform(ev_other, ev_user0);
        }
        
    
        break;
    
    }
    
    //Tienda de momos especiales
    case 1:{
    
        sc_mostrar_mensaje(g_room_mitad_x, g_room_mitad_y, "UNDER MONSTRUCTION", true);
    
        break;
    
    }
    
    //Lista de Planetas
    case 2:{
    
        sc_mostrar_mensaje(g_room_mitad_x, g_room_mitad_y, "UNDER MONSTRUCTION", true);
    
        break;
    
    }
    
    //Logros
    case 3:{
    
        sc_mostrar_mensaje(g_room_mitad_x, g_room_mitad_y, "UNDER MONSTRUCTION", true);
    
        break;
    
    }
    
    //Información General
    case 4:{
    
        sc_mostrar_mensaje(g_room_mitad_x, g_room_mitad_y, "UNDER MONSTRUCTION", true);
    
        break;
    
    }
    
    //Créditos
    case 5:{
    
        sc_mostrar_mensaje(g_room_mitad_x, g_room_mitad_y, "UNDER MONSTRUCTION", true);
    
        break;
    
    }
    
    //Desactivar / Activar sonido y música 
    case 6:{
    
        sc_mostrar_mensaje(g_room_mitad_x, g_room_mitad_y, "UNDER MONSTRUCTION", true);
    
        break;
    
    }
    
    //Volver a pantalla de Inicio
    case 7:{
    
        event_inherited();
   
        with(control_menu){
        
            if( mi_can_back == true ){
                sc_menu_volver_atras(mi_menu_actual);
            }
        }
        
        break;
    
    }
    

}
