// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.16 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.16;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:0,x:34250,y:31953,varname:node_0,prsc:2|normal-83-RGB,custl-7253-OUT,olwid-2047-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:37,x:33845,y:32016,varname:node_37,prsc:2;n:type:ShaderForge.SFN_Dot,id:40,x:32931,y:32250,varname:node_40,prsc:2,dt:4|A-42-OUT,B-41-OUT;n:type:ShaderForge.SFN_NormalVector,id:41,x:32722,y:32344,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:42,x:32722,y:32223,varname:node_42,prsc:2;n:type:ShaderForge.SFN_Dot,id:52,x:32931,y:32423,varname:node_52,prsc:2,dt:0|A-41-OUT,B-62-OUT;n:type:ShaderForge.SFN_Add,id:55,x:33872,y:32289,varname:node_55,prsc:2|A-84-OUT,B-9449-OUT,C-265-OUT;n:type:ShaderForge.SFN_Power,id:58,x:33133,y:32523,cmnt:Specular Light,varname:node_58,prsc:2|VAL-52-OUT,EXP-244-OUT;n:type:ShaderForge.SFN_HalfVector,id:62,x:32722,y:32483,varname:node_62,prsc:2;n:type:ShaderForge.SFN_LightColor,id:63,x:33872,y:32155,varname:node_63,prsc:2;n:type:ShaderForge.SFN_Multiply,id:64,x:34056,y:32155,varname:node_64,prsc:2|A-37-OUT,B-63-RGB,C-55-OUT;n:type:ShaderForge.SFN_Color,id:80,x:33368,y:32178,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6544118,c2:0.8426978,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:82,x:33368,y:31980,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:_Diffuse,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:630f164e44edb4d848a0fc4d010cfb42,ntxv:2,isnm:False|UVIN-272-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:83,x:33618,y:31854,ptovrint:False,ptlb:Normals,ptin:_Normals,varname:_Normals,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c6dfb00dbee6bc044a8a3bb22e56e064,ntxv:3,isnm:True|UVIN-272-UVOUT;n:type:ShaderForge.SFN_Multiply,id:84,x:33551,y:32165,cmnt:Diffuse Light,varname:node_84,prsc:2|A-82-RGB,B-80-RGB,C-264-OUT;n:type:ShaderForge.SFN_AmbientLight,id:187,x:33551,y:32308,varname:node_187,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:216,x:33133,y:32423,ptovrint:False,ptlb:Bands,ptin:_Bands,varname:_Bands,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Slider,id:239,x:31984,y:32591,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Gloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8205128,max:1;n:type:ShaderForge.SFN_Add,id:240,x:32722,y:32640,varname:node_240,prsc:2|A-242-OUT,B-241-OUT;n:type:ShaderForge.SFN_Vector1,id:241,x:32554,y:32728,varname:node_241,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:242,x:32554,y:32578,varname:node_242,prsc:2|A-239-OUT,B-243-OUT;n:type:ShaderForge.SFN_Vector1,id:243,x:32141,y:32661,varname:node_243,prsc:2,v1:3;n:type:ShaderForge.SFN_Exp,id:244,x:32893,y:32640,varname:node_244,prsc:2,et:0|IN-240-OUT;n:type:ShaderForge.SFN_Vector1,id:255,x:33572,y:32555,varname:node_255,prsc:2,v1:5;n:type:ShaderForge.SFN_Posterize,id:264,x:33368,y:32344,varname:node_264,prsc:2|IN-40-OUT,STPS-216-OUT;n:type:ShaderForge.SFN_Posterize,id:265,x:33368,y:32472,varname:node_265,prsc:2|IN-58-OUT,STPS-216-OUT;n:type:ShaderForge.SFN_TexCoord,id:272,x:33150,y:31902,varname:node_272,prsc:2,uv:3;n:type:ShaderForge.SFN_ValueProperty,id:2047,x:34031,y:32338,ptovrint:False,ptlb:Outline,ptin:_Outline,varname:node_2047,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.05;n:type:ShaderForge.SFN_Posterize,id:9449,x:33695,y:32198,varname:node_9449,prsc:2|IN-84-OUT,STPS-255-OUT;n:type:ShaderForge.SFN_Posterize,id:7253,x:34074,y:31953,varname:node_7253,prsc:2|IN-64-OUT,STPS-4502-OUT;n:type:ShaderForge.SFN_Vector1,id:4502,x:33981,y:31809,varname:node_4502,prsc:2,v1:2;proporder:80-82-83-216-239-2047;pass:END;sub:END;*/

Shader "Shader Forge/Examples/Custom Lighting" {
    Properties {
        _Color ("Color", Color) = (0.6544118,0.8426978,1,1)
        _Diffuse ("Diffuse", 2D) = "black" {}
        _Normals ("Normals", 2D) = "bump" {}
        _Bands ("Bands", Float ) = 2
        _Gloss ("Gloss", Range(0, 1)) = 0.8205128
        _Outline ("Outline", Float ) = 0.05
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers xbox360 ps3 
            #pragma target 3.0
            uniform float _Outline;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = mul(UNITY_MATRIX_MVP, float4(v.vertex.xyz + v.normal*_Outline,1));
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                return fixed4(float3(0,0,0),0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Normals; uniform float4 _Normals_ST;
            uniform float _Bands;
            uniform float _Gloss;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord3 : TEXCOORD3;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv3 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv3 = v.texcoord3;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normals_var = UnpackNormal(tex2D(_Normals,TRANSFORM_TEX(i.uv3, _Normals)));
                float3 normalLocal = _Normals_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv3, _Diffuse));
                float3 node_84 = (_Diffuse_var.rgb*_Color.rgb*floor(0.5*dot(lightDirection,normalDirection)+0.5 * _Bands) / (_Bands - 1)); // Diffuse Light
                float node_255 = 5.0;
                float node_4502 = 2.0;
                float3 finalColor = floor((attenuation*_LightColor0.rgb*(node_84+floor(node_84 * node_255) / (node_255 - 1)+floor(pow(dot(normalDirection,halfDirection),exp(((_Gloss*3.0)+0.0))) * _Bands) / (_Bands - 1))) * node_4502) / (node_4502 - 1);
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers xbox360 ps3 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Normals; uniform float4 _Normals_ST;
            uniform float _Bands;
            uniform float _Gloss;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord3 : TEXCOORD3;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv3 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv3 = v.texcoord3;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normals_var = UnpackNormal(tex2D(_Normals,TRANSFORM_TEX(i.uv3, _Normals)));
                float3 normalLocal = _Normals_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv3, _Diffuse));
                float3 node_84 = (_Diffuse_var.rgb*_Color.rgb*floor(0.5*dot(lightDirection,normalDirection)+0.5 * _Bands) / (_Bands - 1)); // Diffuse Light
                float node_255 = 5.0;
                float node_4502 = 2.0;
                float3 finalColor = floor((attenuation*_LightColor0.rgb*(node_84+floor(node_84 * node_255) / (node_255 - 1)+floor(pow(dot(normalDirection,halfDirection),exp(((_Gloss*3.0)+0.0))) * _Bands) / (_Bands - 1))) * node_4502) / (node_4502 - 1);
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
