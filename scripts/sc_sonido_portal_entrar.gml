///sc_sonido_portal_entrar()

audio_stop_sound(sn_portal_abierto);

var temp_sn = audio_play_sound(sn_portal_entrar, 9, false);
audio_sound_gain(temp_sn, 0.6, 0);
audio_sound_pitch(temp_sn, random_range(0.9, 1.25 ) );

