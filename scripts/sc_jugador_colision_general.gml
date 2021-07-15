///sc_jugador_colision_general()
/*

 @Descripción:

     Se maneja cualquier colisión general y cada caso específico. Esto es usado 
    para movimientos horizontales y verticales (no rotación por ejemplo)   

 @return: 
    void

 @Nota:
    * Para usar este script debe tener el mismo nombre las variables de velocidad vertical y horizontal (por más que no use alguna)

 @Versionado:
    v1.1 = El movimiento de gravedad y efecto de rebote se independizó y se coloco un script especial para plataformas giratorias
    v1.0 = solo tiene colisión vertical (realizado para Momo Planet)
 
*/

//Colisiones con obstáculos que matan al jugador directamente
if( place_meeting(x, y, parent_obstaculo_danio) ){

    if( yprevious < y ){ y -= 10; }
    sc_jugador_morir(false);

}

//Colision vertical
if( place_meeting( x, y + 5, parent_solido ) ){
    
    //Efecto visual de apriete cuando toca el suelo
    if not(place_meeting(x, yprevious + 5, parent_solido) ){
        draw_xscale = 1.25 * mi_dir;
        draw_yscale = 0.75;
    }

    /*Se verifica si hay una plataforma que puede caminar encima el jugador, 
    en ese caso realiza lo necesario para manejar su colisión sino se colca encima
    del objeto solido o si muere*/
    var plataforma_colision =  noone;
    if( distance_to_object(parent_obstaculo_plataforma ) < 90 ){ plataforma_colision = instance_place(x,y,parent_obstaculo_plataforma); }
    
    if(plataforma_colision != noone ){ sc_jugador_colision_plataforma(plataforma_colision); }
    else{
    
        if( sobre_suelo == false ){
        
            //Se usa el "sign" para tomar en cuenta solo si es 1 (abajo) o -1 (arriba).
            var vel_sign = sign(vel_vertical)
        
            if( vel_sign != 0 ){ vel_sign = 1; } //Para evitar bucle infinito.
            
            //Se lo pega al suelo si le faltaba
            while( !place_meeting( x, y + vel_sign, parent_solido) ){ y += vel_sign; } 
            //En el caso que quedo pegado en el suelo (cayó con mucha velocidad) se lo coloca justo antes
            while( place_meeting(x, y, parent_solido) ){ y -= vel_sign; }            
            
            vel_vertical = 0;
            sobre_suelo = true;
                    
        }    
    
    }
    
}
else{

    sobre_suelo = false;
  
    
}
