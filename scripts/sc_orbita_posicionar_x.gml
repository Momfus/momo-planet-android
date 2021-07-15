///sc_orbita_posicionar_x(int: X de planeta, float: radio del planeta que esta el objeto, float: angulo del objeto con respecto al planeta)

/*

    @Descripción:
        Se devuelve la nueva ubicación en X sobre el planeta que se encuentra el objeto con respecto al planeta que está
                                      
    @Return: 
        double: nueva coordenada X para el jugador

*/


//---> Argumentos del método <---
var obj_pta_x = argument0,
    obj_pta_radio = argument1,
    obj_pta_ang = argument2,
    xx = 0;
    

//---> Inicio del método <---
xx = obj_pta_x + lengthdir_x(obj_pta_radio, obj_pta_ang);

return xx;
