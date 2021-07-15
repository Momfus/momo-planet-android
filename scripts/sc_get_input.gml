///sc_get_input()

/*

    Desc: 
        Script general que obtiene todos los inputs necesarios en el juego. Los demás
    acceden a los atributos del control_input para saber su estado. 
    
        Debe llamarse al menos una vez en el evento "create" del control_input para
    inicializar los atributos.
    
        Es bueno tener divididos los que son para menú, mover personaje, accionar, volver, etcétera.

    Return: nada
        
*/

//Control general

click_derecho = false; 

if( os_type == os_windows ){

    click_derecho = mouse_check_button_pressed(mb_right) ;

}

tap_simple = mouse_check_button_pressed(mb_left) xor mouse_check_button_pressed(mb_right) ;;
 


//Botón de volver 
tap_back = keyboard_check_pressed(vk_backspace);
