#define sc_creditos_pagina_dibujar
///sc_creditos_pagina_dibujar()

if( surface_exists(mi_surface) ){

    //Surface
    draw_surface_ext(mi_surface, x - (surface_get_width(mi_surface) * 0.5) * image_xscale,  y - (surface_get_height(mi_surface) * 0.5) * image_yscale, image_xscale, image_yscale, 0, c_white, image_alpha);
    
}
else{

    script_execute( asset_get_index("sc_creditos_pagina_dibujar_" + string(round(mi_pagina) ) ) );


}


#define sc_creditos_pagina_dibujar_0
///sc_creditos_pagina_dibujar_0()


//Crear surface
mi_surface = surface_create(mi_ancho, mi_alto);

var temp_medio_x = mi_ancho * 0.5,
    temp_medio_y = mi_alto * 0.5;

surface_set_target(mi_surface);

    draw_clear_alpha(c_white,0); //Limpia el surface priemro en una hoja en blanco

    
    // Momo adorno aleatorio
    
    var temp_momo_type = asset_get_index("sp_tienda_momo_comun_pag" + string( irandom( 1 ) ) );
    draw_sprite_ext(temp_momo_type, irandom(9), mi_ancho - 128, mi_alto - 110, 1.25, 1.25, 0, c_white, 1);
        
    // Información
    
    var temp_yy = 32;
    
    draw_set_colour(c_white);
    draw_set_font(fn_principal_medio);
    draw_set_halign(fa_middle);
    draw_set_valign(fa_top);
        
    
    var temp_str = "Momo Planet#developed by";
    draw_text_transformed(temp_medio_x, temp_yy, temp_str, 0.6, 0.6, 0);

    temp_yy += string_height(temp_str) * 0.6;
    
    draw_sprite(sp_logo_crios, 0, temp_medio_x, temp_yy);
    
    temp_yy += sprite_get_height(sp_logo_crios) + 16;
    
    draw_set_font(fn_texto_medio);
    
    //Web Page
    draw_set_colour(c_white);
        temp_str = "www.CriosDevs.com";
        draw_text_transformed(temp_medio_x, temp_yy, temp_str, 1, 1, 0)
        
    temp_yy += string_height(temp_str) + 20;
    
    //Lead Programmer / Game Designer
    draw_set_colour(c_black);
        temp_str = "Lead Programmer / Game Designer";
        draw_text_transformed(temp_medio_x, temp_yy, temp_str, 0.8, 0.8, 0)
    
    temp_yy += string_height(temp_str) * 0.8;
    draw_set_colour(c_white);
        temp_str = "Julián Muñoz Velázquez#< Momfus >";
        draw_text_transformed(temp_medio_x, temp_yy, temp_str, 1.25, 1.25, 0)
        
    temp_yy += string_height(temp_str) + 32;
        
    //Lead Artist
    draw_set_colour(c_black);
        temp_str = "Lead Artist";
        draw_text_transformed(temp_medio_x, temp_yy, temp_str, 0.8, 0.8, 0)
    
    temp_yy += string_height(temp_str) * 0.8;
    draw_set_colour(c_white);
        temp_str = "Mariel Astorga";
        draw_text_transformed(temp_medio_x, temp_yy, temp_str, 1.25, 1.25, 0)
    
    temp_yy += string_height(temp_str) + 32;
            
    //Music / Sound designer
    draw_set_colour(c_black);
        temp_str = "Music / Sound designer";
        draw_text_transformed(temp_medio_x, temp_yy, temp_str, 0.8, 0.8, 0)
    
    temp_yy += string_height(temp_str) * 0.8;
    draw_set_colour(c_white);
        temp_str = "Alvaro Stöckle";
        draw_text_transformed(temp_medio_x, temp_yy, temp_str, 1.25, 1.25, 0)
    
    temp_yy += string_height(temp_str) + 32;
    
    //Helper Artist
    draw_set_colour(c_black);
        temp_str = "Helper Artist";
        draw_text_transformed(temp_medio_x, temp_yy, temp_str, 0.8, 0.8, 0)
    
    temp_yy += string_height(temp_str) * 0.8;
    draw_set_colour(c_white);
        temp_str = "Julia Villanueva";
        draw_text_transformed(temp_medio_x, temp_yy, temp_str, 1.25, 1.25, 0)
    
    temp_yy += string_height(temp_str) + 32;
    
    //Helper Programmer / SCRUM Master
    draw_set_colour(c_black);
        temp_str = "Helper Programmer / SCRUM Master";
        draw_text_transformed(temp_medio_x, temp_yy, temp_str, 0.8, 0.8, 0)
    
    temp_yy += string_height(temp_str) * 0.8;
    draw_set_colour(c_white);
        temp_str = "Javier Bravin#< Jafi >";
        draw_text_transformed(temp_medio_x, temp_yy, temp_str, 1.25, 1.25, 0)
    
    
surface_reset_target();    

#define sc_creditos_pagina_dibujar_1
///sc_creditos_pagina_dibujar_1()


//Crear surface
mi_surface = surface_create(mi_ancho, mi_alto);

var temp_medio_x = mi_ancho * 0.5,
    temp_medio_y = mi_alto * 0.5;

surface_set_target(mi_surface);

    draw_clear_alpha(c_white,0); //Limpia el surface priemro en una hoja en blanco
    
    // Momo adorno aleatorio
    
    var temp_momo_type = asset_get_index("sp_tienda_momo_comun_pag" + string( irandom( 1 ) ) );
    draw_sprite_ext(temp_momo_type, irandom(9), mi_ancho - 128, mi_alto - 110, 1.25, 1.25, 0, c_white, 1);
        
    
    // Información
    
    var temp_yy = 32;
    
    draw_set_colour(c_black);
    draw_set_font(fn_principal_medio);
    draw_set_halign(fa_middle);
    draw_set_valign(fa_top);
        
    
    var temp_str = "Thanks to our loyar testers";
    draw_text_ext_transformed(temp_medio_x, temp_yy, temp_str, -1, mi_ancho - 100, 1, 1, 0);

    temp_yy += string_height_ext(temp_str, -1, mi_ancho - 100) * 1.25;
    
    draw_set_colour(c_white);
    draw_set_font(fn_texto_medio);
    
    temp_str = "Adrian Fuenzalida#Alan Boglioli#Fernando Jofré#Gerardo Gaia#Ivann Andres Forte#Pablo Acosta#Raziel Gemeau#Valeria Cerroni Perea ";
    draw_text_ext(temp_medio_x, temp_yy, temp_str, -1, mi_ancho)
    
    
    
surface_reset_target();    

#define sc_creditos_pagina_dibujar_2
///sc_creditos_pagina_dibujar_2()


//Crear surface
mi_surface = surface_create(mi_ancho, mi_alto);

var temp_medio_x = mi_ancho * 0.5,
    temp_medio_y = mi_alto * 0.5;

surface_set_target(mi_surface);

    draw_clear_alpha(c_white,0); //Limpia el surface priemro en una hoja en blanco
    
    // Momo adorno aleatorio
    
    var temp_momo_type = asset_get_index("sp_tienda_momo_comun_pag" + string( irandom( 1 ) ) );
    draw_sprite_ext(temp_momo_type, irandom(9), mi_ancho - 128, mi_alto - 110, 1.25, 1.25, 0, c_white, 1);
        
    
    // Información
    
    var temp_yy = 32;
    
    draw_set_colour(c_black);
    draw_set_font(fn_principal_medio);
    draw_set_halign(fa_middle);
    draw_set_valign(fa_top);
        
    
    var temp_str = "Special thanks to:";
    draw_text_ext_transformed(temp_medio_x, temp_yy, temp_str, -1, mi_ancho - 100, 1, 1, 0);

    temp_yy += string_height_ext(temp_str, -1, mi_ancho - 100) * 1.25;
    
    draw_set_colour(c_white);
    draw_set_font(fn_texto_medio);
    
    temp_str = "Carlos Stöckle#Javier Mora#Juan Gerardo Cabrera#Gamers Mendocinos#Jarilla Geek#Super Cartucho#Our family and friends";
    draw_text_ext(temp_medio_x, temp_yy, temp_str, -1, mi_ancho)
    
    
    
surface_reset_target();    

#define sc_creditos_pagina_dibujar_3
///sc_creditos_pagina_dibujar_3()


//Crear surface
mi_surface = surface_create(mi_ancho, mi_alto);

var temp_medio_x = mi_ancho * 0.5,
    temp_medio_y = mi_alto * 0.5;

surface_set_target(mi_surface);

    draw_clear_alpha(c_white,0); //Limpia el surface priemro en una hoja en blanco
    
    // Momo adorno aleatorio
    
    var temp_momo_type = asset_get_index("sp_tienda_momo_comun_pag" + string( irandom( 1 ) ) );
    draw_sprite_ext(temp_momo_type, irandom(9), mi_ancho - 128, mi_alto - 110, 1.25, 1.25, 0, c_white, 1);
        
    
    // Información
    
    var temp_yy = 32;
    
    draw_set_colour(c_black);
    draw_set_font(fn_principal_medio);
    draw_set_halign(fa_middle);
    draw_set_valign(fa_top);
        
    
    // Tweenline
    var temp_str = "Animation powered by";
    draw_text_transformed(temp_medio_x, temp_yy, temp_str, 1, 1, 0);

    temp_yy += string_height(temp_str);
    
    draw_sprite(sp_logo_tweenline, 0, temp_medio_x, temp_yy);
    
    temp_yy += sprite_get_height(sp_logo_tweenline) + 16;
    
    draw_set_font(fn_texto_medio);
    
    //Web Page
    draw_set_font(fn_texto_medio);
    draw_set_colour(c_white);
        temp_str = "www.CIBERMAN.net/tweenline ";
        draw_text_transformed(temp_medio_x, temp_yy, temp_str, 0.8, 0.8, 0)
        
    temp_yy += string_height(temp_str) * 0.8 + 100;
    
    // GMS
    draw_set_colour(c_black);
    draw_set_font(fn_principal_medio);
    
    temp_str = "Game made with";
    draw_text_transformed(temp_medio_x, temp_yy, temp_str, 1, 1, 0);

    temp_yy += string_height(temp_str);
    
    draw_sprite(sp_logo_gms, 0, temp_medio_x, temp_yy);
    
    
    draw_set_colour(c_white);
        
    
    
surface_reset_target();    