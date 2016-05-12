// Shader created with Shader Forge v1.16 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.16;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-4245-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:4245,x:32439,y:32883,varname:node_4245,prsc:2,chbt:0|M-8293-OUT,R-9867-RGB,G-598-RGB,B-6031-RGB;n:type:ShaderForge.SFN_Color,id:9867,x:31994,y:32929,ptovrint:False,ptlb:node_9867,ptin:_node_9867,varname:node_9867,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:598,x:32058,y:32993,ptovrint:False,ptlb:node_9867_copy,ptin:_node_9867_copy,varname:_node_9867_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:6031,x:32122,y:33057,ptovrint:False,ptlb:node_9867_copy_copy,ptin:_node_9867_copy_copy,varname:_node_9867_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_NormalVector,id:2520,x:31762,y:32638,prsc:2,pt:False;n:type:ShaderForge.SFN_NormalVector,id:2302,x:31762,y:32810,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:8293,x:31994,y:32688,varname:node_8293,prsc:2|A-2520-OUT,B-2302-OUT;proporder:9867-598-6031;pass:END;sub:END;*/

Shader "Shader Forge/Simple3Dir" {
    Properties {
        _node_9867 ("node_9867", Color) = (0.5,0.5,0.5,1)
        _node_9867_copy ("node_9867_copy", Color) = (0.5,0.5,0.5,1)
        _node_9867_copy_copy ("node_9867_copy_copy", Color) = (0.5,0.5,0.5,1)
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
            uniform float4 _node_9867;
            uniform float4 _node_9867_copy;
            uniform float4 _node_9867_copy_copy;
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
                float3 node_8293 = (i.normalDir*i.normalDir);
                float3 emissive = (node_8293.r*_node_9867.rgb + node_8293.g*_node_9867_copy.rgb + node_8293.b*_node_9867_copy_copy.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
