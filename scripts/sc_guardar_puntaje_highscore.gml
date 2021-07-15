///sc_guardar_puntaje_highscore(int: nuevo_puntaje);
g_puntaje_maximo = g_puntaje_total;


playerprefs_set("puntaje_maximo", g_puntaje_maximo);
playerprefs_save(); 


//Nota: se llama desde ob_cartel_puntaje_maximo
