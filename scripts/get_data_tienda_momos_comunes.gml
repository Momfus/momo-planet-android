#define get_data_tienda_momos_comunes
///get_data_tienda_momos_comunes(int: pagina_tienda)

/*

    Desc:

        Según la página busca los datos de un formato json correspondiente y los devuelve para ser tratados en un ds_map
            
        El "id" que tienen es el número que los relaciona con los sprites que deben hacer referencia (el 0 es el básico 
que no está en la tienda)

    Return: 
        ds_map de un json

*/


switch(argument0){

    case 0:{ return get_data_tienda_momos_comunes_pag_0(); break; }
    case 1:{ return get_data_tienda_momos_comunes_pag_1(); break; }


}

#define get_data_tienda_momos_comunes_pag_0
///get_data_tienda_momos_comunes_pag_0()

return json_decode('
{

    "name_skin": "CLASSIC SKINS",
       
    "skin_1": {
        "name": "The Original Momo Space",
        "price": 10,
        "desc": "The \"orishinal\" momo with antiparraus. Isn´t cute? ",
        "id": "1"
    },
    "skin_2": {
        "name": "Momo Leia",
        "price": 20,
        "desc": "Help me Momo-Wan Kenobi, you´re my only hope",
        "id": "2"
    },
    "skin_3": {
        "name": "Drugo",
        "price": 30,
        "desc": "Be careful if you´re drinking alone, Drugo will send you home...Got milk?",
        "id": "3"
    },
    "skin_4": {
        "name": "Momo Sanchez",
        "price": 40,
        "desc": "Only a real macho can survive this... Andale andale andale!",
        "id": "4"
    },
    "skin_5": {
        "name": "BadFame",
        "price": 50,
        "desc": "Pure rhythm, red wine and substance... Juapishhhh!",
        "id": "5"
    },
    "skin_6": {
        "name": "Molcides",
        "price": 60,
        "desc": "His look can kill you, so don´t let him go away... Who´s this momo?",
        "id": "6"
    },
    "skin_7": {
        "name": "Charles \"Momo\" Jimenez ",
        "price": 70,
        "desc": "Dance with Momo all the night to the  rhythm of \"chiquitá\"... Who´s drank all my wine?",
        "id": "7"
    },
    "skin_8": {
        "name": "Top Mam",
        "price": 80,
        "desc": "He´ll take your breath away...with his cuteness",
        "id": "8"
    },
    "skin_9": {
        "name": "Careta Mustache",
        "price": 100,
        "desc": "He´d do everything to get some chocolate coins... I´m so bourgie now!",
        "id": "9"
    }
    


}

');

#define get_data_tienda_momos_comunes_pag_1
///get_data_tienda_momos_comunes_pag_1()

return json_decode('
{

    "name_skin": "COMING SOON",
       
    "skin_1": {
        "name": "undefined",
        "price": 500,
        "desc": "undefined",
        "id": "10"
    },
    "skin_2": {
        "name": "undefined",
        "price": 650,
        "desc": "undefined",
        "id": "11"
    },
    "skin_3": {
        "name": "undefined",
        "price": 550,
        "desc": "undefined",
        "id": "12"
    },
    "skin_4": {
        "name": "undefined",
        "price": 450,
        "desc": "undefined",
        "id": "13"
    },
    "skin_5": {
        "name": "undefined",
        "price": 550,
        "desc": "undefined",
        "id": "14"
    },
    "skin_6": {
        "name": "undefined",
        "price": 600,
        "desc": "undefined",
        "id": "15"
    },
    "skin_7": {
        "name": "undefined",
        "price": 700,
        "desc": "undefined",
        "id": "16"
    },
    "skin_8": {
        "name": "undefined",
        "price": 750,
        "desc": "undefined",
        "id": "17"
    },
    "skin_9": {
        "name": "undefined",
        "price": 500,
        "desc": "undefined",
        "id": "18"
    }
    


}

');