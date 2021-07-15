///sc_menu_tienda_momos_comunes_buscar(int: accion [0<=accion<=2])

/*

    Desc:
        Se busca en la página actual la información necesaria de cada elemento para ver si puede comprarse o si se muestra información.
    
        0 = Anterior página
        1 = Aprecen por primera vez
        2 = Siguiente página
        
    Returnd: void

*/

var temp_x_ini =  164, // 72 + 64 + 16
    temp_y_ini = 345,
    temp_mover_x = 0;

//Cambiar valores de x e y de inicio si es anterior o siguiente pagina    
switch( argument0 ){

    case 0:{ temp_mover_x = -g_view_ancho; break; }
    case 2:{ temp_mover_x = + g_view_ancho; break; }

}

var temp_index_skin = 1,
    temp_bloqueado,
    temp_skin_playerpref,
    temp_data_skin = noone;
    
//Fila
for( var i = 0; i < 3; i++ ){

    //Columna
    for( var j = 0; j < 3; j++ ){
    
        //Buscar datos del elemento    
        temp_data_skin = mi_ds_map_skins[? "skin_" + string(temp_index_skin) ];
    
        //Crear elemento
        with( instance_create(temp_x_ini + ( 195 * j ), temp_y_ini + ( 262 * i ), ob_tienda_momo_comun_elemento ) ){
        
            other.mi_elementos_tienda_id[i,j] = self.id;
            self.x += temp_mover_x;
            self.mi_elemento_nro = (temp_index_skin - 1);
            
            //Carga de datos
            self.mi_data = json_decode( json_encode( other.mi_ds_map_skins[? "skin_" +  string(temp_index_skin)] ) );
            
            //Ver si no es un elemento aun no realizado (sacar esto cuando no sea necesario)
            if ( mi_data[? "name"] != "undefined" ){ 
                
                //Determinar si ha sido comprado o no (y en el caso afirmativo, asignar la sub-imagen correspondiente);
                temp_skin_playerpref = self.mi_data[? "id"];
                
                //---> En caso que no se haya seteado antes, se crea la referencia
                if not( playerprefs_has("skin_" + temp_skin_playerpref) ){ playerprefs_set("skin_" + temp_skin_playerpref, false); }
                
                
                temp_bloqueado = playerprefs_get("skin_" + temp_skin_playerpref, false);
                if( temp_bloqueado == true ){
                
                    mi_elemento_comprado = true;
                    sprite_index = mi_sprite_desbloqueado;
                    image_index = mi_elemento_nro;
                
                }
                
            }
            else{
            
                mi_elemento_comprado = true;
                sprite_index = sp_tienda_momo_comun_undefined;
                image_index = irandom(image_number - 1);;
                
            
            }
            
            
            
            //Aumentar contador
            ds_map_clear(temp_data_skin);
            temp_index_skin++;
            
        }
    
    }

}


