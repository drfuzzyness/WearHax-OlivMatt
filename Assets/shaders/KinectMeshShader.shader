// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.16 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.16;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:4013,x:33123,y:32714,varname:node_4013,prsc:2|diff-8113-RGB,clip-8516-OUT,olwid-2861-OUT,olcol-5248-RGB,voffset-388-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:31830,y:33279,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:8113,x:32282,y:32469,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_8113,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:8685,x:31607,y:33258,ptovrint:False,ptlb:Color_copy_copy,ptin:_Color_copy_copy,varname:_Color_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_FragmentPosition,id:4424,x:31630,y:32678,varname:node_4424,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:8516,x:32141,y:32689,varname:node_8516,prsc:2,frmn:300,frmx:180,tomn:0,tomx:1|IN-4424-Z;n:type:ShaderForge.SFN_Sin,id:2579,x:32414,y:33019,varname:node_2579,prsc:2|IN-766-OUT;n:type:ShaderForge.SFN_Multiply,id:766,x:32260,y:32940,varname:node_766,prsc:2|A-2996-OUT,B-3436-OUT,C-5600-OUT;n:type:ShaderForge.SFN_Time,id:2910,x:31636,y:33076,varname:node_2910,prsc:2;n:type:ShaderForge.SFN_Add,id:2996,x:32006,y:32905,varname:node_2996,prsc:2|A-4424-Y,B-5375-OUT;n:type:ShaderForge.SFN_Tau,id:5600,x:32039,y:33035,varname:node_5600,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:3436,x:32169,y:33167,ptovrint:False,ptlb:node_3436,ptin:_node_3436,varname:node_3436,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Clamp01,id:8432,x:32759,y:33063,varname:node_8432,prsc:2|IN-5331-OUT;n:type:ShaderForge.SFN_RemapRange,id:5331,x:32557,y:32904,varname:node_5331,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-2579-OUT;n:type:ShaderForge.SFN_Multiply,id:388,x:32931,y:33117,varname:node_388,prsc:2|A-8432-OUT,B-5338-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5338,x:32788,y:33315,ptovrint:False,ptlb:zize8,ptin:_zize8,varname:node_5338,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_ValueProperty,id:138,x:31686,y:33009,ptovrint:False,ptlb:timescale,ptin:_timescale,varname:node_138,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:5375,x:31858,y:33009,varname:node_5375,prsc:2|A-138-OUT,B-2910-TSL;n:type:ShaderForge.SFN_ValueProperty,id:2861,x:32912,y:32607,ptovrint:False,ptlb:node_2861,ptin:_node_2861,varname:node_2861,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Color,id:5248,x:32508,y:32772,ptovrint:False,ptlb:node_5248,ptin:_node_5248,varname:node_5248,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_TexCoord,id:2764,x:32737,y:32464,varname:node_2764,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:4861,x:32855,y:32727,varname:node_4861,prsc:2|A-4883-OUT,B-5248-RGB;n:type:ShaderForge.SFN_FragmentPosition,id:3456,x:32449,y:32592,varname:node_3456,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:4883,x:32702,y:32663,varname:node_4883,prsc:2,frmn:-300,frmx:50,tomn:-1,tomx:1|IN-3456-X;proporder:1304-8113-3436-5338-138-2861-5248;pass:END;sub:END;*/

Shader "Shader Forge/KinectMeshShader" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _node_3436 ("node_3436", Float ) = 3
        _zize8 ("zize8", Float ) = 4
        _timescale ("timescale", Float ) = 1
        _node_2861 ("node_2861", Float ) = 3
        _node_5248 ("node_5248", Color) = (0.5,0.5,0.5,1)
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
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _node_3436;
            uniform float _zize8;
            uniform float _timescale;
            uniform float _node_2861;
            uniform float4 _node_5248;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 node_2910 = _Time + _TimeEditor;
                float node_388 = (saturate((sin(((mul(unity_ObjectToWorld, v.vertex).g+(_timescale*node_2910.r))*_node_3436*6.28318530718))*0.5+0.5))*_zize8);
                v.vertex.xyz += float3(node_388,node_388,node_388);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, float4(v.vertex.xyz + v.normal*_node_2861,1));
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                clip((i.posWorld.b*-0.008333334+2.5) - 0.5);
                return fixed4(_node_5248.rgb,0);
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
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _node_3436;
            uniform float _zize8;
            uniform float _timescale;
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
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_2910 = _Time + _TimeEditor;
                float node_388 = (saturate((sin(((mul(unity_ObjectToWorld, v.vertex).g+(_timescale*node_2910.r))*_node_3436*6.28318530718))*0.5+0.5))*_zize8);
                v.vertex.xyz += float3(node_388,node_388,node_388);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 normalDirection = i.normalDir;
                clip((i.posWorld.b*-0.008333334+2.5) - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffuseColor = _MainTex_var.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _node_3436;
            uniform float _zize8;
            uniform float _timescale;
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
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_2910 = _Time + _TimeEditor;
                float node_388 = (saturate((sin(((mul(unity_ObjectToWorld, v.vertex).g+(_timescale*node_2910.r))*_node_3436*6.28318530718))*0.5+0.5))*_zize8);
                v.vertex.xyz += float3(node_388,node_388,node_388);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 normalDirection = i.normalDir;
                clip((i.posWorld.b*-0.008333334+2.5) - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffuseColor = _MainTex_var.rgb;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor * 1,0);
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
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _node_3436;
            uniform float _zize8;
            uniform float _timescale;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 node_2910 = _Time + _TimeEditor;
                float node_388 = (saturate((sin(((mul(unity_ObjectToWorld, v.vertex).g+(_timescale*node_2910.r))*_node_3436*6.28318530718))*0.5+0.5))*_zize8);
                v.vertex.xyz += float3(node_388,node_388,node_388);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                clip((i.posWorld.b*-0.008333334+2.5) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
