///sc_sonido_portal_aparece()


var temp_sn = audio_play_sound(sn_portal_aparece, 9, false);
audio_sound_gain(temp_sn, 0.6, 0);
audio_sound_pitch(temp_sn, random_range(0.9, 1.25 ) );

