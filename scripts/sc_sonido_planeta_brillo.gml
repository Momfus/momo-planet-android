///sc_sonido_planeta_brillo()


var temp_sn = audio_play_sound( sn_menu_compra, 6, false);
audio_sound_gain(temp_sn, 0.6, 0);
audio_sound_pitch(temp_sn, random_range(0.3, 0.5 ) );
