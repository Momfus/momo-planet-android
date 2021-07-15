///sc_jugador_colision_plataforma(obj: colision_plataforma)

/*

 @Descripción:

     Verifica si el jugador debe caminar encima al chocar una plataforma o morir como con las otras trampas, en caso que le falte poco para 
    llegar a la parte de arriba se lo coloca encima.

 @return: 
    void

*/

//Nombrar argumentos
var colision_plataforma = argument0;


/*Si el jugador estaba chocando a una obstaculo de tipo pared, se verifica si no está  
encima del mismo, sino verifica si no estaba cerca del borde para ayudar un poco*/
if( sobre_suelo == true ){

    if( y > ( colision_plataforma.mi_y_arriba + 8 ) ){ sc_jugador_morir(false) }

}
else{

    //Verificar si le faltaba poco para estar en la parte superior o no (en ese caso el jugador cambia a estado muerte)
    if not( position_meeting(x + 24 * mi_dir, y - 12, colision_plataforma ) ){ 
    
        //Si su velocidad era hacia arriba reduce su velocidad vertical para balancear con el movimiento
        if( sign(vel_vertical) < 0){ vel_vertical += GRAVEDAD*2; }  
        else{
        
            //Si estaba cayendo, desactiva temporalmente la gravedad para colocarse bien encima
            activar_gravedad = false;
            alarm[0] = 3;
            vel_vertical = 0;
            sobre_suelo = true;
            
        }
        
        y = colision_plataforma.mi_y_arriba; 
        
    }
    else{ sc_jugador_morir(false) }
    
}

