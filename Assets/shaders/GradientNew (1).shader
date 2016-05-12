// Shader created with Shader Forge v1.16 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.16;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3138,x:33575,y:32715,varname:node_3138,prsc:2|emission-4281-OUT;n:type:ShaderForge.SFN_Color,id:8928,x:32644,y:32681,ptovrint:False,ptlb:Col2,ptin:_Col2,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7843137,c2:0.07843139,c3:0.07843139,c4:1;n:type:ShaderForge.SFN_Color,id:6130,x:32644,y:32502,ptovrint:False,ptlb:Col1,ptin:_Col1,varname:_Color_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Lerp,id:1063,x:33231,y:32648,varname:node_1063,prsc:2|A-6130-RGB,B-8928-RGB,T-8831-OUT;n:type:ShaderForge.SFN_TexCoord,id:9162,x:32028,y:33076,varname:node_9162,prsc:2,uv:0;n:type:ShaderForge.SFN_Posterize,id:4281,x:33377,y:33146,varname:node_4281,prsc:2|IN-1063-OUT,STPS-8781-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8781,x:32950,y:33258,ptovrint:False,ptlb:Bands,ptin:_Bands,varname:node_8781,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:9;n:type:ShaderForge.SFN_Lerp,id:7723,x:32415,y:33098,varname:node_7723,prsc:2|A-9162-U,B-9162-V,T-9184-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9184,x:32028,y:33246,ptovrint:False,ptlb:Direction,ptin:_Direction,varname:node_9184,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:7735,x:32628,y:32984,varname:node_7735,prsc:2|A-7723-OUT,B-2401-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2672,x:32334,y:32737,ptovrint:False,ptlb:mult,ptin:_mult,varname:node_2672,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_FragmentPosition,id:2608,x:32147,y:33295,varname:node_2608,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:3794,x:32221,y:32831,varname:node_3794,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-7723-OUT;n:type:ShaderForge.SFN_RemapRange,id:5250,x:32651,y:33141,varname:node_5250,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-7723-OUT;n:type:ShaderForge.SFN_Clamp01,id:3201,x:32833,y:33105,varname:node_3201,prsc:2|IN-5250-OUT;n:type:ShaderForge.SFN_Clamp01,id:8831,x:33059,y:32775,varname:node_8831,prsc:2|IN-9636-OUT;n:type:ShaderForge.SFN_Multiply,id:6237,x:33031,y:32977,varname:node_6237,prsc:2|A-3201-OUT,B-7735-OUT;n:type:ShaderForge.SFN_Multiply,id:9636,x:32831,y:32843,varname:node_9636,prsc:2|A-2672-OUT,B-7735-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2401,x:32408,y:32893,ptovrint:False,ptlb:add,ptin:_add,varname:node_2401,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;proporder:8928-6130-8781-9184-2672-2401;pass:END;sub:END;*/

Shader "Shader Forge/GradientNew" {
    Properties {
        _Col2 ("Col2", Color) = (0.7843137,0.07843139,0.07843139,1)
        _Col1 ("Col1", Color) = (0.07843138,0.3921569,0.7843137,1)
        _Bands ("Bands", Float ) = 9
        _Direction ("Direction", Float ) = 1
        _mult ("mult", Float ) = 0.5
        _add ("add", Float ) = 0.1
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
            uniform float4 _Col2;
            uniform float4 _Col1;
            uniform float _Bands;
            uniform float _Direction;
            uniform float _mult;
            uniform float _add;
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
                float node_7723 = lerp(i.uv0.r,i.uv0.g,_Direction);
                float node_7735 = (node_7723+_add);
                float3 emissive = floor(lerp(_Col1.rgb,_Col2.rgb,saturate((_mult*node_7735))) * _Bands) / (_Bands - 1);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
