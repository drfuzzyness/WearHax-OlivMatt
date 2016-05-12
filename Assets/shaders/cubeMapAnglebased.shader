// Shader created with Shader Forge v1.16 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.16;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:4013,x:32744,y:33055,varname:node_4013,prsc:2|emission-1959-OUT;n:type:ShaderForge.SFN_NormalVector,id:6903,x:32057,y:32715,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:402,x:32283,y:32715,varname:node_402,prsc:2|A-6903-OUT,B-6903-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:1959,x:32475,y:33217,varname:node_1959,prsc:2,chbt:0|M-402-OUT,R-7263-RGB,G-6662-OUT,B-9879-OUT;n:type:ShaderForge.SFN_ObjectPosition,id:7536,x:30936,y:33687,varname:node_7536,prsc:2;n:type:ShaderForge.SFN_Lerp,id:2278,x:32268,y:33303,varname:node_2278,prsc:2|A-7263-RGB,B-2906-RGB,T-1104-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:9651,x:30936,y:33569,varname:node_9651,prsc:2;n:type:ShaderForge.SFN_Transform,id:8166,x:31286,y:33233,varname:node_8166,prsc:2,tffrom:0,tfto:1|IN-8683-OUT;n:type:ShaderForge.SFN_Subtract,id:8683,x:31103,y:33646,varname:node_8683,prsc:2|A-9651-XYZ,B-7536-XYZ;n:type:ShaderForge.SFN_Add,id:9244,x:31706,y:33356,varname:node_9244,prsc:2|A-1095-OUT,B-2452-OUT;n:type:ShaderForge.SFN_Multiply,id:4179,x:31870,y:33356,varname:node_4179,prsc:2|A-9244-OUT,B-8125-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2452,x:31541,y:33522,ptovrint:False,ptlb:addX,ptin:_addX,varname:node_2452,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_ValueProperty,id:8125,x:31706,y:33509,ptovrint:False,ptlb:multX,ptin:_multX,varname:node_8125,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.6;n:type:ShaderForge.SFN_ComponentMask,id:1095,x:31541,y:33356,varname:node_1095,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-8166-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:7985,x:31541,y:33827,varname:node_7985,prsc:2,cc1:2,cc2:-1,cc3:-1,cc4:-1|IN-8166-XYZ;n:type:ShaderForge.SFN_Add,id:1427,x:31706,y:33582,varname:node_1427,prsc:2|A-5852-OUT,B-5554-OUT;n:type:ShaderForge.SFN_Multiply,id:3753,x:31870,y:33582,varname:node_3753,prsc:2|A-1427-OUT,B-5237-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5554,x:31541,y:33748,ptovrint:False,ptlb:addY,ptin:_addY,varname:_addY_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_ValueProperty,id:5237,x:31706,y:33735,ptovrint:False,ptlb:multY,ptin:_multY,varname:_multY_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.6;n:type:ShaderForge.SFN_ComponentMask,id:5852,x:31541,y:33582,varname:node_5852,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-8166-XYZ;n:type:ShaderForge.SFN_Add,id:6291,x:31706,y:33827,varname:node_6291,prsc:2|A-7985-OUT,B-3701-OUT;n:type:ShaderForge.SFN_Multiply,id:6267,x:31870,y:33827,varname:node_6267,prsc:2|A-6291-OUT,B-3079-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3701,x:31541,y:33993,ptovrint:False,ptlb:addZ,ptin:_addZ,varname:_addY_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_ValueProperty,id:3079,x:31706,y:33980,ptovrint:False,ptlb:multZ,ptin:_multZ,varname:_multY_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.6;n:type:ShaderForge.SFN_Lerp,id:6662,x:32268,y:33540,varname:node_6662,prsc:2|A-7263-RGB,B-1104-OUT,T-3753-OUT;n:type:ShaderForge.SFN_Lerp,id:9879,x:32278,y:33837,varname:node_9879,prsc:2|A-7263-RGB,B-2906-RGB,T-1104-OUT;n:type:ShaderForge.SFN_Color,id:7263,x:32019,y:33455,ptovrint:False,ptlb:node_7263,ptin:_node_7263,varname:node_7263,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:2906,x:31978,y:33669,ptovrint:False,ptlb:node_2906,ptin:_node_2906,varname:node_2906,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Add,id:3590,x:31537,y:33149,varname:node_3590,prsc:2|A-8166-XYZ,B-9900-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9900,x:31350,y:33146,ptovrint:False,ptlb:node_9900,ptin:_node_9900,varname:node_9900,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:1104,x:31993,y:33150,varname:node_1104,prsc:2|A-3590-OUT,B-9884-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9884,x:31527,y:33081,ptovrint:False,ptlb:node_9884,ptin:_node_9884,varname:node_9884,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:2452-8125-5554-5237-3701-3079-7263-2906-9900-9884;pass:END;sub:END;*/

Shader "Shader Forge/angleBasedChannelBlend" {
    Properties {
        _addX ("addX", Float ) = 0.5
        _multX ("multX", Float ) = 0.6
        _addY ("addY", Float ) = 0.5
        _multY ("multY", Float ) = 0.6
        _addZ ("addZ", Float ) = 0.5
        _multZ ("multZ", Float ) = 0.6
        _node_7263 ("node_7263", Color) = (0.5,0.5,0.5,1)
        _node_2906 ("node_2906", Color) = (0.5,0.5,0.5,1)
        _node_9900 ("node_9900", Float ) = 0
        _node_9884 ("node_9884", Float ) = 0
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
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float _addY;
            uniform float _multY;
            uniform float4 _node_7263;
            uniform float4 _node_2906;
            uniform float _node_9900;
            uniform float _node_9884;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float3 node_402 = (i.normalDir*i.normalDir);
                float3 node_8166 = mul( _World2Object, float4((i.posWorld.rgb-objPos.rgb),0) ).xyz;
                float3 node_1104 = ((node_8166.rgb+_node_9900)*_node_9884);
                float3 emissive = (node_402.r*_node_7263.rgb + node_402.g*lerp(_node_7263.rgb,node_1104,((node_8166.rgb.g+_addY)*_multY)) + node_402.b*lerp(_node_7263.rgb,_node_2906.rgb,node_1104));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
