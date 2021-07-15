///sc_efecto_temblor(int: intensidad, segundos: duración)


/*

    Desc:
        Se crea un efecto de temblor usando view[0] con la intensidad y duración recibida
        
    Return: nada


*/

//Verificar primero que no exista otro efecto de temblor
if( instance_number(ob_efecto_temblor) == 0 ){ 

    with( instance_create(0, 0, ob_efecto_temblor) ){
    
        temblor_intensidad = argument0;
        alarm[0] = argument1 * room_speed;
    
    }
    
}
else{

    show_error("Ya existe otro objeto temblor ejecutandose", false );

}
