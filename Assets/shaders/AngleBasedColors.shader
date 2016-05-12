// Shader created with Shader Forge v1.16 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.16;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3138,x:32463,y:32432,varname:node_3138,prsc:2|emission-8149-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31507,y:32375,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_LightVector,id:1876,x:31173,y:32320,varname:node_1876,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:4072,x:31349,y:32574,varname:node_4072,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:5002,x:30743,y:32688,prsc:2,pt:False;n:type:ShaderForge.SFN_If,id:14,x:31564,y:32867,varname:node_14,prsc:2|A-1444-G,B-2560-OUT,GT-4461-OUT,EQ-2078-OUT,LT-2078-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1444,x:30943,y:32688,varname:node_1444,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-5002-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2560,x:31126,y:32916,ptovrint:False,ptlb:green,ptin:_green,varname:node_2560,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_If,id:423,x:31564,y:33007,varname:node_423,prsc:2|A-1444-B,B-4291-OUT,GT-6927-OUT,EQ-8222-OUT,LT-8222-OUT;n:type:ShaderForge.SFN_If,id:6409,x:31574,y:32710,varname:node_6409,prsc:2|A-1444-R,B-9991-OUT,GT-352-OUT,EQ-9630-OUT,LT-9630-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9991,x:31097,y:32819,ptovrint:False,ptlb:red,ptin:_red,varname:node_9991,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:4291,x:31097,y:33038,ptovrint:False,ptlb:blue,ptin:_blue,varname:node_4291,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:1697,x:30835,y:33074,varname:node_1697,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6779,x:30835,y:33021,varname:node_6779,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:7456,x:31803,y:32878,varname:node_7456,prsc:2|A-6409-OUT,B-14-OUT,C-423-OUT;n:type:ShaderForge.SFN_Vector4Property,id:697,x:31608,y:33263,ptovrint:False,ptlb:node_697,ptin:_node_697,varname:node_697,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1,v2:0.5,v3:1,v4:0;n:type:ShaderForge.SFN_ValueProperty,id:4461,x:31082,y:33277,ptovrint:False,ptlb:green_copy,ptin:_green_copy,varname:_green_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:352,x:31082,y:33180,ptovrint:False,ptlb:red_copy,ptin:_red_copy,varname:_red_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:6927,x:31082,y:33399,ptovrint:False,ptlb:blue_copy,ptin:_blue_copy,varname:_blue_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:2078,x:31325,y:33328,ptovrint:False,ptlb:green_copy_copy,ptin:_green_copy_copy,varname:_green_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:9630,x:31278,y:33231,ptovrint:False,ptlb:red_copy_copy,ptin:_red_copy_copy,varname:_red_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:8222,x:31325,y:33448,ptovrint:False,ptlb:blue_copy_copy,ptin:_blue_copy_copy,varname:_blue_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_NormalVector,id:3978,x:31624,y:32448,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:8149,x:32174,y:32449,varname:node_8149,prsc:2|A-7734-G,B-8095-XYZ;n:type:ShaderForge.SFN_Vector4Property,id:8095,x:31917,y:32651,ptovrint:False,ptlb:multVec,ptin:_multVec,varname:node_8095,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Abs,id:213,x:31793,y:32331,varname:node_213,prsc:2|IN-3978-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7734,x:31974,y:32307,varname:node_7734,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-213-OUT;proporder:7241-2560-9991-4291-352-9630-2078-8222-6927-4461-8095;pass:END;sub:END;*/

Shader "Shader Forge/AngleBasedColors" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _green ("green", Float ) = 1
        _red ("red", Float ) = 1
        _blue ("blue", Float ) = 1
        _red_copy ("red_copy", Float ) = 1
        _red_copy_copy ("red_copy_copy", Float ) = 0
        _green_copy_copy ("green_copy_copy", Float ) = 0
        _blue_copy_copy ("blue_copy_copy", Float ) = 0
        _blue_copy ("blue_copy", Float ) = 1
        _green_copy ("green_copy", Float ) = 1
        _multVec ("multVec", Vector) = (0,0,0,0)
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
            uniform float4 _multVec;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float3 normalDir : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float3 emissive = (abs(i.normalDir).rg.g*_multVec.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
