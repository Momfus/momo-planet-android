///sc_puntaje_cambiar(int: puntaje, bool: relativo, bool: puntaje_actual)

/*
    Desc:
        Se suma o se cambia el puntaje (según si es relativo o no) actual del nivel  y realiza una breve animación (si es que no estaba 
    realizandose ya)
    
    Return:
        void

*/
var puntaje = argument0,
    relativo = argument1,
    puntaje_actual = argument2; // True = cambiar puntaje actual de nivel; False = cambiar puntaje total de la partida
    
//Cambios en el puntaje
if( puntaje_actual ){

    if( relativo ){ g_puntaje_actual += puntaje; }
    else{ g_puntaje_actual = puntaje; }
    
}
else{

    if( relativo ){ g_puntaje_total  += puntaje; }
    else{ g_puntaje_total  = puntaje; }

}

//Animación
if( puntaje_actual ){

    if ( ob_hud_puntaje_actual.activado_cambio_suma == false ){
        
        with(ob_hud_puntaje_actual){
        
            activado_cambio_suma = true; 
            
            //Animación de rebote
            var t = tween_to(self, 0.1, array("y", y - 10, "ease", ease_linear) );
            var delay = tween_get_endtime(t);
           
            tween_to(self, 0.1, array("delay", delay, "y", ystart, "ease", ease_elasticin, "oncomplete", "user0") );
        }
                                                                    
    }

}
else{

    with( ob_hud_puntaje_total){
    
        var t = tween_to(self, 0.1, array("draw_xscale", 2, "draw_yscale", 2, "ease", ease_linear) );
        var delay = tween_get_endtime(t);
        
        tween_to(self, 0.2, array("delay", delay, "draw_xscale", 1.25, "draw_yscale", 1.25, "ease", ease_bounceout) );

    
    }

}
