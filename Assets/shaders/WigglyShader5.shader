// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.16 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.16;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3138,x:33530,y:32580,varname:node_3138,prsc:2|emission-203-OUT,olwid-6270-OUT,olcol-8448-OUT,voffset-620-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32523,y:32001,ptovrint:False,ptlb:col1,ptin:_col1,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_TexCoord,id:9626,x:31712,y:32749,varname:node_9626,prsc:2,uv:0;n:type:ShaderForge.SFN_ComponentMask,id:2004,x:31890,y:32872,varname:node_2004,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-9626-V;n:type:ShaderForge.SFN_ObjectPosition,id:7445,x:32711,y:32685,varname:node_7445,prsc:2;n:type:ShaderForge.SFN_Tau,id:7513,x:32148,y:32725,varname:node_7513,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:4567,x:32194,y:33302,ptovrint:False,ptlb:var0,ptin:_var0,varname:node_4567,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Multiply,id:7308,x:32402,y:32995,varname:node_7308,prsc:2|A-607-OUT,B-4567-OUT,C-7513-OUT;n:type:ShaderForge.SFN_Sin,id:1307,x:32626,y:33020,varname:node_1307,prsc:2|IN-7308-OUT;n:type:ShaderForge.SFN_Add,id:607,x:32172,y:32995,varname:node_607,prsc:2|A-2004-OUT,B-8375-OUT;n:type:ShaderForge.SFN_Time,id:2192,x:31597,y:33033,varname:node_2192,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9960,x:32732,y:33178,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:620,x:32931,y:33178,varname:node_620,prsc:2|A-9960-OUT,B-6035-OUT,C-1307-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6035,x:32746,y:33412,ptovrint:False,ptlb:var1,ptin:_var1,varname:node_6035,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_ValueProperty,id:6270,x:32845,y:32685,ptovrint:False,ptlb:var2,ptin:_var2,varname:node_6270,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Color,id:6403,x:32970,y:32514,ptovrint:False,ptlb:col2,ptin:_col2,varname:node_6403,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.1691176,c3:0.1691176,c4:1;n:type:ShaderForge.SFN_Multiply,id:8375,x:31917,y:33059,varname:node_8375,prsc:2|A-2192-T,B-3369-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3369,x:31641,y:33208,ptovrint:False,ptlb:var3,ptin:_var3,varname:node_3369,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_TexCoord,id:908,x:31720,y:32017,varname:node_908,prsc:2,uv:0;n:type:ShaderForge.SFN_ComponentMask,id:6280,x:31948,y:32114,varname:node_6280,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-908-V;n:type:ShaderForge.SFN_Tau,id:5613,x:32156,y:31993,varname:node_5613,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:6276,x:32202,y:32570,ptovrint:False,ptlb:sinWavs,ptin:_sinWavs,varname:_var1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:3924,x:32408,y:32290,varname:node_3924,prsc:2|A-9766-OUT,B-6276-OUT,C-5613-OUT;n:type:ShaderForge.SFN_Sin,id:4725,x:32591,y:32299,varname:node_4725,prsc:2|IN-3924-OUT;n:type:ShaderForge.SFN_Add,id:9766,x:32180,y:32263,varname:node_9766,prsc:2|A-6280-OUT,B-9838-OUT;n:type:ShaderForge.SFN_Time,id:7265,x:31605,y:32301,varname:node_7265,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9838,x:31925,y:32327,varname:node_9838,prsc:2|A-7265-T,B-8716-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8716,x:31649,y:32476,ptovrint:False,ptlb:timeMult,ptin:_timeMult,varname:_var4,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:520,x:32789,y:32197,varname:node_520,prsc:2|A-4725-OUT,B-7241-RGB;n:type:ShaderForge.SFN_Fresnel,id:2159,x:32979,y:32180,varname:node_2159,prsc:2|NRM-520-OUT,EXP-6276-OUT;n:type:ShaderForge.SFN_Multiply,id:203,x:33253,y:32381,varname:node_203,prsc:2|A-2159-OUT,B-7241-RGB;n:type:ShaderForge.SFN_Multiply,id:8448,x:33280,y:32549,varname:node_8448,prsc:2|A-2159-OUT,B-6403-RGB;proporder:7241-6403-4567-6035-6270-3369-6276-8716;pass:END;sub:END;*/

Shader "Shader Forge/WigglyShader5" {
    Properties {
        _col1 ("col1", Color) = (0.07843138,0.3921569,0.7843137,1)
        _col2 ("col2", Color) = (1,0.1691176,0.1691176,1)
        _var0 ("var0", Float ) = 5
        _var1 ("var1", Float ) = 3
        _var2 ("var2", Float ) = 0
        _var3 ("var3", Float ) = 0.1
        _sinWavs ("sinWavs", Float ) = 2
        _timeMult ("timeMult", Float ) = 0.1
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _col1;
            uniform float _var0;
            uniform float _var1;
            uniform float _var2;
            uniform float4 _col2;
            uniform float _var3;
            uniform float _sinWavs;
            uniform float _timeMult;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_2192 = _Time + _TimeEditor;
                v.vertex.xyz += (v.normal*_var1*sin(((o.uv0.g.r+(node_2192.g*_var3))*_var0*6.28318530718)));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, float4(v.vertex.xyz + v.normal*_var2,1));
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 node_7265 = _Time + _TimeEditor;
                float node_2159 = pow(1.0-max(0,dot((sin(((i.uv0.g.r+(node_7265.g*_timeMult))*_sinWavs*6.28318530718))*_col1.rgb), viewDirection)),_sinWavs);
                return fixed4((node_2159*_col2.rgb),0);
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _col1;
            uniform float _var0;
            uniform float _var1;
            uniform float _var3;
            uniform float _sinWavs;
            uniform float _timeMult;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_2192 = _Time + _TimeEditor;
                v.vertex.xyz += (v.normal*_var1*sin(((o.uv0.g.r+(node_2192.g*_var3))*_var0*6.28318530718)));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 node_7265 = _Time + _TimeEditor;
                float node_2159 = pow(1.0-max(0,dot((sin(((i.uv0.g.r+(node_7265.g*_timeMult))*_sinWavs*6.28318530718))*_col1.rgb), viewDirection)),_sinWavs);
                float3 emissive = (node_2159*_col1.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _var0;
            uniform float _var1;
            uniform float _var3;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_2192 = _Time + _TimeEditor;
                v.vertex.xyz += (v.normal*_var1*sin(((o.uv0.g.r+(node_2192.g*_var3))*_var0*6.28318530718)));
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
