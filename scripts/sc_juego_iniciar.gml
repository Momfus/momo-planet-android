///sc_juego_iniciar()

/*

    @Descripción:
        Inicializa atributos globales y estados generales del juego (debe hacerse al principio de todo)
                                      
    @Return: 
        void

*/
randomize();

//<<Variables Globales>>

//Lista de los skins comprados para usar
g_lista_skins_desbloqueados = noone;
sc_cargar_lista_skins();


//Puntaje
g_puntaje_actual = 0;
g_puntaje_total = 0;
g_puntaje_maximo = playerprefs_get("puntaje_maximo", 0);

//Otros globales
g_moneda_cantidad = playerprefs_get("moneda_cantidad", 0);



//Manejo de rooms
g_room_mitad_x = (room_width / 2);
g_room_mitad_y = (room_height / 2);

//Usados para guardar datos comunes de los planetas y el jugador(que cambian nomas al pasar de nivel, de esta forma acceder rapido desde otros objetos)
g_jug_ini_y = 0;

g_pta_x = g_room_mitad_x; //g_pta_x y g_pta_y se deben definir al principio del juego asi realiza los calculos de arreglos
g_pta_y = 750;
g_pta_radio = (sprite_get_width(sp_planeta_normal) / 2);
g_pta_vel = 0;
g_pta_vel_dir = 0;




//---> Objetos controladores persistentes (singletons)
instance_create(0, 0, control_prueba) //Borrar esto al compilar
instance_create(0, 0, control_pantalla_escalado);
instance_create(0, 0, control_input);
instance_create(0, 0, control_background);
instance_create(0, 0, control_musica);

//Nota: el obj_playerprefs como el obj_tweenline no hace falta crearlos porque sus funciones controlan prmiero que exista y sino lo crean.


//Calcular los movimientos orbitales de los objetos en el nivel (son globales ya que lo usan varios objetos simultaneamente)
sc_armar_arreglo_mov_orbital(2, 180);

//Escalar pantalla
sc_global_pantalla_escalar();


//Comenzar el room de presentación de juego
room_goto_next();
