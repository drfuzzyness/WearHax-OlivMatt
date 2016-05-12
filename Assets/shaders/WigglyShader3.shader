// Shader created with Shader Forge v1.16 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.16;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3138,x:33043,y:32676,varname:node_3138,prsc:2|emission-7241-RGB,olwid-6270-OUT,olcol-6403-RGB,voffset-620-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32845,y:32780,ptovrint:False,ptlb:color1,ptin:_color1,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_TexCoord,id:9626,x:31712,y:32749,varname:node_9626,prsc:2,uv:0;n:type:ShaderForge.SFN_ComponentMask,id:2004,x:31891,y:32873,varname:node_2004,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-9626-V;n:type:ShaderForge.SFN_ObjectPosition,id:7445,x:32388,y:32694,varname:node_7445,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8615,x:32502,y:32827,varname:node_8615,prsc:2|A-7445-Y,B-2004-OUT;n:type:ShaderForge.SFN_Tau,id:7513,x:32148,y:32725,varname:node_7513,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:4567,x:32358,y:33236,ptovrint:False,ptlb:var0,ptin:_var0,varname:node_4567,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:7308,x:32502,y:33035,varname:node_7308,prsc:2|A-607-OUT,B-4567-OUT,C-7513-OUT;n:type:ShaderForge.SFN_Sin,id:1307,x:32758,y:33009,varname:node_1307,prsc:2|IN-7308-OUT;n:type:ShaderForge.SFN_Add,id:607,x:32133,y:32997,varname:node_607,prsc:2|A-2004-OUT,B-8375-OUT;n:type:ShaderForge.SFN_Time,id:2192,x:31597,y:33033,varname:node_2192,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9960,x:32732,y:33178,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:620,x:32931,y:33178,varname:node_620,prsc:2|A-9960-OUT,B-6035-OUT,C-1307-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6035,x:32746,y:33412,ptovrint:False,ptlb:var1,ptin:_var1,varname:node_6035,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_ValueProperty,id:6270,x:32722,y:32637,ptovrint:False,ptlb:var2,ptin:_var2,varname:node_6270,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Color,id:6403,x:32847,y:32510,ptovrint:False,ptlb:color2,ptin:_color2,varname:node_6403,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:8375,x:31917,y:33059,varname:node_8375,prsc:2|A-2192-T,B-3369-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3369,x:31641,y:33208,ptovrint:False,ptlb:var3,ptin:_var3,varname:node_3369,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;proporder:7241-4567-6035-6270-6403-3369;pass:END;sub:END;*/

Shader "Shader Forge/WigglyShader3" {
    Properties {
        _color1 ("color1", Color) = (0.07843138,0.3921569,0.7843137,1)
        _var0 ("var0", Float ) = 2
        _var1 ("var1", Float ) = 3
        _var2 ("var2", Float ) = 0
        _color2 ("color2", Color) = (0.5,0.5,0.5,1)
        _var3 ("var3", Float ) = 3
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
            uniform float _var0;
            uniform float _var1;
            uniform float _var2;
            uniform float4 _color2;
            uniform float _var3;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float node_2004 = o.uv0.g.r;
                float4 node_2192 = _Time + _TimeEditor;
                v.vertex.xyz += (v.normal*_var1*sin(((node_2004+(node_2192.g*_var3))*_var0*6.28318530718)));
                o.pos = mul(UNITY_MATRIX_MVP, float4(v.vertex.xyz + v.normal*_var2,1));
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 normalDirection = i.normalDir;
                return fixed4(_color2.rgb,0);
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
            uniform float4 _color1;
            uniform float _var0;
            uniform float _var1;
            uniform float _var3;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float node_2004 = o.uv0.g.r;
                float4 node_2192 = _Time + _TimeEditor;
                v.vertex.xyz += (v.normal*_var1*sin(((node_2004+(node_2192.g*_var3))*_var0*6.28318530718)));
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float3 emissive = _color1.rgb;
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
                float node_2004 = o.uv0.g.r;
                float4 node_2192 = _Time + _TimeEditor;
                v.vertex.xyz += (v.normal*_var1*sin(((node_2004+(node_2192.g*_var3))*_var0*6.28318530718)));
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
