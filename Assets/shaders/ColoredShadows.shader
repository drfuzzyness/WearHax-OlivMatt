// Shader created with Shader Forge v1.16 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.16;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:9361,x:33767,y:32728,varname:node_9361,prsc:2|custl-1088-OUT;n:type:ShaderForge.SFN_Color,id:6587,x:32531,y:32686,ptovrint:False,ptlb:shadow,ptin:_shadow,varname:node_6587,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:535,x:32531,y:33071,ptovrint:False,ptlb:node_535,ptin:_node_535,varname:node_535,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.8125761,c3:0.02941179,c4:1;n:type:ShaderForge.SFN_LightAttenuation,id:3181,x:32531,y:32892,varname:node_3181,prsc:2;n:type:ShaderForge.SFN_Blend,id:4566,x:32790,y:33070,varname:node_4566,prsc:2,blmd:10,clmp:True|SRC-6587-RGB,DST-535-RGB;n:type:ShaderForge.SFN_LightColor,id:4792,x:32790,y:33233,varname:node_4792,prsc:2;n:type:ShaderForge.SFN_OneMinus,id:9168,x:32771,y:32866,varname:node_9168,prsc:2|IN-3181-OUT;n:type:ShaderForge.SFN_Multiply,id:7636,x:32951,y:32866,varname:node_7636,prsc:2|A-9168-OUT,B-8800-OUT;n:type:ShaderForge.SFN_Vector1,id:8800,x:32771,y:32800,varname:node_8800,prsc:2,v1:10;n:type:ShaderForge.SFN_OneMinus,id:1142,x:33118,y:32866,varname:node_1142,prsc:2|IN-7636-OUT;n:type:ShaderForge.SFN_Vector4Property,id:8594,x:33118,y:32639,ptovrint:False,ptlb:node_8594,ptin:_node_8594,varname:node_8594,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5,v2:0.5,v3:0.5,v4:1;n:type:ShaderForge.SFN_Lerp,id:778,x:33325,y:32817,varname:node_778,prsc:2|A-6587-RGB,B-8594-XYZ,T-1142-OUT;n:type:ShaderForge.SFN_Multiply,id:484,x:33133,y:33082,varname:node_484,prsc:2|A-3181-OUT,B-4566-OUT,C-4792-RGB;n:type:ShaderForge.SFN_Blend,id:1088,x:33527,y:32996,varname:node_1088,prsc:2,blmd:10,clmp:True|SRC-778-OUT,DST-484-OUT;proporder:6587-535-8594;pass:END;sub:END;*/

Shader "Shader Forge/ColoredShadows" {
    Properties {
        _shadow ("shadow", Color) = (0.5,0.5,0.5,1)
        _node_535 ("node_535", Color) = (1,0.8125761,0.02941179,1)
        _node_8594 ("node_8594", Vector) = (0.5,0.5,0.5,1)
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
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _shadow;
            uniform float4 _node_535;
            uniform float4 _node_8594;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                LIGHTING_COORDS(0,1)
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = saturate(( (attenuation*saturate(( _node_535.rgb > 0.5 ? (1.0-(1.0-2.0*(_node_535.rgb-0.5))*(1.0-_shadow.rgb)) : (2.0*_node_535.rgb*_shadow.rgb) ))*_LightColor0.rgb) > 0.5 ? (1.0-(1.0-2.0*((attenuation*saturate(( _node_535.rgb > 0.5 ? (1.0-(1.0-2.0*(_node_535.rgb-0.5))*(1.0-_shadow.rgb)) : (2.0*_node_535.rgb*_shadow.rgb) ))*_LightColor0.rgb)-0.5))*(1.0-lerp(_shadow.rgb,_node_8594.rgb,(1.0 - ((1.0 - attenuation)*10.0))))) : (2.0*(attenuation*saturate(( _node_535.rgb > 0.5 ? (1.0-(1.0-2.0*(_node_535.rgb-0.5))*(1.0-_shadow.rgb)) : (2.0*_node_535.rgb*_shadow.rgb) ))*_LightColor0.rgb)*lerp(_shadow.rgb,_node_8594.rgb,(1.0 - ((1.0 - attenuation)*10.0)))) ));
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
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _shadow;
            uniform float4 _node_535;
            uniform float4 _node_8594;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                LIGHTING_COORDS(0,1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = saturate(( (attenuation*saturate(( _node_535.rgb > 0.5 ? (1.0-(1.0-2.0*(_node_535.rgb-0.5))*(1.0-_shadow.rgb)) : (2.0*_node_535.rgb*_shadow.rgb) ))*_LightColor0.rgb) > 0.5 ? (1.0-(1.0-2.0*((attenuation*saturate(( _node_535.rgb > 0.5 ? (1.0-(1.0-2.0*(_node_535.rgb-0.5))*(1.0-_shadow.rgb)) : (2.0*_node_535.rgb*_shadow.rgb) ))*_LightColor0.rgb)-0.5))*(1.0-lerp(_shadow.rgb,_node_8594.rgb,(1.0 - ((1.0 - attenuation)*10.0))))) : (2.0*(attenuation*saturate(( _node_535.rgb > 0.5 ? (1.0-(1.0-2.0*(_node_535.rgb-0.5))*(1.0-_shadow.rgb)) : (2.0*_node_535.rgb*_shadow.rgb) ))*_LightColor0.rgb)*lerp(_shadow.rgb,_node_8594.rgb,(1.0 - ((1.0 - attenuation)*10.0)))) ));
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
