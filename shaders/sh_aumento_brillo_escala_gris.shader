//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float BrilloMultiplicador;

void main(){

    vec4 o_pixel = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);

    //Obtiene el color original del pixel.
    vec4 pixel_color = v_vColour * texture2D(gm_BaseTexture,v_vTexcoord);
    
    
    //Color en escala de grises con la luminocidad apropiada (por eso se usa esos valores exactos)
    float pixel_color_gris = dot(pixel_color,vec4(0.299,0.512,0.114,0));
    
    pixel_color.rgb = vec3(pixel_color_gris) * BrilloMultiplicador;
    
    //Set final color.
    gl_FragColor = pixel_color;


}

