#define __tweenline_SETTERS
/// __tweenline_SETTERS()
/*
    If you want to tween your custom propietry to make more complex 
    animations you can create your own property setter, simply create 
    a new script called set_myvariable and write: (replace myvariable 
    for the name of your custom variable)
    
        if (argument_count==0) {return myvariable;}
        myvariable = argument[0];
        
    In this way you can tween your custom variables in your objects.
    
    _______________________________________________________________
    
    WARNING1:    Then name the script MUST be something like set_myvariable.
                (Yes, the name NEEDS to start with set_ )
    _______________________________________________________________
                
    WARNING2: If you are targeting HTML5 platform, you MUST aditionally add your setter
    manually at the begining of the game, like:
        tween_system_setter_add("myvariable", set_myvariable); 
    This is due to a bug with the function asset_get_index in the HTML5 target.
    tween_system_setter_add will be removed when the Game Maker bug is solved.  
    _______________________________________________________________
        
    Note: It is advised to add custom property setters outside of __tweenline_SETTERS, 
    so, if the engine is updated, you can preserve your setters.
    
*/


// ========= default setters ==============


global._tw_SETTERS[? "x"] = set_x;
global._tw_SETTERS[? "y"] = set_y;
global._tw_SETTERS[? "xround"] = set_xround;
global._tw_SETTERS[? "yround"] = set_yround;
global._tw_SETTERS[? "speed"] = set_speed;
global._tw_SETTERS[? "hspeed"] = set_hspeed;
global._tw_SETTERS[? "vspeed"] = set_vspeed;
global._tw_SETTERS[? "direction"] = set_direction;
global._tw_SETTERS[? "depth"] = set_depth;
global._tw_SETTERS[? "friction"] = set_friction;
global._tw_SETTERS[? "gravity"] = set_gravity;
global._tw_SETTERS[? "gravity_direction"] = set_gravity_direction;
global._tw_SETTERS[? "image_speed"] = set_speed;
global._tw_SETTERS[? "image_index"] = set_image_index;
global._tw_SETTERS[? "image_alpha"] = set_image_alpha;
global._tw_SETTERS[? "image_angle"] = set_image_angle;
global._tw_SETTERS[? "image_scale"] = set_image_scale;
global._tw_SETTERS[? "image_xscale"] = set_image_xscale;
global._tw_SETTERS[? "image_yscale"] = set_image_yscale;
global._tw_SETTERS[? "image_blend"] = set_image_blend;
global._tw_SETTERS[? "health"] = set_health;
global._tw_SETTERS[? "score"] = set_score;

// ========== shorthands setters ===========

global._tw_SETTERS[? "speed"] = set_speed;
global._tw_SETTERS[? "index"] = set_image_index;
global._tw_SETTERS[? "alpha"] = set_image_alpha;
global._tw_SETTERS[? "angle"] = set_image_angle;
global._tw_SETTERS[? "scale"] = set_image_scale;
global._tw_SETTERS[? "xscale"] = set_image_xscale;
global._tw_SETTERS[? "yscale"] = set_image_yscale;
global._tw_SETTERS[? "blend"] = set_image_blend;

// ========= custom setters ==============

// Duplicate the following line and uncomment it, then replace myvariable for the name of your setter:

// global._tw_SETTERS[? "myvariable"] = set_myvariable;








#define set_x
if (argument_count==0) {return x;}
x = argument[0];

#define set_y
if (argument_count==0) {return y;}
y = argument[0];

#define set_xround
if (argument_count==0) {return x;}
x = round(argument[0]);

#define set_yround
if (argument_count==0) {return y;}
y = round(argument[0]);

#define set_speed
if (argument_count==0) {return speed;}
speed = argument[0];

#define set_hspeed
if (argument_count==0) {return hspeed;}
hspeed = argument[0];

#define set_vspeed
if (argument_count==0) {return vspeed;}
vspeed = argument[0];

#define set_direction
if (argument_count==0) {return direction;}
direction = argument[0];

#define set_depth
if (argument_count==0) {return depth;}
depth = argument[0];

#define set_friction
if (argument_count==0) {return friction;}
friction = argument[0];

#define set_gravity
if (argument_count==0) {return gravity;}
gravity = argument[0];

#define set_gravity_direction
if (argument_count==0) {return gravity_direction;}
gravity_direction = argument[0];

#define set_image_speed
if (argument_count==0) {return image_speed;}
image_speed = argument[0];

#define set_image_index
if (argument_count==0) {return image_index;}
image_index = argument[0];

#define set_image_alpha
if (argument_count==0) {return image_alpha;}
image_alpha = clamp(argument[0],0,1);

#define set_image_angle
if (argument_count==0) {return image_angle;}
image_angle = argument[0];

#define set_image_scale
if (argument_count==0) {return image_xscale;}
image_xscale = argument[0];
image_yscale = argument[0];

#define set_image_xscale
if (argument_count==0) {return image_xscale;}
image_xscale = argument[0];

#define set_image_yscale
if (argument_count==0) {return image_yscale;}
image_yscale = argument[0];

#define set_image_blend
if (argument_count==0) {return image_blend;}
image_blend = argument[0];

#define set_health
if (argument_count==0) {return health;}
health = argument[0];

#define set_score
if (argument_count==0) {return score;}
score = argument[0];
#define set_draw_yscale
if (argument_count==0) {return draw_yscale;}
draw_yscale = argument[0];

//Variable propia creada para algunos objetos

#define set_draw_xscale
if (argument_count==0) {return draw_xscale;}
draw_xscale = argument[0];

//Variable propia creada para algunos objetos

#define set_draw_mitad_ancho
if (argument_count==0) {return draw_mitad_ancho;}
draw_mitad_ancho = argument[0];

//Variable propia creada para algunos objetos

#define set_draw_mitad_alto
if (argument_count==0) {return draw_mitad_alto;}
draw_mitad_alto = argument[0];

//Variable propia creada para algunos objetos

#define set_path_position
if (argument_count==0) {return path_position;}
path_position = argument[0];



//Variable in-game de game maker que agregue para maniobrar en tweenline
#define set_mi_radio
if (argument_count==0) {return mi_radio;}
mi_radio = argument[0];
#define set_mi_shader_radio_actual
if (argument_count==0) {return mi_shader_radio_actual;}
mi_shader_radio_actual = argument[0];

//NOTA: Usado en el planeta para incrementar el efecto de absorver el color
#define set_mi_shader_mul_brillo
if (argument_count==0) {return mi_shader_mul_brillo;}
mi_shader_mul_brillo = argument[0];

//NOTA: Usado en shaders para incrementar el multiplicador de brillo
#define set_mi_offset
if (argument_count==0) {return mi_offset;}
mi_offset = argument[0];