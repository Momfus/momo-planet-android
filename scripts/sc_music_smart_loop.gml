///sc_music_smart_loop(from_start, offset_gain)

var temp_from_start = argument0,
    temp_offset_gain = argument1,
    temp_actual_lenght = noone;


// Control por si pasa que no esta sonando
if not( audio_is_playing(mi_musica_actual) ){

    alarm[0] = -1;
    mi_musica_actual = audio_play_sound(mi_musica_pantalla, 10, false);
    audio_sound_gain(mi_musica_actual, 0, 0);
    audio_sound_gain(mi_musica_actual, 0.6, temp_offset_gain);

}


// Por si se quiere desde un punto especifico del loop
if not( temp_from_start ){

    audio_sound_set_track_position(mi_musica_actual, mi_musica_actual_loop_start);
    temp_actual_lenght = audio_sound_length(mi_musica_actual) - mi_musica_actual_loop_start - 0.01;
    
} else {

    temp_actual_lenght = audio_sound_length(mi_musica_actual) - 0.01;

}



alarm[0] = room_speed * temp_actual_lenght;

