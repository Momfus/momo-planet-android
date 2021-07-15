///instance_create_elipseTween_center(x, y, ancho, alto, color, easeTween, timeTween, alphaInicial, outline, delayTween, depth)

/*

    Desc:
         Crea un objeto que dibuja un elipse del color deseado animado con el "ease" especifiado (de la libreria Tweenline) desde el centro
        hasta el tamaño deseado. El tiempo pedido es en segundos. La transparencia va desde el alpha inicial recibido a cero (cuando se 
        destruye)
        
    Return: nada    

*/

var xx = argument0,
    yy = argument1,
    ancho_mitad = argument2 / 2, //Se hace el ancho y alto asi porque se expanda desde el centro
    alto_mitad = argument3 / 2,
    col = argument4,
    ease = argument5, //Libreria tweenline
    time = argument6, //En segundos
    alpha_ini = argument7,
    outline = argument8,
    delay = argument9, //En segundos
    mi_depth = argument10;

with( instance_create(xx, yy, ob_efecto_elipseTween) ){

    depth = mi_depth;

    mi_color = col;
    mi_outline = outline;
    
    //Animación
    mi_tween = tween_fromto( self, time, 
                        array("delay", delay, "alpha", alpha_ini, "draw_mitad_ancho", 0, "draw_mitad_alto", 0, "ease", ease), 
                        array("alpha", 0, "draw_mitad_ancho", ancho_mitad, "draw_mitad_alto", alto_mitad, "ease", ease, 
                            "oncomplete", "user0") 
                        );

}
