// Shader created with Shader Forge v1.16 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.16;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3138,x:34245,y:32735,varname:node_3138,prsc:2|emission-1063-OUT,voffset-6336-OUT;n:type:ShaderForge.SFN_Color,id:8928,x:32644,y:32681,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7843137,c2:0.07843139,c3:0.07843139,c4:1;n:type:ShaderForge.SFN_Color,id:6130,x:32644,y:32502,ptovrint:False,ptlb:OutlineColor,ptin:_OutlineColor,varname:_Color_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Lerp,id:1063,x:33231,y:32648,varname:node_1063,prsc:2|A-6130-RGB,B-8928-RGB,T-6237-OUT;n:type:ShaderForge.SFN_TexCoord,id:9162,x:32028,y:33076,varname:node_9162,prsc:2,uv:0;n:type:ShaderForge.SFN_Lerp,id:7723,x:32415,y:33098,varname:node_7723,prsc:2|A-9162-U,B-9162-V,T-9184-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9184,x:32212,y:33199,ptovrint:False,ptlb:Direction,ptin:_Direction,varname:node_9184,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:7735,x:32628,y:32984,varname:node_7735,prsc:2|A-7723-OUT,B-2401-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2672,x:32334,y:32737,ptovrint:False,ptlb:mult,ptin:_mult,varname:node_2672,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_FragmentPosition,id:2608,x:33432,y:32481,varname:node_2608,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:3794,x:32221,y:32831,varname:node_3794,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-7723-OUT;n:type:ShaderForge.SFN_RemapRange,id:5250,x:32651,y:33141,varname:node_5250,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-7723-OUT;n:type:ShaderForge.SFN_Clamp01,id:3201,x:32833,y:33105,varname:node_3201,prsc:2|IN-5250-OUT;n:type:ShaderForge.SFN_Clamp01,id:8831,x:33059,y:32775,varname:node_8831,prsc:2|IN-9636-OUT;n:type:ShaderForge.SFN_Multiply,id:6237,x:33059,y:32964,varname:node_6237,prsc:2|A-3201-OUT,B-7735-OUT;n:type:ShaderForge.SFN_Multiply,id:9636,x:32831,y:32843,varname:node_9636,prsc:2|A-2672-OUT,B-7735-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2401,x:32408,y:32893,ptovrint:False,ptlb:add,ptin:_add,varname:node_2401,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_TexCoord,id:6139,x:32468,y:33427,varname:node_6139,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:2390,x:33120,y:33465,varname:node_2390,prsc:2|A-1185-OUT,B-8496-OUT,C-45-OUT;n:type:ShaderForge.SFN_Time,id:3259,x:32431,y:33653,varname:node_3259,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:5821,x:32629,y:33469,varname:node_5821,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-6139-V;n:type:ShaderForge.SFN_Add,id:8496,x:32850,y:33490,varname:node_8496,prsc:2|A-5821-OUT,B-2080-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1185,x:32887,y:33435,ptovrint:False,ptlb:sinSCale,ptin:_sinSCale,varname:node_1185,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_Tau,id:45,x:32980,y:33717,varname:node_45,prsc:2;n:type:ShaderForge.SFN_Sin,id:5102,x:33320,y:33473,varname:node_5102,prsc:2|IN-2390-OUT;n:type:ShaderForge.SFN_RemapRange,id:1924,x:33486,y:33323,varname:node_1924,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-5102-OUT;n:type:ShaderForge.SFN_Multiply,id:6336,x:33881,y:33254,varname:node_6336,prsc:2|A-7441-XYZ,B-1924-OUT,C-6244-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4762,x:32492,y:33808,ptovrint:False,ptlb:timeSCale,ptin:_timeSCale,varname:node_4762,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:2080,x:32699,y:33689,varname:node_2080,prsc:2|A-3259-TSL,B-4762-OUT;n:type:ShaderForge.SFN_NormalVector,id:9860,x:33752,y:33037,prsc:2,pt:False;n:type:ShaderForge.SFN_Vector4Property,id:7441,x:33636,y:33175,ptovrint:False,ptlb:node_7441,ptin:_node_7441,varname:node_7441,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Noise,id:6244,x:33636,y:33437,varname:node_6244,prsc:2|XY-9955-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:9955,x:33144,y:33170,varname:node_9955,prsc:2,uv:0;proporder:8928-6130-9184-2672-2401-1185-4762-7441;pass:END;sub:END;*/

Shader "Shader Forge/GradientNew3" {
    Properties {
        _Color ("Color", Color) = (0.7843137,0.07843139,0.07843139,1)
        _OutlineColor ("OutlineColor", Color) = (0.07843138,0.3921569,0.7843137,1)
        _Direction ("Direction", Float ) = 1
        _mult ("mult", Float ) = 0.5
        _add ("add", Float ) = 0.1
        _sinSCale ("sinSCale", Float ) = 4
        _timeSCale ("timeSCale", Float ) = 1
        _node_7441 ("node_7441", Vector) = (0,0,0,0)
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
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform float4 _OutlineColor;
            uniform float _Direction;
            uniform float _add;
            uniform float _sinSCale;
            uniform float _timeSCale;
            uniform float4 _node_7441;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 node_3259 = _Time + _TimeEditor;
                float2 node_6244_skew = o.uv0 + 0.2127+o.uv0.x*0.3713*o.uv0.y;
                float2 node_6244_rnd = 4.789*sin(489.123*(node_6244_skew));
                float node_6244 = frac(node_6244_rnd.x*node_6244_rnd.y*(1+node_6244_skew.x));
                v.vertex.xyz += (_node_7441.rgb*(sin((_sinSCale*(o.uv0.g.r+(node_3259.r*_timeSCale))*6.28318530718))*0.5+0.5)*node_6244);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
////// Lighting:
////// Emissive:
                float node_7723 = lerp(i.uv0.r,i.uv0.g,_Direction);
                float node_7735 = (node_7723+_add);
                float3 emissive = lerp(_OutlineColor.rgb,_Color.rgb,(saturate((node_7723*2.0+-1.0))*node_7735));
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
            uniform float4 _TimeEditor;
            uniform float _sinSCale;
            uniform float _timeSCale;
            uniform float4 _node_7441;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 node_3259 = _Time + _TimeEditor;
                float2 node_6244_skew = o.uv0 + 0.2127+o.uv0.x*0.3713*o.uv0.y;
                float2 node_6244_rnd = 4.789*sin(489.123*(node_6244_skew));
                float node_6244 = frac(node_6244_rnd.x*node_6244_rnd.y*(1+node_6244_skew.x));
                v.vertex.xyz += (_node_7441.rgb*(sin((_sinSCale*(o.uv0.g.r+(node_3259.r*_timeSCale))*6.28318530718))*0.5+0.5)*node_6244);
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
