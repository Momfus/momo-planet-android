///sc_jugador_animacion_nuevo_nivel()

/*

    Desc: 
        Crear los tweens al empezar un nuevo nivel el jugador
        
            NOTA: tweenline no uso por ahora por un error al llamar scripts en eventos, por eso tambien uso variables locales "t" y "delay" para
        calcular rapidamente el tiempo luego de cada animación como lo haria un tweenline.
    
    Return: tiempo animación en segundos (multiplicar por room_speed para steps)

*/
sc_sonido_jugador_aparece();

var t = tween_fromto(self, 0.8, array("image_alpha", 1, "draw_xscale", 1.25 * ob_planeta.planeta_vel_dir_anterior, "draw_yscale", 1.25),
                            array("image_alpha", 1, "draw_xscale", 1 * mi_dir, "draw_yscale", 1, "ease", ease_bounceout ) );
    var delay = tween_get_endtime(t);
    
    instance_create_elipseTween_center(x, y - 24, 400, 400, c_white, ease_backinout, 0.6, 0.9, true, 0, -1);
    instance_create_elipseTween_center(x, y - 24, 300, 300, c_white, ease_backinout, 0.6, 0.8, false, 0.3, -1);

return delay;
