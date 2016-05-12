Shader "OutlineOffset" {
	Properties {
		_Color ("Main Color", Color) = (.5,.5,.5,1)
		_OutlineColor ("Outline Color", Color) = (0,0,0,1)
		_Outline ("Outline width", Range (.002, 0.03)) = .005
		_MainTex ("Base (RGB)", 2D) = "white" { }
		_ToonShade ("ToonShader Cubemap(RGB)", CUBE) = "" { }
		
		_Multiplier ("Multip", Float) = 1.8 
        _Speed ("Speed", Float) = 1
	}
	
	CGINCLUDE
	#include "UnityCG.cginc"
	
	struct appdata {
		float4 vertex : POSITION;
		float3 normal : NORMAL;
	};

	struct v2f {
		float4 pos : POSITION;
		//UNITY_FOG_COORDS(0)
		fixed4 color : COLOR;
	};
	
	uniform float _Outline;
	uniform float4 _OutlineColor;
	
            uniform float _Multiplier;
  			uniform float _Speed;
  			
  			
//  			
// 	            float4 vert(appdata_base input) : SV_POSITION // vertex shader 
//            {
//                // input.vertex.xyz = input.vertex.xyz + (input.normal * sin(_Time + (input.vertex.y + input.vertex.x + input.vertex.z) * 20 ));
//                input.vertex.xyz = input.vertex.xyz + (_Multiplier * input.normal * sin(10 * _Time[1]/_Speed + (input.vertex.x + input.vertex.y + input.vertex.z) * 100));
//                //input.vertex.x=input.vertex.x* sin( _Time[1] );
//                return mul(UNITY_MATRIX_MVP, input.vertex);
//            }
//	

	ENDCG
	

	SubShader {
		Tags { "RenderType"="Opaque" }
		UsePass "Toon/Basic/BASE"
		Pass {
			Name "OUTLINE"
			Tags { "LightMode" = "Always" }
			Cull Off
			ZWrite On
			ColorMask RGB
		//	Blend SrcAlpha OneMinusSrcAlpha

			CGPROGRAM
			#pragma vertex vertNew
			#pragma fragment frag
			#pragma multi_compile_fog
			
				
				

	
	 	            float4 vertNew(appdata input) : SV_POSITION // vertex shader 
            {
                // input.vertex.xyz = input.vertex.xyz + (input.normal * sin(_Time + (input.vertex.y + input.vertex.x + input.vertex.z) * 20 ));
                input.vertex.xyz = input.vertex.xyz + (_Multiplier * input.normal * sin(10 * _Time[1]/_Speed + (input.vertex.x + input.vertex.y + input.vertex.z) * 100));
                //input.vertex.x=input.vertex.x* sin( _Time[1] );
                return mul(UNITY_MATRIX_MVP, input.vertex);
            }
	
			fixed4 frag(v2f i) : SV_Target
			{
			//	UNITY_APPLY_FOG(i.fogCoord, i.color);
				return i.color;
			}
			ENDCG
		}
	}
	
//	Fallback "Toon/Basic"
}
