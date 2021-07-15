///sc_mostrar_mensaje(x,y,str: mensaje, boolean: en_desarrollo)

sc_botones_tap(false);


if not( instance_exists(ob_cartel_mensaje) ){

    with( instance_create(argument0, argument1, ob_cartel_mensaje) ){

        if( argument3 == true ){ 
        
            image_index = 0; 
            mi_mensaje = "# #" + argument2;
            
        }
        else{ 
        
            image_index = 1; 
            mi_mensaje = argument2;
            
        }
        
        
        mi_en_desarrollo = argument3;
    
        instance_create(x, y + (sprite_height / 2) + 60, ob_boton_ok);
        
    }
    
}
else{

    show_debug_message("ya existe otro cartel de mensaje");

}
