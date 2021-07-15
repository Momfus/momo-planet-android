///sc_jugador_gravedad()

/*

 @Descripción:

     Maneja los movimientos de gravedad del jugador y efecto visual de rebote

 @return: 
    void

*/


//Limite de velocidad al caer

vel_vertical = clamp( vel_vertical, -14, 14);

//Mover personaje
y += vel_vertical;

//Lo siguiente se hace antes de la colisión y es para que el efecto visual del apriete del personaje vuelva a su forma normal

draw_xscale = lerp(draw_xscale, 1 * mi_dir, 0.2 );
draw_yscale = lerp(draw_yscale, 1, 0.2 );
