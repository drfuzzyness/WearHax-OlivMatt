// Shader created with Shader Forge v1.16 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.16;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:0,lgpr:1,limd:3,spmd:0,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:1,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3138,x:33335,y:32489,varname:node_3138,prsc:2|emission-7330-OUT,voffset-3532-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31774,y:32847,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Multiply,id:8686,x:32355,y:32660,varname:node_8686,prsc:2|A-4767-OUT,B-4767-OUT;n:type:ShaderForge.SFN_NormalVector,id:4190,x:31849,y:32581,prsc:2,pt:False;n:type:ShaderForge.SFN_ChannelBlend,id:7330,x:32667,y:32804,varname:node_7330,prsc:2,chbt:1|M-8686-OUT,R-7241-RGB,G-5888-RGB,B-637-RGB,BTM-783-OUT;n:type:ShaderForge.SFN_Color,id:5888,x:31907,y:32976,ptovrint:False,ptlb:Color_copy,ptin:_Color_copy,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Color,id:637,x:32114,y:33090,ptovrint:False,ptlb:Color_copy_copy,ptin:_Color_copy_copy,varname:_Color_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Color,id:8712,x:32659,y:32241,ptovrint:False,ptlb:node_8712,ptin:_node_8712,varname:node_8712,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_FragmentPosition,id:2526,x:32423,y:32327,varname:node_2526,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:1929,x:32423,y:32475,varname:node_1929,prsc:2;n:type:ShaderForge.SFN_Subtract,id:6164,x:32585,y:32416,varname:node_6164,prsc:2|A-2526-Y,B-1929-Y;n:type:ShaderForge.SFN_Lerp,id:239,x:32829,y:32429,varname:node_239,prsc:2|A-8712-RGB,B-7330-OUT,T-6164-OUT;n:type:ShaderForge.SFN_Noise,id:5216,x:32617,y:33176,varname:node_5216,prsc:2|XY-1679-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:8790,x:31418,y:33436,varname:node_8790,prsc:2;n:type:ShaderForge.SFN_Append,id:1627,x:32063,y:33417,varname:node_1627,prsc:2|A-8790-X,B-8790-Z;n:type:ShaderForge.SFN_FragmentPosition,id:4662,x:31501,y:32345,varname:node_4662,prsc:2;n:type:ShaderForge.SFN_DDX,id:1290,x:31678,y:32315,varname:node_1290,prsc:2|IN-4662-XYZ;n:type:ShaderForge.SFN_DDY,id:1950,x:31678,y:32459,varname:node_1950,prsc:2|IN-4662-XYZ;n:type:ShaderForge.SFN_Normalize,id:5115,x:31838,y:32315,varname:node_5115,prsc:2|IN-1290-OUT;n:type:ShaderForge.SFN_Normalize,id:1784,x:31838,y:32459,varname:node_1784,prsc:2|IN-1950-OUT;n:type:ShaderForge.SFN_Cross,id:4767,x:32023,y:32315,varname:node_4767,prsc:2|A-5115-OUT,B-1784-OUT;n:type:ShaderForge.SFN_Sin,id:4476,x:32774,y:33761,varname:node_4476,prsc:2|IN-4430-OUT;n:type:ShaderForge.SFN_RemapRange,id:7432,x:33033,y:33370,varname:node_7432,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-2948-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8982,x:32251,y:33647,ptovrint:False,ptlb:node_8982,ptin:_node_8982,varname:node_8982,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:4430,x:32517,y:33574,varname:node_4430,prsc:2|A-8982-OUT,B-1679-OUT,C-800-OUT;n:type:ShaderForge.SFN_Tau,id:800,x:32228,y:33728,varname:node_800,prsc:2;n:type:ShaderForge.SFN_Time,id:6413,x:32063,y:33563,varname:node_6413,prsc:2;n:type:ShaderForge.SFN_Add,id:1679,x:32307,y:33417,varname:node_1679,prsc:2|A-255-OUT,B-6413-TSL;n:type:ShaderForge.SFN_Sin,id:3732,x:32846,y:32544,varname:node_3732,prsc:2|IN-5216-OUT;n:type:ShaderForge.SFN_RemapRange,id:4558,x:31662,y:33327,varname:node_4558,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-8790-XYZ;n:type:ShaderForge.SFN_Length,id:255,x:32000,y:33287,varname:node_255,prsc:2|IN-4558-OUT;n:type:ShaderForge.SFN_Vector4Property,id:8292,x:33313,y:33309,ptovrint:False,ptlb:node_8292,ptin:_node_8292,varname:node_8292,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:1,v3:0,v4:0;n:type:ShaderForge.SFN_Multiply,id:3532,x:33110,y:33114,varname:node_3532,prsc:2|A-8666-OUT,B-7271-OUT,C-8292-XYZ;n:type:ShaderForge.SFN_Multiply,id:9412,x:33015,y:33694,varname:node_9412,prsc:2|A-7432-OUT,B-3355-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3355,x:31519,y:33285,ptovrint:False,ptlb:node_3355,ptin:_node_3355,varname:node_3355,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Multiply,id:1754,x:31841,y:33237,varname:node_1754,prsc:2|A-4558-OUT,B-3355-OUT;n:type:ShaderForge.SFN_ViewVector,id:7833,x:33033,y:32400,varname:node_7833,prsc:2;n:type:ShaderForge.SFN_ViewReflectionVector,id:7075,x:33157,y:33491,varname:node_7075,prsc:2;n:type:ShaderForge.SFN_ViewVector,id:1413,x:32846,y:32844,varname:node_1413,prsc:2;n:type:ShaderForge.SFN_Dot,id:1401,x:32012,y:32503,varname:node_1401,prsc:2,dt:0|A-5115-OUT,B-1784-OUT;n:type:ShaderForge.SFN_Color,id:3937,x:32383,y:33176,ptovrint:False,ptlb:node_3937,ptin:_node_3937,varname:node_3937,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:783,x:32504,y:33002,varname:node_783,prsc:2|A-3937-RGB,B-8701-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8701,x:32307,y:33114,ptovrint:False,ptlb:btmValMult,ptin:_btmValMult,varname:node_8701,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Tan,id:2948,x:32548,y:33436,varname:node_2948,prsc:2|IN-4430-OUT;n:type:ShaderForge.SFN_Max,id:8666,x:32853,y:33474,varname:node_8666,prsc:2|A-2948-OUT,B-9235-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9235,x:32617,y:33343,ptovrint:False,ptlb:node_9235,ptin:_node_9235,varname:node_9235,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-1;n:type:ShaderForge.SFN_Power,id:7271,x:32821,y:33291,varname:node_7271,prsc:2|VAL-2948-OUT,EXP-9235-OUT;proporder:7241-5888-637-8712-8982-8292-3355-3937-8701-9235;pass:END;sub:END;*/

Shader "Shader Forge/angleBasedTanNormalBasedOffset" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _Color_copy ("Color_copy", Color) = (0.07843138,0.3921569,0.7843137,1)
        _Color_copy_copy ("Color_copy_copy", Color) = (0.07843138,0.3921569,0.7843137,1)
        _node_8712 ("node_8712", Color) = (0.5,0.5,0.5,1)
        _node_8982 ("node_8982", Float ) = 2
        _node_8292 ("node_8292", Vector) = (0,1,0,0)
        _node_3355 ("node_3355", Float ) = 5
        _node_3937 ("node_3937", Color) = (0.5,0.5,0.5,1)
        _btmValMult ("btmValMult", Float ) = 0
        _node_9235 ("node_9235", Float ) = -1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "DEFERRED"
            Tags {
                "LightMode"="Deferred"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_DEFERRED
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile ___ UNITY_HDR_ON
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform float4 _Color_copy;
            uniform float4 _Color_copy_copy;
            uniform float _node_8982;
            uniform float4 _node_8292;
            uniform float4 _node_3937;
            uniform float _btmValMult;
            uniform float _node_9235;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float3 node_4558 = (mul(_Object2World, v.vertex).rgb*2.0+-1.0);
                float4 node_6413 = _Time + _TimeEditor;
                float node_1679 = (length(node_4558)+node_6413.r);
                float node_4430 = (_node_8982*node_1679*6.28318530718);
                float node_2948 = tan(node_4430);
                v.vertex.xyz += (max(node_2948,_node_9235)*pow(node_2948,_node_9235)*_node_8292.rgb);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                return o;
            }
            void frag(
                VertexOutput i,
                out half4 outDiffuse : SV_Target0,
                out half4 outSpecSmoothness : SV_Target1,
                out half4 outNormal : SV_Target2,
                out half4 outEmission : SV_Target3 )
            {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
////// Lighting:
////// Emissive:
                float3 node_5115 = normalize(ddx(i.posWorld.rgb));
                float3 node_1784 = normalize(ddy(i.posWorld.rgb));
                float3 node_4767 = cross(node_5115,node_1784);
                float3 node_8686 = (node_4767*node_4767);
                float3 node_7330 = (lerp( lerp( lerp( (_node_3937.rgb*_btmValMult), _Color.rgb, node_8686.r ), _Color_copy.rgb, node_8686.g ), _Color_copy_copy.rgb, node_8686.b ));
                float3 emissive = node_7330;
                float3 finalColor = emissive;
                outDiffuse = half4( 0, 0, 0, 1 );
                outSpecSmoothness = half4(0,0,0,0);
                outNormal = half4( normalDirection * 0.5 + 0.5, 1 );
                outEmission = half4( node_7330, 1 );
                #ifndef UNITY_HDR_ON
                    outEmission.rgb = exp2(-outEmission.rgb);
                #endif
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform float4 _Color_copy;
            uniform float4 _Color_copy_copy;
            uniform float _node_8982;
            uniform float4 _node_8292;
            uniform float4 _node_3937;
            uniform float _btmValMult;
            uniform float _node_9235;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float3 node_4558 = (mul(_Object2World, v.vertex).rgb*2.0+-1.0);
                float4 node_6413 = _Time + _TimeEditor;
                float node_1679 = (length(node_4558)+node_6413.r);
                float node_4430 = (_node_8982*node_1679*6.28318530718);
                float node_2948 = tan(node_4430);
                v.vertex.xyz += (max(node_2948,_node_9235)*pow(node_2948,_node_9235)*_node_8292.rgb);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
////// Lighting:
////// Emissive:
                float3 node_5115 = normalize(ddx(i.posWorld.rgb));
                float3 node_1784 = normalize(ddy(i.posWorld.rgb));
                float3 node_4767 = cross(node_5115,node_1784);
                float3 node_8686 = (node_4767*node_4767);
                float3 node_7330 = (lerp( lerp( lerp( (_node_3937.rgb*_btmValMult), _Color.rgb, node_8686.r ), _Color_copy.rgb, node_8686.g ), _Color_copy_copy.rgb, node_8686.b ));
                float3 emissive = node_7330;
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
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _node_8982;
            uniform float4 _node_8292;
            uniform float _node_9235;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float3 node_4558 = (mul(_Object2World, v.vertex).rgb*2.0+-1.0);
                float4 node_6413 = _Time + _TimeEditor;
                float node_1679 = (length(node_4558)+node_6413.r);
                float node_4430 = (_node_8982*node_1679*6.28318530718);
                float node_2948 = tan(node_4430);
                v.vertex.xyz += (max(node_2948,_node_9235)*pow(node_2948,_node_9235)*_node_8292.rgb);
                o.posWorld = mul(_Object2World, v.vertex);
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
