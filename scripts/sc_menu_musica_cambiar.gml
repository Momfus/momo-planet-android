#define sc_menu_musica_cambiar
///sc_menu_musica_cambiar(enum_room: fondo_menu_cambiar)

with( control_musica ){
    
    switch(argument0){
    
        case menu_juego.inicio:{
        
            sc_menu_musica_cambiar_inicio();
            break;
        
        }
        
        case menu_juego.tienda_momos_comunes:{
        
            sc_menu_musica_cambiar_tienda_momos_comunes();
            break;
        
        }
        
        case menu_juego.creditos:{
        
            sc_menu_musica_cambiar_tienda_momos_comunes();
            break;
        
        }
    
    }

}

#define sc_menu_musica_cambiar_inicio
///sc_menu_musica_cambiar_inicio()

if not ( audio_is_playing( music_theme ) ){

    mi_musica_cambiando = true; 

    alarm[0] = -1;
    audio_stop_sound(mi_musica_actual);

    mi_musica_actual = music_theme;
    mi_musica_pantalla = music_theme;
    mi_musica_actual_loop_start = mi_musica_principal_loop_start;
    
    sc_music_smart_loop( true, 400 );

    mi_musica_cambiando = false;    
    
} 


#define sc_menu_musica_cambiar_tienda_momos_comunes
///sc_menu_musica_cambiar_tienda_momos_comunes()

if not ( audio_is_playing( music_shop ) ){

    mi_musica_cambiando = true; 

    alarm[0] = -1;
    audio_stop_sound(mi_musica_actual);
    
    mi_musica_actual = music_shop;
    mi_musica_pantalla = music_shop;
    mi_musica_actual_loop_start = mi_musica_shop_loop_start;
    
    sc_music_smart_loop( true, 400 );
    
    mi_musica_cambiando = false;     
    
}