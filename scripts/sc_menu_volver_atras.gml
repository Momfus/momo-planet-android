#define sc_menu_volver_atras
///sc_menu_volver_atras(enum_room: menu_actual)

/*

    Desc:
        Segun el menu que se esta, se hace diferentes transiciones
    
    Returnd: void

*/

var temp_menu_actual = argument0;

switch(temp_menu_actual){

    case menu_juego.tienda_momos_comunes:{
    
        sc_menu_volver_atras_tienda_momos_comunes();
    
        break;
    
    }
    
    case menu_juego.creditos:{
    
        sc_menu_volver_atras_creditos();
    
        break;
    
    }

    //Otros
    default:{
    
        mi_can_back = false;    
        mi_menu_actual = mi_menu_anterior;
    
        sc_botones_tap(false);
        event_perform(ev_other, ev_user0);
    
        break;
    
    }

}

#define sc_menu_volver_atras_tienda_momos_comunes
///sc_menu_volver_atras_tienda_momos_comunes()

if not( instance_exists(ob_ficha_momo_comun) ){

    //Se esta en la tienda de momos comunes y se vuelve al menu inicio.
    mi_can_back = false;    
    mi_menu_actual = mi_menu_anterior;
    
    
    mi_room_ir = rm_menu_principal;
    mi_menu_anterior = menu_juego.inicio;
    
    sc_botones_tap(false);
    
    //Sacar elementos de pantlla
    with( parent_boton ){ tween_reverse(mi_tween); }
    with( ob_tienda_momo_comun_hud_monedas ){ tween_reverse(mi_tween); }
    with( ob_tienda_cartel_precio ){ tween_reverse(mi_tween); }
    
    
    //Alarma para salir al menu señalado
    alarm[2] = 0.1 * room_speed;

}
else{

    //Si estaba mostrando una ficha en la tienda, revierte su animación y vuelve como estaba la tienda
    with( ob_ficha_momo_comun ){

        event_perform(ev_other, ev_user1);
    
    }    

}
#define sc_menu_volver_atras_creditos
///sc_menu_volver_atras_creditos()

with( control_creditos ){

    event_perform(ev_other, ev_user1);
    
}    