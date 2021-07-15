///sc_nivel_destruir_planeta(boolean: solo_objetos)

/*

    @Descripción:
        Destruye todos los objetos relacionados con el planeta y si se lo indica, también el mismo planeta 

    @return:
        void

*/


var temp_solo_objetos = argument0;

//Destruir todos los objetos que estan en el planeta.
instance_destroy_other(parent_obstaculo_danio);
instance_destroy_other(parent_obstaculo_plataforma);
instance_destroy_other(parent_recogibles);

//Se decide si se destruye el planeta que contiene a los objetos también
if( temp_solo_objetos == false ){ 

    instance_destroy_other(ob_planeta); 
    instance_destroy_other(ob_hud_puntaje_actual); 
    
    
    
}

//Eferctos y otros
if( instance_exists(ob_lineas_explosion) ){ instance_destroy_other(ob_lineas_explosion); }


