Shader "Toon/Basic" {
	Properties {
		_Color ("Main Color", Color) = (.5,.5,.5,1)
		_MainTex ("Base (RGB)", 2D) = "white" {}
		_ToonShade ("ToonShader Cubemap(RGB)", CUBE) = "" { }
				_Multiplier ("Multip", Float) = 1.8 
        _Speed ("Speed", Float) = 1
	}


	SubShader {
		Tags { "RenderType"="Opaque" }
		Pass {
			Name "BASE"
			Cull Off
			
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fog

			#include "UnityCG.cginc"

			sampler2D _MainTex;
			samplerCUBE _ToonShade;
			float4 _MainTex_ST;
			float4 _Color;
				
            uniform float _Multiplier;
  			uniform float _Speed;

			struct appdata {
				float4 vertex : POSITION;
				float2 texcoord : TEXCOORD0;
				float3 normal : NORMAL;
			};
			
			struct v2f {
				float4 pos : SV_POSITION;
				float2 texcoord : TEXCOORD0;
				float3 cubenormal : TEXCOORD1;
				UNITY_FOG_COORDS(2)
			};

			v2f vert (appdata input)
			{
				v2f o;
					  input.vertex.xyz = input.vertex.xyz + (_Multiplier * input.normal * sin(10 * _Time[1]/_Speed + (input.vertex.x + input.vertex.y + input.vertex.z) * 100));
				o.pos = mul (UNITY_MATRIX_MVP, input.vertex);
				o.texcoord = TRANSFORM_TEX(input.texcoord, _MainTex);
				o.cubenormal = mul (UNITY_MATRIX_MV, float4(input.normal,0));
				UNITY_TRANSFER_FOG(o,o.pos);
				return o;
			}

			fixed4 frag (v2f i) : SV_Target
			{
				fixed4 col = _Color * tex2D(_MainTex, i.texcoord);
				fixed4 cube = texCUBE(_ToonShade, i.cubenormal);
				fixed4 c = fixed4(2.0f * cube.rgb * col.rgb, col.a);
				UNITY_APPLY_FOG(i.fogCoord, c);
				return c;
			}
			ENDCG			
		}
	} 

	Fallback "VertexLit"
}
