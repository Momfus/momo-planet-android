///sc_puntaje_trasladar(bool: ocultar_puntaje)

/*
    Desc:
        Se crea el objeto que hace un efecto de trasladar el puntaje actual al total. Si se desea ocultar, luego de hacer la animación,
    el cartel de puntaje total y puntaje local se van de la pantalla. Si el puntaje local es cero, no se muestra nada.
    
    Return:
        void

*/

if( g_puntaje_actual != 0 ){

    with( instance_create(g_pta_x, g_pta_y, ob_puntaje_traslado) ){
    
        sacar_puntajes_pantalla = argument0;
    
    }

}
else{

    if( argument0 == true ){
    
        tween_reverse(ob_hud_puntaje_total.mi_tween); 
        tween_reverse(ob_hud_puntaje_actual.mi_tween); 
    
    }
            
}

