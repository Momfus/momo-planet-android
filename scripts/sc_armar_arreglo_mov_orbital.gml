///sc_armar_arreglo_mov_orbital(vel_orbital, cant_steps)

/*

    @Descripción:
        Crea y arma los arreglos globales a utilizar en las diferentes orbitas con el tamaño indicado en 
    la cantidad de steps calculando en cada uno la posición tanto en "x" como "y" hasta dar un giro al planeta.
    
        Estos arreglos luego se recorreran y permite optimizar que no se esté calculando todo el tiempo (ya que
    la velocidad es constante y el tamaño del planeta tambien para todos los objetos que giren)
    
                                      
    @Return: 
        void
        
    @Versionado:
        v1.1 = Se usa un ar
        v1.0 = Por el momento es siempre con vel_orbital = 2 y cant_steps = 180.

*/

//---> Arreglos para optimizar el movimiento orbital, el primer valor es el número de orbita y el segundo guarda la posición a moverse en esa orbita
//Nota: Los siguientes dos no pude hacerlos macros porque no permitia luego recorrerlos por alguna razón
global.arreglo_mov_orbital_x[0,0] = 0;
global.arreglo_mov_orbital_y[0,0] = 0;


//<<Valores argumentos>>
var vel_orbital = argument0,
    cant_steps = argument1,
    ang_cambio = 0,
    planeta_dist_borde = g_pta_radio - 8,
    xx = global.pta_x,
    yy = global.pta_y,
    dist = 0; //Esto se ira cambiando según la distancia que se quiere de la orbita del planeta
    

//Código del script

//Orbita 0 (pegado al planeta)
for( var i = 0; i < cant_steps; i++ ){

    global.arreglo_mov_orbital_x[0, i] = sc_orbita_posicionar_x( xx, planeta_dist_borde, ang_cambio );  
    global.arreglo_mov_orbital_y[0, i] = sc_orbita_posicionar_y( yy, planeta_dist_borde, ang_cambio ); 
    ang_cambio += vel_orbital;
    
}
  

//Orbita 1 (usado especialmente para las monedas u objetos centrados que esten pegados al planeta) 
dist = 32;
for( var i = 0; i < cant_steps; i++ ){

    global.arreglo_mov_orbital_x[1, i] = sc_orbita_posicionar_x( xx, planeta_dist_borde + dist, ang_cambio );  
    global.arreglo_mov_orbital_y[1, i] = sc_orbita_posicionar_y( yy, planeta_dist_borde + dist, ang_cambio ); 
    ang_cambio += vel_orbital;
    
}

//Orbita 2
dist = 100;
for( var i = 0; i < cant_steps; i++ ){

    global.arreglo_mov_orbital_x[2, i] = sc_orbita_posicionar_x( xx, planeta_dist_borde + dist, ang_cambio );  
    global.arreglo_mov_orbital_y[2, i] = sc_orbita_posicionar_y( yy, planeta_dist_borde + dist, ang_cambio ); 
    ang_cambio += vel_orbital;
    
}

//Orbita 3
dist = 190;
for( var i = 0; i < cant_steps; i++ ){

    global.arreglo_mov_orbital_x[3, i] = sc_orbita_posicionar_x( xx, planeta_dist_borde + dist, ang_cambio );  
    global.arreglo_mov_orbital_y[3, i] = sc_orbita_posicionar_y( yy, planeta_dist_borde + dist, ang_cambio ); 
    ang_cambio += vel_orbital;
    
}
