//Pass in vertex color, texture coordinates and position.
attribute vec4 in_Colour;
attribute vec3 in_Position;
attribute vec2 in_TextureCoord;

//Pass vertex color, texture coordinates and position to fragment.
varying vec4 v_vColour;
varying vec2 v_vTexcoord;
varying vec2 v_vPosition; //Variables del vertex creada para tener la posición (X,Y) solamente

void main()
{
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position,1);

    //Set vertex color, texture coordinates and position.
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
    v_vPosition = in_Position.xy;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~//Get vertex color, texture coordinates and position from vertex.
varying vec4 v_vColour;
varying vec2 v_vTexcoord;
varying vec2 v_vPosition;

//Get circle position and radius.
uniform vec2 Posicion;
uniform float Radio;

void main()
{

    //Encuentra la longitud del círculo desde el centro relativo a la posición del pixel actual
    float pixel_pos = length(v_vPosition - Posicion );
    
    //Obtiene el color original del pixel.
    vec4 pixel_color = v_vColour * texture2D(gm_BaseTexture,v_vTexcoord);
    
    //Color en escala de grises con la luminocidad apropiada (por eso se usa esos valores exactos)
    float pixel_color_gris = dot(pixel_color,vec4(0.299,0.512,0.114,0));
    
    //Setea el color dentro de la escala de grises si está dentro del radio.
    if( pixel_pos < Radio ){ pixel_color.rgb = vec3(pixel_color_gris); }
    else{
    
        float borde = 10.0;
        if( pixel_pos >= Radio && pixel_pos <= (Radio + borde) ){
        
            pixel_color.rgb = vec3(0.0, 0.0, 0.0);
        
        }
    
    }

    //Set final color.
    gl_FragColor = pixel_color;
}
