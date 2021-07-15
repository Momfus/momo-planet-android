///sc_sonido_jugador_aparece()

var temp_sn = audio_play_sound(sn_momo_aparece, 3, false);
audio_sound_gain(temp_sn, 0.8, 0);
audio_sound_pitch(temp_sn, random_range(0.9, 1.5 ) );

