///sc_transicion_fadeoutin_color(x, y, room_goto, color_principal, segundos: tiempo)

/*

    Desc:
        Crea la transición de fade out/in con el efecto de color deseado al room indicado.        
        
    Return: nada    

    NOTA: ¿Por qué joraca puse los primeros dos argumentos si es indiferenet? Cambiar para otros juegos (ahora japa sacarlo)
    
*/

with( instance_create( argument0, argument1, transicion_fadeoutin_color ) ){

    ir_room = argument2;
    mi_color = argument3;
    mi_tween = tween_to(self, argument4, array("alpha", 1, "ease", ease_cubicin, "oncomplete", "user0") );

    

}

