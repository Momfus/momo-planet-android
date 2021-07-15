///sc_global_pantalla_escalar()

/*

    Desc: 
        Al iniciar un juego generalmente se usa un rm_ini que inicializa todas las variables y crea todos los objetos necesarios,
    para luego inmediatamente pasar un siguiente room; esto impide que se adapte correctamente la pantalla por lo que al principio
    del siguiente room (al que se va) se llama este script. También se llama desde cualquier otro lado en el momento que se hace
    un cambio de la pantalla.


    Retrun: nada.
    
*/

with(control_pantalla_escalado){

    sc_pantalla_escalar();

}
