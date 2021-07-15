///sc_nivel_armar_lista_niveles(string: dificultad)

/*

    @Descripción:
        Se crea la lista de niveles de la dificultad señalada con la cantidad definida de niveles a realizar en esa dificultad. La lista 
    se randomiza con los diferentes timelines para vaciarlo y que nunca se repitan los niveles de esa lista.
                                      
    @return: 
        void

*/

var temp_dificultad = argument0,
    temp_arreglo_dificultad = 0,
    temp_arreglo_dificultad_tamanio = 0;

//Se arma un arreglo único dependiendo de la dificultad
switch(temp_dificultad){

    //Facil
    case "facil":{
    
        for( var i = 0; i < nivel_cantidad_facil; i++ ){ temp_arreglo_dificultad[i] = nivel_arreglo_timelines_facil[i]; }
        temp_arreglo_dificultad_tamanio = nivel_cantidad_facil;
        break;
    
    }
    
    //Medio
    case "medio":{
    
        for( var i = 0; i < nivel_cantidad_medio; i++ ){ temp_arreglo_dificultad[i] = nivel_arreglo_timelines_medio[i]; }
        temp_arreglo_dificultad_tamanio = nivel_cantidad_medio;
        break;
    
    }
    
    //Dificil
    case "dificil":{
    
        for( var i = 0; i < nivel_cantidad_dificil; i++ ){ temp_arreglo_dificultad[i] = nivel_arreglo_timelines_dificil[i]; }
        temp_arreglo_dificultad_tamanio = nivel_cantidad_dificil;
        break;
    
    }

}

//Si la lista no existe (esta undefined) se crea, caso contrario se limpia (para asegurarse que no tenga nada)
if not( ds_exists(nivel_lista_niveles, ds_type_list) ){ nivel_lista_niveles = ds_list_create(); }
else{ ds_list_clear(nivel_lista_niveles) };

for( var i = 0; i < temp_arreglo_dificultad_tamanio; i++ ){

    ds_list_add(nivel_lista_niveles, temp_arreglo_dificultad[i]);
    
}

//Se mezcla para que la elección de niveles sea aleatoria (se leerá luego desde la primera y se irá quitando el mismo)
ds_list_shuffle(nivel_lista_niveles);

