// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.16 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.16;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3138,x:33340,y:33029,varname:node_3138,prsc:2|emission-8649-OUT,clip-5669-OUT,olwid-1628-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32505,y:32637,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_FragmentPosition,id:4107,x:32083,y:33055,varname:node_4107,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:4645,x:32688,y:33056,varname:node_4645,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1;n:type:ShaderForge.SFN_TexCoord,id:7781,x:32272,y:32637,varname:node_7781,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:9377,x:32746,y:32861,varname:node_9377,prsc:2|A-8430-OUT,B-871-OUT;n:type:ShaderForge.SFN_Lerp,id:1595,x:32903,y:32710,varname:node_1595,prsc:2|A-9711-RGB,B-7241-RGB,T-9377-OUT;n:type:ShaderForge.SFN_Color,id:9711,x:32646,y:32536,ptovrint:False,ptlb:node_9711,ptin:_node_9711,varname:node_9711,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:8430,x:32526,y:32822,ptovrint:False,ptlb:node_8430,ptin:_node_8430,varname:node_8430,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Posterize,id:8649,x:33115,y:32761,varname:node_8649,prsc:2|IN-1595-OUT,STPS-9041-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9041,x:32958,y:32958,ptovrint:False,ptlb:node_9041,ptin:_node_9041,varname:node_9041,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Multiply,id:871,x:32445,y:32893,varname:node_871,prsc:2|A-4107-Y,B-607-OUT;n:type:ShaderForge.SFN_ValueProperty,id:607,x:32182,y:32953,ptovrint:False,ptlb:ZposScale,ptin:_ZposScale,varname:node_607,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_RemapRange,id:6675,x:32357,y:33171,varname:node_6675,prsc:2,frmn:10,frmx:0,tomn:0,tomx:1|IN-4107-Y;n:type:ShaderForge.SFN_Add,id:5669,x:32889,y:33190,varname:node_5669,prsc:2|A-6675-OUT,B-3920-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3920,x:32603,y:33250,ptovrint:False,ptlb:addToCutoff,ptin:_addToCutoff,varname:node_3920,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:1628,x:33081,y:33299,ptovrint:False,ptlb:node_1628,ptin:_node_1628,varname:node_1628,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;proporder:7241-9711-8430-9041-607-3920-1628;pass:END;sub:END;*/

Shader "Shader Forge/FlourBalloon2" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _node_9711 ("node_9711", Color) = (0.5,0.5,0.5,1)
        _node_8430 ("node_8430", Float ) = 1
        _node_9041 ("node_9041", Float ) = 5
        _ZposScale ("ZposScale", Float ) = 0.5
        _addToCutoff ("addToCutoff", Float ) = 0
        _node_1628 ("node_1628", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
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
            uniform float _addToCutoff;
            uniform float _node_1628;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, float4(v.vertex.xyz + v.normal*_node_1628,1));
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                clip(((i.posWorld.g*-0.1+1.0)+_addToCutoff) - 0.5);
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float4 _node_9711;
            uniform float _node_8430;
            uniform float _node_9041;
            uniform float _ZposScale;
            uniform float _addToCutoff;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                clip(((i.posWorld.g*-0.1+1.0)+_addToCutoff) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = floor(lerp(_node_9711.rgb,_Color.rgb,(_node_8430*(i.posWorld.g*_ZposScale))) * _node_9041) / (_node_9041 - 1);
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
            uniform float _addToCutoff;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                clip(((i.posWorld.g*-0.1+1.0)+_addToCutoff) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
