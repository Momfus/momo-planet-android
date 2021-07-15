///crear_objeto_orbital( obj_crear_orbital, numero_orbita)

/*

    @Descripción:
        Se crea un objeto con movimiento orbital y se señala en que posición del arreglo global debe ubicarse
    El angulo que empieza dividido 2 = indice en el arreglo
    
        El segundo valor es la orbita que se desea (ver sc_armar_arreglo_mov_orbital para saber cuales hay).
       
    @Nota: en velocidad 2; el angulo 180 esta en el indice 90; el angulo 0 (espejo) esta en el indice 0
    @Nota: al cambiar los angulos de izquierda o derecha, cambiar lo necesario de sc_orbita_obstaculo_puntaje
                                       
    @Return: 
        void

*/

//---> Argumentos del método <---
var obj_orb = argument0,
    orbita = argument1,
    ind  = 0,
    xx = 0,
    yy = 0,
    ang_aux = 0;    
    
//---> Inicio del método <---  
if( g_pta_vel_dir > 0 ){ 

    ang_aux = 224; 
    ind = 112;

}
else{ 

    ang_aux = 316; 
    ind = 158;

    
}

xx = global.arreglo_mov_orbital_x[orbita, ind];
yy = global.arreglo_mov_orbital_y[orbita, ind];

with( instance_create(xx, yy, obj_orb) ){ 

    mi_ind_orbita = orbita;   
    
    mi_ind_pos = ind;
    mi_planeta_ang = ang_aux; 

    
}
