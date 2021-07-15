///sc_orbita_movimiento_arreglo()
/*
    Realizar el movimiento a traves del arreglo global armado en un principio mediante un índice
*/

if( mi_vel_dir > 0 ){

    if( mi_ind_pos < 179 ){ mi_ind_pos++; }
    else{ mi_ind_pos = 0; }

}
else{

    if( mi_ind_pos > 0 ){ mi_ind_pos--; }
    else{ mi_ind_pos = 179; }

}


x = global.arreglo_mov_orbital_x[mi_ind_orbita, mi_ind_pos]
y = global.arreglo_mov_orbital_y[mi_ind_orbita, mi_ind_pos]

mi_planeta_ang += mi_vel;
image_angle = mi_planeta_ang;

