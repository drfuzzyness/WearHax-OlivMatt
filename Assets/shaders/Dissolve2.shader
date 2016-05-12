// Shader created with Shader Forge v1.16 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.16;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3138,x:33514,y:32601,varname:node_3138,prsc:2|emission-7241-RGB,clip-4785-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32876,y:32804,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_TexCoord,id:6123,x:31453,y:32760,varname:node_6123,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:1001,x:32656,y:32670,varname:node_1001,prsc:2|A-7096-OUT,B-8920-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8920,x:32470,y:32532,ptovrint:False,ptlb:addOFfset,ptin:_addOFfset,varname:node_8920,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:3554,x:31744,y:32692,varname:node_3554,prsc:2|A-3204-UVOUT,B-2465-OUT;n:type:ShaderForge.SFN_Pi,id:2465,x:31579,y:32613,varname:node_2465,prsc:2;n:type:ShaderForge.SFN_Sin,id:6479,x:31925,y:32578,varname:node_6479,prsc:2|IN-3554-OUT;n:type:ShaderForge.SFN_Vector1,id:7780,x:31906,y:32861,varname:node_7780,prsc:2,v1:2;n:type:ShaderForge.SFN_Power,id:2623,x:32090,y:32578,varname:node_2623,prsc:2|VAL-6479-OUT,EXP-7780-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6223,x:32260,y:32677,varname:node_6223,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-2623-OUT;n:type:ShaderForge.SFN_Min,id:7096,x:32431,y:32688,varname:node_7096,prsc:2|A-6223-R,B-6223-G;n:type:ShaderForge.SFN_Sin,id:6685,x:33012,y:32361,varname:node_6685,prsc:2|IN-220-OUT;n:type:ShaderForge.SFN_Time,id:5342,x:32658,y:32407,varname:node_5342,prsc:2;n:type:ShaderForge.SFN_Multiply,id:220,x:32854,y:32558,varname:node_220,prsc:2|A-5342-TSL,B-1001-OUT,C-3360-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3360,x:32658,y:32324,ptovrint:False,ptlb:multTime,ptin:_multTime,varname:node_3360,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Panner,id:3204,x:31675,y:32911,varname:node_3204,prsc:2,spu:1,spv:1|UVIN-6123-UVOUT,DIST-2176-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2176,x:31426,y:33015,ptovrint:False,ptlb:pan,ptin:_pan,varname:node_2176,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Subtract,id:4785,x:33249,y:32456,varname:node_4785,prsc:2|A-6685-OUT,B-3108-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3108,x:33092,y:32330,ptovrint:False,ptlb:fade,ptin:_fade,varname:node_3108,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:7241-8920-3360-2176-3108;pass:END;sub:END;*/

Shader "Shader Forge/Dissolve2" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _addOFfset ("addOFfset", Float ) = 0
        _multTime ("multTime", Float ) = 1
        _pan ("pan", Float ) = 0
        _fade ("fade", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
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
            uniform float4 _Color;
            uniform float _addOFfset;
            uniform float _multTime;
            uniform float _pan;
            uniform float _fade;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float4 node_5342 = _Time + _TimeEditor;
                float2 node_6223 = pow(sin(((i.uv0+_pan*float2(1,1))*3.141592654)),2.0).rg;
                clip((sin((node_5342.r*(min(node_6223.r,node_6223.g)+_addOFfset)*_multTime))-_fade) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = _Color.rgb;
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
            uniform float _addOFfset;
            uniform float _multTime;
            uniform float _pan;
            uniform float _fade;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float4 node_5342 = _Time + _TimeEditor;
                float2 node_6223 = pow(sin(((i.uv0+_pan*float2(1,1))*3.141592654)),2.0).rg;
                clip((sin((node_5342.r*(min(node_6223.r,node_6223.g)+_addOFfset)*_multTime))-_fade) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
