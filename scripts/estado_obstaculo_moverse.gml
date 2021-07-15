///estado_obstaculo_moverse()

/*

 @Descripción:

     Los obstáculos al moverse alrededor del planeta, controlan el puntaje al dar una
    vuelta debajo del jugador y controlan los bordes de colision segun lo que indican
    sus atributos (izquierdo y derecho)
    
 @Return:
    void

*/

sc_orbita_obstaculo_puntaje();
sc_orbita_movimiento_arreglo();

// Para evitar problemas de colisión en el borde al pasar por debajo del jugador, saca su máscara de colisión
if( g_pta_vel_dir > 0 ){

    if( x < (g_room_mitad_x - mi_offset_x_antihorario ) ){ sprite_index = -1; }
    else{ sprite_index = mi_sprite; }
    
}
else{

    if( x > (g_room_mitad_x + mi_offset_x_horario ) ){ sprite_index = -1; }
    else{ sprite_index = mi_sprite; }

}


