///sc_sonido_jugador_muere()

if( instance_exists(ob_recogible_portal) ){

    audio_stop_sound(sn_portal_abierto);

}

var temp_sn = audio_play_sound(choose(sn_momo_muere_1, sn_momo_muere_2), 6, false);
audio_sound_gain(temp_sn, 0.8, 0);
audio_sound_pitch(temp_sn, random_range(0.9, 1.5 ) );

