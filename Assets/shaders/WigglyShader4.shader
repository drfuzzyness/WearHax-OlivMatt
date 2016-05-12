// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.16 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.16;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3138,x:33530,y:32580,varname:node_3138,prsc:2|emission-7241-RGB,olwid-6270-OUT,olcol-6403-RGB,voffset-1707-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:33028,y:32468,ptovrint:False,ptlb:col1,ptin:_col1,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_TexCoord,id:9626,x:31712,y:32749,varname:node_9626,prsc:2,uv:0;n:type:ShaderForge.SFN_ComponentMask,id:2004,x:31890,y:32872,varname:node_2004,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-9626-V;n:type:ShaderForge.SFN_Tau,id:7513,x:32188,y:33252,varname:node_7513,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:4567,x:32155,y:33170,ptovrint:False,ptlb:var0,ptin:_var0,varname:node_4567,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Multiply,id:7308,x:32443,y:32987,varname:node_7308,prsc:2|A-607-OUT,B-4567-OUT,C-7513-OUT,D-6283-XYZ;n:type:ShaderForge.SFN_Sin,id:1307,x:32626,y:33020,varname:node_1307,prsc:2|IN-7308-OUT;n:type:ShaderForge.SFN_Add,id:607,x:32172,y:32995,varname:node_607,prsc:2|A-2004-OUT,B-8375-OUT;n:type:ShaderForge.SFN_Time,id:2192,x:31597,y:33033,varname:node_2192,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9960,x:32732,y:33178,prsc:2,pt:True;n:type:ShaderForge.SFN_Multiply,id:620,x:32931,y:33178,varname:node_620,prsc:2|A-9960-OUT,B-6035-OUT,C-1307-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6035,x:32746,y:33412,ptovrint:False,ptlb:var1,ptin:_var1,varname:node_6035,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_ValueProperty,id:6270,x:32985,y:32674,ptovrint:False,ptlb:var2,ptin:_var2,varname:node_6270,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Color,id:6403,x:32970,y:32844,ptovrint:False,ptlb:col2,ptin:_col2,varname:node_6403,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.1691176,c3:0.1691176,c4:1;n:type:ShaderForge.SFN_Multiply,id:8375,x:31917,y:33059,varname:node_8375,prsc:2|A-2192-T,B-3369-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3369,x:31641,y:33208,ptovrint:False,ptlb:var3,ptin:_var3,varname:node_3369,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_FragmentPosition,id:6283,x:32172,y:33385,varname:node_6283,prsc:2;n:type:ShaderForge.SFN_Add,id:1707,x:33114,y:33027,varname:node_1707,prsc:2|A-1307-OUT,B-620-OUT,C-7308-OUT;proporder:7241-6403-4567-6035-6270-3369;pass:END;sub:END;*/

Shader "Shader Forge/WigglyShader4" {
    Properties {
        _col1 ("col1", Color) = (0.07843138,0.3921569,0.7843137,1)
        _col2 ("col2", Color) = (1,0.1691176,0.1691176,1)
        _var0 ("var0", Float ) = 5
        _var1 ("var1", Float ) = 3
        _var2 ("var2", Float ) = 0
        _var3 ("var3", Float ) = 0.1
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
            uniform float4 _col2;
            uniform float _var3;
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
                float3 node_7308 = ((o.uv0.g.r+(node_2192.g*_var3))*_var0*6.28318530718*mul(unity_ObjectToWorld, v.vertex).rgb);
                float3 node_1307 = sin(node_7308);
                v.vertex.xyz += (node_1307+(v.normal*_var1*node_1307)+node_7308);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, float4(v.vertex.xyz + v.normal*_var2,1));
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 normalDirection = i.normalDir;
                return fixed4(_col2.rgb,0);
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
                float3 node_7308 = ((o.uv0.g.r+(node_2192.g*_var3))*_var0*6.28318530718*mul(unity_ObjectToWorld, v.vertex).rgb);
                float3 node_1307 = sin(node_7308);
                v.vertex.xyz += (node_1307+(v.normal*_var1*node_1307)+node_7308);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float3 emissive = _col1.rgb;
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
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_2192 = _Time + _TimeEditor;
                float3 node_7308 = ((o.uv0.g.r+(node_2192.g*_var3))*_var0*6.28318530718*mul(unity_ObjectToWorld, v.vertex).rgb);
                float3 node_1307 = sin(node_7308);
                v.vertex.xyz += (node_1307+(v.normal*_var1*node_1307)+node_7308);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
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
