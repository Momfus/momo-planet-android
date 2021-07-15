///sc_orbita_posicionar_y(int: Y de planeta, float: radio del planeta que esta el objeto, float: angulo del objeto con respecto al planeta)

/*

    @Descripción:
        Se devuelve la nueva ubicación en X sobre el planeta que se encuentra el objeto con respecto al planeta que está
                                      
    @Return: 
        double: nueva coordenada Y para el jugador

*/


//---> Argumentos del método <---
var obj_pta_y = argument0,
    obj_pta_radio = argument1,
    obj_pta_ang = argument2,
    yy = 0;
    

//---> Inicio del método <---
yy = obj_pta_y + lengthdir_y(obj_pta_radio, obj_pta_ang);

return yy;
