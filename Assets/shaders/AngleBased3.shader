// Shader created with Shader Forge v1.16 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.16;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3138,x:33095,y:32217,varname:node_3138,prsc:2|emission-7241-RGB;n:type:ShaderForge.SFN_Color,id:7241,x:32354,y:32308,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Color,id:2134,x:32211,y:32883,ptovrint:False,ptlb:node_2134,ptin:_node_2134,varname:node_2134,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Add,id:7403,x:32648,y:33098,varname:node_7403,prsc:2|A-2134-RGB,B-4829-OUT;n:type:ShaderForge.SFN_Dot,id:4829,x:32424,y:33127,varname:node_4829,prsc:2,dt:0|A-170-OUT,B-5511-OUT;n:type:ShaderForge.SFN_LightVector,id:170,x:32180,y:33084,varname:node_170,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:5511,x:32180,y:33263,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:1716,x:32395,y:33309,varname:node_1716,prsc:2,dt:0|A-5511-OUT,B-2708-OUT;n:type:ShaderForge.SFN_HalfVector,id:2708,x:32157,y:33474,varname:node_2708,prsc:2;n:type:ShaderForge.SFN_Power,id:6306,x:32695,y:33303,varname:node_6306,prsc:2|VAL-1716-OUT,EXP-9179-OUT;n:type:ShaderForge.SFN_Vector1,id:9179,x:32485,y:33558,varname:node_9179,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Multiply,id:2893,x:32842,y:33000,varname:node_2893,prsc:2|A-5671-OUT,B-9008-RGB,C-7403-OUT,D-6306-OUT;n:type:ShaderForge.SFN_LightColor,id:9008,x:32661,y:32946,varname:node_9008,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:5671,x:32661,y:32834,varname:node_5671,prsc:2;proporder:7241-2134;pass:END;sub:END;*/

Shader "Shader Forge/AngleBased3" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _node_2134 ("node_2134", Color) = (0.5,0.5,0.5,1)
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
            uniform float4 _Color;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
////// Lighting:
////// Emissive:
                float3 emissive = _Color.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
