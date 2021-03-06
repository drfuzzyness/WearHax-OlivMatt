﻿Shader "Custom/Glow" {
	Properties {
	
		_ColorTint("Color Tint", Color) =(1,1,1,1)
		_RimColor("Fresnel", Color) = (1,1,1,1)
		_RimPower("Rim Power", Range(1.0,6.0)) =3.0
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_BumpMap("NormalMap",2d) = "bump" {}
		
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		
		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Standard fullforwardshadows

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		struct Input {
			float4 color : Color;
			float2 uv_MainTex;
			float3 viewDir;
			float2 uv_BumpMap;
		};

		float4 _ColorTint;
		sampler2D _MainTex;
		sampler2D _BumpMap;
		float4 _RimColor;
		float _RimPower;

		void surf (Input IN, inout SurfaceOutputStandard o) {
			IN.color= _ColorTint;
			o.Albedo = tex2D (_MainTex, IN.uv_MainTex).rgb * IN.color;
			o.Normal = UnpackNormal(tex2D(_BumpMap, IN.uv_BumpMap));
			
			half rim= 1.0 - saturate (dot(normalize(IN.viewDir), o.Normal));
			o.Emission = _RimColor.rgb * pow(rim, _RimPower);
			}
			ENDCG
		
//		
//			// Albedo comes from a texture tinted by color
//			fixed4 c = tex2D (_MainTex, IN.uv_MainTex) * _Color;
//			o.Albedo = c.rgb;
//			// Metallic and smoothness come from slider variables
//			o.Metallic = _Metallic;
//			o.Smoothness = _Glossiness;
//			o.Alpha = c.a;
//		}
//		ENDCG
	} 
	FallBack "Diffuse"
}
