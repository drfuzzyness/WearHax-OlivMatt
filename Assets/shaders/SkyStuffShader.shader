// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.16 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.16;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3138,x:33360,y:32577,varname:node_3138,prsc:2|emission-777-OUT,voffset-314-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32729,y:32645,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_TexCoord,id:9485,x:32313,y:33167,varname:node_9485,prsc:2,uv:0;n:type:ShaderForge.SFN_Sin,id:3722,x:32791,y:33057,varname:node_3722,prsc:2|IN-8476-OUT;n:type:ShaderForge.SFN_Multiply,id:8476,x:32591,y:33040,varname:node_8476,prsc:2|A-9519-OUT,B-2944-OUT,C-5775-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5775,x:32343,y:32950,ptovrint:False,ptlb:var0,ptin:_var0,varname:node_5775,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_RemapRange,id:1268,x:32961,y:33020,varname:node_1268,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:4|IN-3722-OUT;n:type:ShaderForge.SFN_Tau,id:2944,x:32447,y:33353,varname:node_2944,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:8489,x:33068,y:32825,varname:node_8489,prsc:2|IN-1268-OUT;n:type:ShaderForge.SFN_Add,id:777,x:33100,y:32601,varname:node_777,prsc:2|A-7241-RGB,B-8489-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:9387,x:31977,y:33066,varname:node_9387,prsc:2;n:type:ShaderForge.SFN_Divide,id:9519,x:32291,y:33044,varname:node_9519,prsc:2|A-9387-Z,B-2588-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2588,x:32114,y:32987,ptovrint:False,ptlb:var1,ptin:_var1,varname:node_2588,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Divide,id:314,x:33146,y:32990,varname:node_314,prsc:2|A-1268-OUT,B-6660-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6660,x:33075,y:33160,ptovrint:False,ptlb:var2,ptin:_var2,varname:node_6660,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:7241-5775-2588-6660;pass:END;sub:END;*/

Shader "Shader Forge/SkyStuffShader" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _var0 ("var0", Float ) = 1
        _var1 ("var1", Float ) = 5
        _var2 ("var2", Float ) = 0
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
            uniform float _var0;
            uniform float _var1;
            uniform float _var2;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float node_1268 = (sin(((mul(unity_ObjectToWorld, v.vertex).b/_var1)*6.28318530718*_var0))*5.0+-1.0);
                float node_314 = (node_1268/_var2);
                v.vertex.xyz += float3(node_314,node_314,node_314);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
////// Lighting:
////// Emissive:
                float node_1268 = (sin(((i.posWorld.b/_var1)*6.28318530718*_var0))*5.0+-1.0);
                float3 emissive = (_Color.rgb+saturate(node_1268));
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
            uniform float _var0;
            uniform float _var1;
            uniform float _var2;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float node_1268 = (sin(((mul(unity_ObjectToWorld, v.vertex).b/_var1)*6.28318530718*_var0))*5.0+-1.0);
                float node_314 = (node_1268/_var2);
                v.vertex.xyz += float3(node_314,node_314,node_314);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
