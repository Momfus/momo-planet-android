///sc_sonido_jugador_salto()

var temp_sn = audio_play_sound(choose(sn_momo_salto_1, sn_momo_salto_2), 7, false);
audio_sound_gain(temp_sn, 0.6, 0);
audio_sound_pitch(temp_sn, random_range(0.6, 1.25 ) );

