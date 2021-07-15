///sc_sonido_portal_abierto()


var temp_sn = audio_play_sound(sn_portal_abierto, 8, true);
audio_sound_gain(temp_sn, 0.3, 0);
audio_sound_pitch(temp_sn, random_range(1, 1.25 ) );

