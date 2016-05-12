// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33019,y:32430,varname:node_3138,prsc:2|emission-7136-OUT,voffset-4352-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31860,y:32159,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Noise,id:3998,x:32501,y:32857,varname:node_3998,prsc:2|XY-8675-OUT;n:type:ShaderForge.SFN_TexCoord,id:478,x:31880,y:32891,varname:node_478,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:4352,x:32773,y:32878,varname:node_4352,prsc:2|A-2338-XYZ,B-3998-OUT;n:type:ShaderForge.SFN_Vector4Property,id:2338,x:32666,y:32699,ptovrint:False,ptlb:node_2338,ptin:_node_2338,varname:node_2338,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_FragmentPosition,id:5044,x:31490,y:32602,varname:node_5044,prsc:2;n:type:ShaderForge.SFN_Lerp,id:7136,x:32175,y:32505,varname:node_7136,prsc:2|A-7241-RGB,B-8244-RGB,T-5044-Y;n:type:ShaderForge.SFN_Color,id:8244,x:31852,y:32297,ptovrint:False,ptlb:Color_copy,ptin:_Color_copy,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Panner,id:5105,x:32220,y:32912,varname:node_5105,prsc:2,spu:0,spv:1|UVIN-1854-OUT,DIST-1877-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1877,x:31933,y:33191,ptovrint:False,ptlb:node_1877,ptin:_node_1877,varname:node_1877,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:1854,x:31740,y:32653,varname:node_1854,prsc:2|A-5044-X,B-5044-Z;n:type:ShaderForge.SFN_Sin,id:1658,x:32489,y:33022,varname:node_1658,prsc:2|IN-5105-UVOUT;n:type:ShaderForge.SFN_Divide,id:8675,x:32299,y:33097,varname:node_8675,prsc:2|A-5105-UVOUT,B-5773-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5773,x:32114,y:33248,ptovrint:False,ptlb:node_5773,ptin:_node_5773,varname:node_5773,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Subtract,id:530,x:31863,y:32773,varname:node_530,prsc:2|A-9548-OUT,B-1854-OUT;n:type:ShaderForge.SFN_ObjectPosition,id:1136,x:31490,y:32757,varname:node_1136,prsc:2;n:type:ShaderForge.SFN_Append,id:9548,x:31683,y:32840,varname:node_9548,prsc:2|A-1136-X,B-1136-Z;proporder:7241-2338-8244-1877-5773;pass:END;sub:END;*/

Shader "Shader Forge/NoiseDisplaceCrazyLocalOffset" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _node_2338 ("node_2338", Vector) = (0,0,0,0)
        _Color_copy ("Color_copy", Color) = (0.07843138,0.3921569,0.7843137,1)
        _node_1877 ("node_1877", Float ) = 1
        _node_5773 ("node_5773", Float ) = 0
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
            uniform float4 _node_2338;
            uniform float4 _Color_copy;
            uniform float _node_1877;
            uniform float _node_5773;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float2 node_1854 = float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).b);
                float2 node_5105 = (node_1854+_node_1877*float2(0,1));
                float2 node_8675 = (node_5105/_node_5773);
                float2 node_3998_skew = node_8675 + 0.2127+node_8675.x*0.3713*node_8675.y;
                float2 node_3998_rnd = 4.789*sin(489.123*(node_3998_skew));
                float node_3998 = frac(node_3998_rnd.x*node_3998_rnd.y*(1+node_3998_skew.x));
                v.vertex.xyz += (_node_2338.rgb*node_3998);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float3 emissive = lerp(_Color.rgb,_Color_copy.rgb,i.posWorld.g);
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
            uniform float4 _node_2338;
            uniform float _node_1877;
            uniform float _node_5773;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float2 node_1854 = float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).b);
                float2 node_5105 = (node_1854+_node_1877*float2(0,1));
                float2 node_8675 = (node_5105/_node_5773);
                float2 node_3998_skew = node_8675 + 0.2127+node_8675.x*0.3713*node_8675.y;
                float2 node_3998_rnd = 4.789*sin(489.123*(node_3998_skew));
                float node_3998 = frac(node_3998_rnd.x*node_3998_rnd.y*(1+node_3998_skew.x));
                v.vertex.xyz += (_node_2338.rgb*node_3998);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
