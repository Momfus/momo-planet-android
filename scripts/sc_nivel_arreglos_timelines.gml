///sc_nivel_arreglos_timelines()

/*

    @Descripción:
        Crea los arreglos necesarios desde control_nivel con la cantidad de times_lines. Habrá tantos arreglos como niveles
    de dificultad.
                                      
    @return: 
        void

*/

var i = 0; //Puntero indice a usar en los diferentes arrelgos (se reinicia cada vez que se entra en el for)
    
//Niveles fáciles
nivel_arreglo_timelines_facil = 0;

for (i = 0; i < nivel_cantidad_facil; i++){

    nivel_arreglo_timelines_facil[i] = sc_obtener_timeline_nivel("facil", i+1);
    
};


//Niveles medios
nivel_arreglo_timelines_medio = 0;

for (i = 0; i < nivel_cantidad_medio; i++){

    nivel_arreglo_timelines_medio[i] = sc_obtener_timeline_nivel("medio", i+1);
    
};

//Niveles dificiles
nivel_arreglo_timelines_dificil = 0;

for (i = 0; i < nivel_cantidad_dificil; i++){

    nivel_arreglo_timelines_dificil[i] = sc_obtener_timeline_nivel("dificil", i+1);
    
};
