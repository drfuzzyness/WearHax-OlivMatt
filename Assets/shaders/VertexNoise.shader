Shader "Custom/VertexNoise" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1) 
        _Multiplier ("Multip", Float) = 1.8 
        _Speed ("Speed", Float) = 1
        //_Multiplier ("Multip", Float) = (1.8)
    }
    SubShader { // Unity chooses the subshader that fits the GPU best
        Pass { // some shaders require multiple passes
            CGPROGRAM // here begins the part in Unity's Cg
 
            #pragma vertex vert // this specifies the vert function as the vertex shader 
            #pragma fragment frag // this specifies the frag function as the fragment shader
            #include "UnityCG.cginc"

            uniform float4 _Color;
            uniform float _Multiplier;
  			uniform float _Speed;
  			
            float4 vert(appdata_base input) : SV_POSITION // vertex shader 
            {
                // input.vertex.xyz = input.vertex.xyz + (input.normal * sin(_Time + (input.vertex.y + input.vertex.x + input.vertex.z) * 20 ));
                input.vertex.xyz = input.vertex.xyz + (_Multiplier * input.normal * sin(10 * _Time[1]/_Speed + (input.vertex.x + input.vertex.y + input.vertex.z) * 100));
                //input.vertex.x=input.vertex.x* sin( _Time[1] );
                return mul(UNITY_MATRIX_MVP, input.vertex);
            }
 
            float4 frag(void) : COLOR // fragment shader
            {
            
                return _Color;
            }
            
 
              ENDCG // here ends the part in Cg 
        }
    }
}