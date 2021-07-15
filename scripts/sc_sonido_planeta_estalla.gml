///sc_sonido_planeta_estalla()

if( instance_exists(ob_recogible_portal) ){

    audio_stop_sound(sn_portal_abierto);

}


var temp_sn = audio_play_sound( sn_momo_muere_2, 6, false);
audio_sound_gain(temp_sn, 1, 0);
audio_sound_pitch(temp_sn, random_range(0.3, 0.5 ) );
