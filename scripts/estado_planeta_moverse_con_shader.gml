///estado_planeta_moverse_con_shader()

/*

 @Descripción:

     Movimiento de rotación del planeta con la shader que va descolorando el planeta
    
 @Return:
    void

*/

///Rotación planeta
planeta_angulo += planeta_vel_rotacion;

//Aumento del círculo que absorbe el color
if( mi_shader_radio_actual <= g_pta_radio ){

    mi_shader_radio_actual += 0.5;

}

