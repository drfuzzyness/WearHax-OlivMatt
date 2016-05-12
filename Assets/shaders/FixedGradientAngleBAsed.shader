// Shader created with Shader Forge v1.16 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.16;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3138,x:33402,y:32266,varname:node_3138,prsc:2|emission-72-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:7997,x:31643,y:32795,varname:node_7997,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:2362,x:31643,y:32916,varname:node_2362,prsc:2;n:type:ShaderForge.SFN_Subtract,id:3987,x:31840,y:32808,varname:node_3987,prsc:2|A-7997-XYZ,B-2362-XYZ;n:type:ShaderForge.SFN_Transform,id:6210,x:32007,y:32808,varname:node_6210,prsc:2,tffrom:0,tfto:1|IN-3987-OUT;n:type:ShaderForge.SFN_Add,id:3601,x:32182,y:32808,varname:node_3601,prsc:2|A-6210-XYZ,B-2269-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2269,x:31995,y:33005,ptovrint:False,ptlb:node_2269,ptin:_node_2269,varname:node_2269,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_ValueProperty,id:3613,x:32137,y:33025,ptovrint:False,ptlb:node_3613,ptin:_node_3613,varname:node_3613,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.6;n:type:ShaderForge.SFN_Multiply,id:8006,x:32334,y:32808,varname:node_8006,prsc:2|A-3601-OUT,B-3613-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5532,x:32541,y:32707,varname:node_5532,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-8006-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7685,x:32514,y:32865,varname:node_7685,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-8006-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4512,x:32493,y:33007,varname:node_4512,prsc:2,cc1:2,cc2:-1,cc3:-1,cc4:-1|IN-8006-OUT;n:type:ShaderForge.SFN_Color,id:2404,x:32706,y:32491,ptovrint:False,ptlb:1,ptin:_1,varname:node_2404,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:102,x:32940,y:32746,varname:node_102,prsc:2|A-2404-RGB,B-1448-RGB,T-5532-OUT;n:type:ShaderForge.SFN_Lerp,id:2243,x:32929,y:32963,varname:node_2243,prsc:2|A-1448-RGB,B-2404-RGB,T-7685-OUT;n:type:ShaderForge.SFN_Lerp,id:9563,x:32953,y:33148,varname:node_9563,prsc:2|A-2404-RGB,B-1448-RGB,T-4512-OUT;n:type:ShaderForge.SFN_NormalVector,id:3491,x:32604,y:32184,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:4982,x:32776,y:32191,varname:node_4982,prsc:2|A-3491-OUT,B-3491-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:72,x:33157,y:32465,varname:node_72,prsc:2,chbt:0|M-4982-OUT,R-102-OUT,G-2243-OUT,B-9563-OUT;n:type:ShaderForge.SFN_Color,id:1448,x:32691,y:32686,ptovrint:False,ptlb:2,ptin:_2,varname:_2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:2269-3613-2404-1448;pass:END;sub:END;*/

Shader "Shader Forge/FixedGradientAngleBAsed" {
    Properties {
        _node_2269 ("node_2269", Float ) = 0.5
        _node_3613 ("node_3613", Float ) = 0.6
        _1 ("1", Color) = (0.5,0.5,0.5,1)
        _2 ("2", Color) = (0.5,0.5,0.5,1)
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
            uniform float _node_2269;
            uniform float _node_3613;
            uniform float4 _1;
            uniform float4 _2;
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
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float3 node_4982 = (i.normalDir*i.normalDir);
                float3 node_8006 = ((mul( _World2Object, float4((i.posWorld.rgb-objPos.rgb),0) ).xyz.rgb+_node_2269)*_node_3613);
                float3 emissive = (node_4982.r*lerp(_1.rgb,_2.rgb,node_8006.r) + node_4982.g*lerp(_2.rgb,_1.rgb,node_8006.g) + node_4982.b*lerp(_1.rgb,_2.rgb,node_8006.b));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
