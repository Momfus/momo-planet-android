///sc_orbita_control_angulo()
/*

    Para controlar el objeto que rota alrededor del planeta y queremos tener un control
sobre en que angulo entre 0 y 360 grados se encuentra (por ejemplo, al dar una vuelta
debajo del jugador, 90°, suma un punto).

*/

if( mi_planeta_ang >= 360 ){ mi_planeta_ang -= 360; }
