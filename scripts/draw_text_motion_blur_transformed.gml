///draw_text_motion_blur_transformed(x,y, str, xscale, yscale, angle_str, blur_length, blur_direction)

/*
    Desc: 
        Se da un efecto "motion blur" a la cadena recibida en la dirección deseada

    Return:
        nada
    
*/

var xx = argument0,
    yy = argument1,
    str = argument2, 
    xscale = argument3,
    yscale = argument4,
    str_angle = argument5,
    blur_length = argument6,
    

if (blur_length > 0) {
    var step = 3, //Constante usada para saber cuanto del efecto debe dibujarse
        blur_direction = degtorad(argument7),
        blur_pos_x = cos(blur_direction),
        blur_pos_y = -sin(blur_direction);

    var alpha = draw_get_alpha() / (blur_length/step);
    
    if (alpha >= 1) {
        draw_text_transformed(xx,yy,str, xscale, yscale, str_angle);
        alpha = alpha /2;
    }

    for( var i = blur_length; i >= 0; i -= step) {
        draw_set_alpha(alpha);
        draw_text_transformed(xx + (blur_pos_x*i), yy + (blur_pos_y*i), str, xscale, yscale, str_angle);
        draw_set_alpha(1);
    }
} 
else {    
    draw_text_transformed(xx,yy,str, xscale, yscale, str_angle);
}


