// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'

Shader "Custom/LambertTesting" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
	}
	SubShader {
		Pass{
		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma vertex vert
		#pragma fragment frag
	
		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		uniform float4 _Color;

		struct vertexInput {
			float4 vertex : POSITION;
			float3 normal : NORMAL;
		};
		
		struct vertexOutput{
			float4 pos : SV_POSITION;
			float4 col : COLOR;
			};
			
		vertexOutput vert(vertexInput v){
		vertexOutput o;
		
		float3 normalDirection = mul(float4(v.normal, 0.0), unity_WorldToObject).xyz;
		float3 lightDirection;
		float atten = 1.0;
		
		lightDirection = normalize(_WorldSpaceLightPos0.xyz);
		
		o.col = float4(v.normal,1.0);
		o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
		return o;
		
		}
		
		float4 frag(vertexOutput i) : COLOR {
		return i.col;
		}

		ENDCG
		}
	} 
	FallBack "Diffuse"
}
