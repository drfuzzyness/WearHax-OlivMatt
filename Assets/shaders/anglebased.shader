// Shader created with Shader Forge v1.16 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.16;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3138,x:32920,y:32480,varname:node_3138,prsc:2|custl-3553-OUT;n:type:ShaderForge.SFN_LightVector,id:7469,x:31396,y:32504,varname:node_7469,prsc:2;n:type:ShaderForge.SFN_ViewVector,id:9767,x:31396,y:32630,varname:node_9767,prsc:2;n:type:ShaderForge.SFN_Dot,id:6316,x:31572,y:32504,varname:node_6316,prsc:2,dt:1|A-7469-OUT,B-9767-OUT;n:type:ShaderForge.SFN_Vector1,id:6623,x:31556,y:32683,varname:node_6623,prsc:2,v1:0.6;n:type:ShaderForge.SFN_Multiply,id:1026,x:31753,y:32504,varname:node_1026,prsc:2|A-6316-OUT,B-6623-OUT;n:type:ShaderForge.SFN_Add,id:7297,x:31928,y:32504,varname:node_7297,prsc:2|A-1026-OUT,B-6623-OUT;n:type:ShaderForge.SFN_Power,id:4482,x:32111,y:32504,varname:node_4482,prsc:2|VAL-7297-OUT,EXP-7247-OUT;n:type:ShaderForge.SFN_Vector1,id:7247,x:31916,y:32658,varname:node_7247,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:4865,x:32371,y:32558,varname:node_4865,prsc:2|A-4482-OUT,B-8362-RGB;n:type:ShaderForge.SFN_Color,id:8362,x:32111,y:32683,ptovrint:False,ptlb:node_8362,ptin:_node_8362,varname:node_8362,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_LightAttenuation,id:5338,x:31886,y:32897,varname:node_5338,prsc:2;n:type:ShaderForge.SFN_Color,id:5077,x:31886,y:33082,ptovrint:False,ptlb:node_5077,ptin:_node_5077,varname:node_5077,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Fresnel,id:1036,x:31886,y:33242,varname:node_1036,prsc:2;n:type:ShaderForge.SFN_Vector1,id:2493,x:31886,y:33412,varname:node_2493,prsc:2,v1:6;n:type:ShaderForge.SFN_Multiply,id:8046,x:32111,y:33116,varname:node_8046,prsc:2|A-5077-RGB,B-1036-OUT,C-2493-OUT;n:type:ShaderForge.SFN_OneMinus,id:1117,x:32111,y:32897,varname:node_1117,prsc:2|IN-5338-OUT;n:type:ShaderForge.SFN_Multiply,id:6797,x:32355,y:32889,varname:node_6797,prsc:2|A-1117-OUT,B-8046-OUT;n:type:ShaderForge.SFN_LightColor,id:4520,x:32522,y:32889,varname:node_4520,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3553,x:32749,y:32715,varname:node_3553,prsc:2|A-2817-OUT,B-5338-OUT,C-4520-RGB;n:type:ShaderForge.SFN_Add,id:2817,x:32568,y:32558,varname:node_2817,prsc:2|A-4865-OUT,B-6797-OUT;proporder:8362-5077;pass:END;sub:END;*/

Shader "Shader Forge/anglebased" {
    Properties {
        _node_8362 ("node_8362", Color) = (0.5,0.5,0.5,1)
        _node_5077 ("node_5077", Color) = (0.5,0.5,0.5,1)
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
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _node_8362;
            uniform float4 _node_5077;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float node_6623 = 0.6;
                float3 finalColor = (((pow(((max(0,dot(lightDirection,viewDirection))*node_6623)+node_6623),0.5)*_node_8362.rgb)+((1.0 - attenuation)*(_node_5077.rgb*(1.0-max(0,dot(normalDirection, viewDirection)))*6.0)))*attenuation*_LightColor0.rgb);
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _node_8362;
            uniform float4 _node_5077;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float node_6623 = 0.6;
                float3 finalColor = (((pow(((max(0,dot(lightDirection,viewDirection))*node_6623)+node_6623),0.5)*_node_8362.rgb)+((1.0 - attenuation)*(_node_5077.rgb*(1.0-max(0,dot(normalDirection, viewDirection)))*6.0)))*attenuation*_LightColor0.rgb);
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
