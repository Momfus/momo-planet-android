#define sc_nivel_seleccionar
///sc_nivel_seleccionar(bool:nivel_prueba)

/*

    @Descripción:
        Según la lista de niveles se selecciona el sprite del planeta, dificultad, fondo y tipo.
        La idea es que se seleccione aleatoriamente una cantidad de niveles de una dificultad, al terminar la cantidad
    de niveles necesario, se pasa al siguiente (siempre sin repetir el nivel que ya se ha estado a menos que ya no quede
    otro, en ese caso se reinicia las lista).
    
        La entrada es para testear en el caso que se esta probando cn el time_prueba
                                      
    @return: 
        void

*/

var temp_timeline = undefined;

//Verificar si es un nivel prueba o se crean normalmente.
if( argument0 == false ){

    //<<NORMAL>>
    
    var temp_bonus = false; 
    
    //Se verifica primero si se superó el limite de niveles por la dificultad realizados o si la lista esta vacia
    if( (nivel_cantidad_dificultad_hechos >= nivel_cantidad_dificultad_limite ) or ds_list_empty(nivel_lista_niveles) ){
    
        sc_nivel_cambiar_dificultad_siguiente();
        sc_nivel_armar_lista_niveles(nivel_dificultad);
        
        nivel_cantidad_dificultad_hechos = 0;
        
        temp_bonus = true
    
    }
    else{
    
        nivel_cantidad_dificultad_hechos++;
    
    }
    
    //Si pasa el conjunto de niveles de su dificutlad, va a una sección bonus de solo monedas, sino saca del listado armado
    if( temp_bonus == false ){ 
        
        temp_timeline = ds_list_find_value(nivel_lista_niveles, 0);
        ds_list_delete(nivel_lista_niveles, 0);
        
    }
    else{
    
        temp_timeline = time_nivel_bonus;
    
    }


}
else{

    //<<PRUEBA>>
    
    nivel_dificultad = "facil";
    temp_timeline = time_prueba;
    /*
    nivel_dificultad = "dificil";
    temp_timeline = time_nivel_dificil_1;
*/


}


//Asignación de timeline, cambios de fondo y planeta
control_generador.timeline_index = temp_timeline;

//Cambio de fondos y planeta según dificultad
sc_nivel_cambiar_fondo(nivel_dificultad, nivel_cantidad_dificultad_hechos);
sc_nivel_cambiar_planeta(nivel_dificultad);





#define sc_nivel_cambiar_fondo
///sc_nivel_cambiar_fondo(string:dificultad, int:numero)

/*
    @Descripción:
        Se cambia el background del fondo de nivel indicado según dificultad

    @return:
        void


*/

var temp_dificultad = argument0,
    temp_numero = argument1;

if( temp_numero == 0 ){ temp_numero = 1; }

temp_bg = asset_get_index( "bg_espacio_" + temp_dificultad + "_" + string(temp_numero) ); 


background_index[0] = temp_bg;

#define sc_nivel_cambiar_planeta
///sc_nivel_cambiar_planeta(string:dificultad)

/*
    @Descripción:
        Se cambia la imagen del planeta según la dificultad

    @return:
        void


*/
var temp_dificultad = argument0,
    temp_planeta_imagen = 0;


switch(temp_dificultad){

    ///Facil
    case "facil":{ 
        temp_planeta_imagen = irandom_range(0, 2); 
        break;
    }
    
    ///Medio
    case "medio":{ 
        temp_planeta_imagen = irandom_range(3, 5); 
        break;
    }
    ///Dificil
    case "dificil":{ 
        temp_planeta_imagen = irandom_range(6, 8); 
        break;
    }
}


with(ob_planeta){ image_index = temp_planeta_imagen; }

#define sc_nivel_cambiar_dificultad_siguiente
///sc_nivel_cambiar_dificultad_siguiente()

/*
    @Descripción:
        Se cambia la dificultad según la que está actualmente a la siguiente, si es la última se vuelve a empezar con la más baja.

    @return:
        void


*/


switch(nivel_dificultad){

    //Fácil
    case "facil":{ nivel_dificultad = "medio"; break; }    
    
    //Medio
    case "medio":{ nivel_dificultad = "dificil"; break; }
    
    //Dificil
    case "dificil":{ nivel_dificultad = "facil"; break; }

}