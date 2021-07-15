///sc_jugador_animacion_muerte()

/*

    Desc: 
        Crear los tweens de animación de muerte del jugador
        
            NOTA: tweenline no uso por ahora por un error al llamar scripts en eventos, por eso tambien uso variables locales "t" y "delay" para
        calcular rapidamente el tiempo luego de cada animación como lo haria un tweenline.
    
    Return: tiempo animación en segundos (multiplicar por room_speed para steps)

*/

var t = tween_to(self, 0.1, array("blend", c_red ) );
    var delay = tween_get_endtime(t);
    instance_create_elipseTween_center(x, y - 24, g_gui_ancho - 10, 20, c_white, ease_backinout, 0.4, 0.9, false, 0, -100);
    
t = tween_to(self, 0.1, array("delay", delay, "blend", c_white) );
    delay = tween_get_endtime(t);
    instance_create_elipseTween_center(x, y - 24, 400, 400, c_red, ease_bounceout, 0.6, 0.6, false, delay, -100);
    
    
t = tween_to(self, 0.1, array("delay", delay, "blend", c_yellow)) ;
    delay = tween_get_endtime(t);
    
t = tween_to(self, 0.1, array("delay", delay, "blend", c_white)) ;
    delay = tween_get_endtime(t);
t = tween_to(self, 0.1, array("delay", delay, "timeblend", c_red)) ;
    delay = tween_get_endtime(t);
t = tween_to(self, 0.1, array("delay", delay, "blend", c_white)) ;
    delay = tween_get_endtime(t);
t = tween_to(self, 0.1, array("delay", delay, "blend", c_red)) ;
    delay = tween_get_endtime(t);
t = tween_to(self, 0.1, array("delay", delay, "blend", c_white)) ;
    delay = tween_get_endtime(t);
    
t = tween_to(self, 0.5, array("delay", delay, "y", y - 20, "draw_xscale", 0.5 * mi_dir, "draw_yscale", 1.5, "alpha", 0 , "ease", ease_quadout ) );
    
    instance_create_elipseTween_center(x, y - 24, 500, 500, c_red, ease_bounceout, 0.3, 0.8, false, delay, -100);
    delay = tween_get_endtime(t);

return delay;
