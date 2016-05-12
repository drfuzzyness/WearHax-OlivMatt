// Shader created with Shader Forge v1.16 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.16;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3138,x:33754,y:32562,varname:node_3138,prsc:2|emission-9296-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32867,y:31986,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_TexCoord,id:3491,x:32245,y:32781,varname:node_3491,prsc:2,uv:0;n:type:ShaderForge.SFN_ComponentMask,id:2364,x:32549,y:32684,varname:node_2364,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-3491-U;n:type:ShaderForge.SFN_Add,id:9402,x:32729,y:32730,varname:node_9402,prsc:2|A-2364-OUT,B-1817-TSL;n:type:ShaderForge.SFN_Time,id:1817,x:32526,y:32957,varname:node_1817,prsc:2;n:type:ShaderForge.SFN_Tau,id:914,x:32818,y:32920,varname:node_914,prsc:2;n:type:ShaderForge.SFN_Sin,id:6291,x:33079,y:32750,varname:node_6291,prsc:2|IN-8863-OUT;n:type:ShaderForge.SFN_Multiply,id:8863,x:32919,y:32744,varname:node_8863,prsc:2|A-4426-OUT,B-9402-OUT,C-914-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4426,x:32785,y:32606,ptovrint:False,ptlb:node_4426,ptin:_node_4426,varname:node_4426,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_RemapRange,id:4307,x:33252,y:32763,varname:node_4307,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-6291-OUT;n:type:ShaderForge.SFN_Clamp01,id:7148,x:33434,y:32780,varname:node_7148,prsc:2|IN-4307-OUT;n:type:ShaderForge.SFN_NormalVector,id:7969,x:33293,y:33020,prsc:2,pt:True;n:type:ShaderForge.SFN_FragmentPosition,id:8546,x:32303,y:32599,varname:node_8546,prsc:2;n:type:ShaderForge.SFN_Multiply,id:197,x:33503,y:32972,varname:node_197,prsc:2|A-7148-OUT,B-7969-OUT;n:type:ShaderForge.SFN_Lerp,id:9296,x:33593,y:32369,varname:node_9296,prsc:2|A-7148-OUT,B-178-OUT,T-8292-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8292,x:33357,y:32575,ptovrint:False,ptlb:node_8292,ptin:_node_8292,varname:node_8292,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.7;n:type:ShaderForge.SFN_TexCoord,id:505,x:32881,y:32307,varname:node_505,prsc:2,uv:0;n:type:ShaderForge.SFN_Lerp,id:178,x:33139,y:32258,varname:node_178,prsc:2|A-7241-RGB,B-762-RGB,T-505-U;n:type:ShaderForge.SFN_Color,id:762,x:32845,y:32163,ptovrint:False,ptlb:node_762,ptin:_node_762,varname:node_762,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1586208,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:7364,x:33600,y:31980,ptovrint:False,ptlb:node_7364,ptin:_node_7364,varname:node_7364,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6965513,c2:0,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:9085,x:33545,y:32182,varname:node_9085,prsc:2|A-7364-RGB,B-178-OUT,T-8292-OUT;n:type:ShaderForge.SFN_Color,id:6290,x:33092,y:31630,ptovrint:False,ptlb:Color_copy,ptin:_Color_copy,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.6827587,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:4394,x:33056,y:31788,ptovrint:False,ptlb:node_762_copy,ptin:_node_762_copy,varname:_node_762_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_TexCoord,id:7974,x:33106,y:31951,varname:node_7974,prsc:2,uv:0;n:type:ShaderForge.SFN_Lerp,id:6278,x:33364,y:31902,varname:node_6278,prsc:2|A-6290-RGB,B-4394-RGB,T-7974-U;proporder:7241-4426-8292-762;pass:END;sub:END;*/

Shader "Shader Forge/GradientMulti" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _node_4426 ("node_4426", Float ) = 5
        _node_8292 ("node_8292", Float ) = 0.7
        _node_762 ("node_762", Color) = (0.1586208,1,0,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
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
            uniform float _node_4426;
            uniform float _node_8292;
            uniform float4 _node_762;
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
////// Lighting:
////// Emissive:
                float4 node_1817 = _Time + _TimeEditor;
                float node_7148 = saturate((sin((_node_4426*(i.uv0.r.r+node_1817.r)*6.28318530718))*0.5+0.5));
                float3 node_178 = lerp(_Color.rgb,_node_762.rgb,i.uv0.r);
                float3 emissive = lerp(float3(node_7148,node_7148,node_7148),node_178,_node_8292);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
