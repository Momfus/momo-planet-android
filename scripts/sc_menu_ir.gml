#define sc_menu_ir
///sc_menu_ir(enum_room: menu_a_sacar)

/*

    Desc:
        Según el menú que debe salirse, se realizar acciones diferentes
    
    Returnd: void

*/

var mi_menu = argument0;



switch(mi_menu){

    case menu_juego.inicio:{ sc_menu_ir_inicio(); break; }
    case menu_juego.principal:{ sc_menu_ir_principal(); break; }
    case menu_juego.tienda_momos_comunes:{ sc_menu_ir_tienda_momos_comunes(); break; }

}

#define sc_menu_ir_inicio
///sc_menu_ir_inicio()

//Se esta en el principal y se va al inicio


//Cambios de los rooms para navegabilidad
mi_room_ir = rm_menu_inicio;
mi_menu_anterior = noone;

//Sacar elementos de pantlla
with( parent_boton ){ tween_reverse(mi_tween, 0.2); }
with( ob_texto_tween_costados ){ event_perform(ev_other,ev_user0); tween_reverse(mi_tween, 0.2); }

//Alarma para ir al menu señalado
alarm[0] = 0.2 * room_speed;

#define sc_menu_ir_principal
///sc_menu_ir_principal()


//Cambios de los rooms para navegabilidad
mi_room_ir = rm_menu_principal;
mi_menu_anterior = menu_juego.inicio;


//Sacar elementos de pantlla
with( ob_boton_iniciar ){ instance_destroy_other(mi_efecto); }
with( parent_boton ){ 

    tween_reverse(mi_tween, 0.2); 
    
}

//Alarma para ir al menu señalado
alarm[0] = 0.25 * room_speed;

#define sc_menu_ir_tienda_momos_comunes
///sc_menu_ir_tienda_momos_comunes()

//Se esta en el inicio y se va al principal


//Cambios de los rooms para navegabilidad
mi_room_ir = rm_menu_tienda_momos_comunes;
mi_menu_anterior = menu_juego.inicio//menu_juego.principal;


//Sacar elementos de pantlla
with( ob_boton_iniciar ){ instance_destroy_other(mi_efecto); }
with( parent_boton ){ tween_reverse(mi_tween, 0.2); }
with( ob_texto_tween_costados ){ tween_reverse(mi_tween, 0.2); }

//Alarma para ir al menu señalado
alarm[0] = 0.1 * room_speed;