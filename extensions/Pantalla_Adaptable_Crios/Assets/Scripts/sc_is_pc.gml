///sc_is_pc()

/*

    Desc: Se fija si corresponde a un sistema operativo de escritorio o movil
    
    Return: boolean


*/


switch(os_type){

    //PC Escritorio
    case os_macosx:
    case os_windows:
    case os_linux:
    case os_win8native:{
    
        return true; 
    
        break;
    }
    
    //Dispositivos moviles
    case os_ios:
    case os_android:
    case os_winphone:
    case os_tizen:{
    
        return false;

        break;
        
    }

}
