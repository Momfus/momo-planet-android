#define sc_nivel_iniciar
///sc_nivel_iniciar(bool: primera_vez)

/*

    @Descripción:
        Se llama cuando comienza el nivel (desde el script del room). Si es la primera vez se setea todo, sino se crea lo 
    necesario (como cuando pasas al siguiente nivel que sigue en el mismo room).
                                      
    @return: 
        void

*/

//Cambios generales (sea primera vez o no)


    //---> Del planeta
    g_pta_vel = ob_planeta.planeta_vel_rotacion;
    g_pta_vel_dir = sign(g_pta_vel);// 1 = sentido antihorario; -1 = sentido horario
    
    //---> Del jugador
    g_jug_ini_y = g_pta_y - g_pta_radio;
    
//Selecionar si es la primera vez o no que empieza a jugar (o si murió y reinició la partida)
if( argument0 == true ){

    sc_nivel_iniciar_todo();

}
else{

    sc_nivel_iniciar_siguiente();

}

#define sc_nivel_iniciar_todo
///sc_nivel_iniciar_todo()


//Crear controladores
instance_create(0, 0, control_generador ); // Para asegurarnos que comienza luego que todos los objetos del room existen
if not( instance_exists(control_nivel)){ instance_create(0, 0, control_nivel); }
else{

    //Si ya existe es porque se perdió y volvio a empezar, asi que se seleccionan los primeros niveles
    with(control_nivel){ sc_nivel_seleccionar(false); }
    
}
//Posicionar jugador
with( instance_create(g_pta_x, g_jug_ini_y - 48, ob_jugador) ){ 

    mi_dir = g_pta_vel_dir;
    draw_xscale = mi_dir;
    
}

//Reiniciar valores necesarios
g_puntaje_actual = 0;
g_puntaje_total = 0;


//Crear objetos que manejan el hud
instance_create(g_view_x + g_view_ancho, g_view_y + 20, ob_hud_puntaje_total);


//Setear lo basico del fondo
with( control_background ){

    mi_estado = estado_background_nada;
    
    if( mi_estado_draw != estado_background_draw_con_blur and mi_estado_draw != estado_background_draw_sin_blur ){
        
        if( mi_estado_draw == estado_background_draw_con_blur_menu_inicio ){ mi_estado_draw = estado_background_draw_con_blur; }
        else{ mi_estado_draw = estado_background_draw_sin_blur; }
        
    }

}

//Inicialiar animación de empezar el juego
with(ob_jugador){

    y -= 24; //Pequeña correción al usar al iniciar otro sprite centrado.

    var tiempo = sc_jugador_animacion_aparece() + 0.3;

    with(control_nivel){ alarm[0] = room_speed * tiempo; }

}

#define sc_nivel_iniciar_siguiente
///sc_nivel_iniciar_siguiente()


///Propiedaes del jugador a cambiar
ob_jugador.depth = 0;

with(ob_jugador){

    mi_dir = g_pta_vel_dir;
    
    var tiempo = sc_jugador_animacion_nuevo_nivel();

}

//Indicar cambio de dirección actual a tener en cuenta si cambia
with(ob_planeta){ planeta_vel_dir_anterior = sign(planeta_vel_rotacion); }

//Comenzar nivel
with(control_nivel){ alarm[0] = room_speed * tiempo; }