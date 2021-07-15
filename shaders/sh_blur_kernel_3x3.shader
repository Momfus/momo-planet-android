//http://cs.uns.edu.ar/cg/clasespdf/GraphicShaders.pdf
//Explicación en página: (página 249)

attribute vec3 in_Position;          
attribute vec2 in_TextureCoord;           
varying vec2 vT;


void main(){

    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION]*vec4(in_Position.xyz,1.0);
    vT=in_TextureCoord;
    
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~
varying vec2 vT;

void main(){

 float blur = 500.0;
 float alpha=texture2D(gm_BaseTexture,vT).a;
 
 vec2 st=vT.xy;
 vec3 irgb=texture2D(gm_BaseTexture,vT).rgb;
 vec2 stp0=vec2(1./blur,0.);
 vec2 st0p=vec2(0.,1./blur);
 vec2 stpp=vec2(1./blur);
 vec2 stpm=vec2(1./blur,-1./blur);
 
 vec3 i00=irgb;
 
 vec3 im1m1=texture2D(gm_BaseTexture,vT-stpp).rgb;
 vec3 ip1p1=texture2D(gm_BaseTexture,vT+stpp).rgb;
 vec3 im1p1=texture2D(gm_BaseTexture,vT-stpm).rgb;
 vec3 ip1m1=texture2D(gm_BaseTexture,vT+stpm).rgb;
 vec3 im10=texture2D(gm_BaseTexture,vT-stp0).rgb;
 vec3 ip10=texture2D(gm_BaseTexture,vT+stp0).rgb; 
 vec3 i0m1=texture2D(gm_BaseTexture,vT-st0p).rgb;
 vec3 i0p1=texture2D(gm_BaseTexture,vT+st0p).rgb;
 
 
 vec3 target=vec3(0.0,0.0,0.0);
 
 target+=1.0 * (im1m1+ip1m1+ip1p1+im1p1);
 target+=2.0 * (im10+ip10+i0m1+i0p1);
 target+=4.0 * i00;
 target/=16.0;
 
 gl_FragColor=vec4(target,alpha);
 
}

