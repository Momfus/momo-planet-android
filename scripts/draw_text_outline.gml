///draw_text_outline(x,y,str,int: borde_grosor,borde_color,borde_fidelidad)

/*

    Desc: 
        Dibujar un texto con un borde del grosor y color señalado
        La fidelidad del borde es que tan precesiso se quiere (recomendado 4 para chico, 8 para medio y 16 para grandes...TENER CUIDADO CON LA PERFORMANCE)
    

    Return: nada
    
    Nota:
    
        > Basado en otro código casi en su totalidad realizado por www.nalgames.com 
        > No abusar de esto debido a que usa en demasia el evento draw (solo para pequeños textos, sino convendria algo con shaders)
        
*/

var temp_x = argument0,
    temp_y = argument1,
    temp_str = argument2,
    temp_borde_grosor = argument3,
    temp_borde_color= argument4,
    temp_borde_fidelidad = argument5,
    temp_actual_col = draw_get_color();


draw_set_color(temp_borde_color);

for(var i = 45; i < 405; i += 360/temp_borde_fidelidad){
    draw_text(temp_x + lengthdir_x(temp_borde_grosor, i), temp_y + lengthdir_y(temp_borde_grosor, i), temp_str);
}

draw_set_color(temp_actual_col);

draw_text(temp_x, temp_y, temp_str);
