// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33166,y:32604,varname:node_3138,prsc:2|diff-9348-OUT,spec-4920-OUT,gloss-2708-OUT,normal-1289-RGB,emission-7295-OUT,voffset-7043-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32340,y:32512,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Vector1,id:422,x:32004,y:32586,varname:node_422,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Vector1,id:8089,x:31741,y:32644,varname:node_8089,prsc:2,v1:1;n:type:ShaderForge.SFN_Tex2d,id:2150,x:31741,y:32779,ptovrint:False,ptlb:t1,ptin:_t1,varname:node_2150,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:17da6d53ec93a0444bd0f751b1d02477,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1289,x:31728,y:32960,ptovrint:False,ptlb:t2,ptin:_t2,varname:node_1289,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e08c295755c0885479ad19f518286ff2,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:6513,x:31914,y:33162,ptovrint:False,ptlb:t3,ptin:_t3,varname:node_6513,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d5a7b265583826d41928a807b7a96f0f,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector1,id:5705,x:31728,y:33128,varname:node_5705,prsc:2,v1:100;n:type:ShaderForge.SFN_Vector1,id:9042,x:32301,y:33129,varname:node_9042,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:9976,x:31955,y:33312,varname:node_9976,prsc:2,v1:3;n:type:ShaderForge.SFN_Power,id:4726,x:32130,y:33147,varname:node_4726,prsc:2|VAL-6513-RGB,EXP-9976-OUT;n:type:ShaderForge.SFN_Power,id:9139,x:31930,y:32996,varname:node_9139,prsc:2|VAL-1289-B,EXP-5705-OUT;n:type:ShaderForge.SFN_Multiply,id:4920,x:32319,y:32726,varname:node_4920,prsc:2|A-422-OUT,B-2150-R;n:type:ShaderForge.SFN_Multiply,id:9348,x:32004,y:32698,varname:node_9348,prsc:2|A-2150-RGB,B-8089-OUT;n:type:ShaderForge.SFN_Multiply,id:5259,x:32285,y:32982,varname:node_5259,prsc:2|A-3581-OUT,B-4726-OUT;n:type:ShaderForge.SFN_Multiply,id:4408,x:32445,y:32994,varname:node_4408,prsc:2|A-5259-OUT,B-1358-OUT;n:type:ShaderForge.SFN_Multiply,id:7295,x:32633,y:32853,varname:node_7295,prsc:2|A-4408-OUT,B-459-RGB;n:type:ShaderForge.SFN_OneMinus,id:3581,x:32117,y:32982,varname:node_3581,prsc:2|IN-9139-OUT;n:type:ShaderForge.SFN_Vector1,id:2708,x:32649,y:32490,varname:node_2708,prsc:2,v1:30;n:type:ShaderForge.SFN_Color,id:459,x:32480,y:33201,ptovrint:False,ptlb:node_459,ptin:_node_459,varname:node_459,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7215686,c2:0.6,c3:0.3137255,c4:1;n:type:ShaderForge.SFN_NormalVector,id:181,x:32741,y:32987,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:7043,x:32922,y:32896,varname:node_7043,prsc:2|A-7295-OUT,B-181-OUT,C-8423-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8423,x:32791,y:32792,ptovrint:False,ptlb:node_8423,ptin:_node_8423,varname:node_8423,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_ValueProperty,id:1358,x:32270,y:33211,ptovrint:False,ptlb:shiny,ptin:_shiny,varname:node_1358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:7241-2150-1289-6513-459-8423-1358;pass:END;sub:END;*/

Shader "Shader Forge/meteorShader" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _t1 ("t1", 2D) = "white" {}
        _t2 ("t2", 2D) = "bump" {}
        _t3 ("t3", 2D) = "white" {}
        _node_459 ("node_459", Color) = (0.7215686,0.6,0.3137255,1)
        _node_8423 ("node_8423", Float ) = 2
        _shiny ("shiny", Float ) = 0
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform sampler2D _t1; uniform float4 _t1_ST;
            uniform sampler2D _t2; uniform float4 _t2_ST;
            uniform sampler2D _t3; uniform float4 _t3_ST;
            uniform float4 _node_459;
            uniform float _node_8423;
            uniform float _shiny;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float3 _t2_var = UnpackNormal(tex2Dlod(_t2,float4(TRANSFORM_TEX(o.uv0, _t2),0.0,0)));
                float4 _t3_var = tex2Dlod(_t3,float4(TRANSFORM_TEX(o.uv0, _t3),0.0,0));
                float3 node_7295 = ((((1.0 - pow(_t2_var.b,100.0))*pow(_t3_var.rgb,3.0))*_shiny)*_node_459.rgb);
                v.vertex.xyz += (node_7295*v.normal*_node_8423);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _t2_var = UnpackNormal(tex2D(_t2,TRANSFORM_TEX(i.uv0, _t2)));
                float3 normalLocal = _t2_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 30.0;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 _t1_var = tex2D(_t1,TRANSFORM_TEX(i.uv0, _t1));
                float node_4920 = (0.3*_t1_var.r);
                float3 specularColor = float3(node_4920,node_4920,node_4920);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = (_t1_var.rgb*1.0);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float4 _t3_var = tex2D(_t3,TRANSFORM_TEX(i.uv0, _t3));
                float3 node_7295 = ((((1.0 - pow(_t2_var.b,100.0))*pow(_t3_var.rgb,3.0))*_shiny)*_node_459.rgb);
                float3 emissive = node_7295;
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
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
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform sampler2D _t1; uniform float4 _t1_ST;
            uniform sampler2D _t2; uniform float4 _t2_ST;
            uniform sampler2D _t3; uniform float4 _t3_ST;
            uniform float4 _node_459;
            uniform float _node_8423;
            uniform float _shiny;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float3 _t2_var = UnpackNormal(tex2Dlod(_t2,float4(TRANSFORM_TEX(o.uv0, _t2),0.0,0)));
                float4 _t3_var = tex2Dlod(_t3,float4(TRANSFORM_TEX(o.uv0, _t3),0.0,0));
                float3 node_7295 = ((((1.0 - pow(_t2_var.b,100.0))*pow(_t3_var.rgb,3.0))*_shiny)*_node_459.rgb);
                v.vertex.xyz += (node_7295*v.normal*_node_8423);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _t2_var = UnpackNormal(tex2D(_t2,TRANSFORM_TEX(i.uv0, _t2)));
                float3 normalLocal = _t2_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 30.0;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 _t1_var = tex2D(_t1,TRANSFORM_TEX(i.uv0, _t1));
                float node_4920 = (0.3*_t1_var.r);
                float3 specularColor = float3(node_4920,node_4920,node_4920);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = (_t1_var.rgb*1.0);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform sampler2D _t2; uniform float4 _t2_ST;
            uniform sampler2D _t3; uniform float4 _t3_ST;
            uniform float4 _node_459;
            uniform float _node_8423;
            uniform float _shiny;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float3 _t2_var = UnpackNormal(tex2Dlod(_t2,float4(TRANSFORM_TEX(o.uv0, _t2),0.0,0)));
                float4 _t3_var = tex2Dlod(_t3,float4(TRANSFORM_TEX(o.uv0, _t3),0.0,0));
                float3 node_7295 = ((((1.0 - pow(_t2_var.b,100.0))*pow(_t3_var.rgb,3.0))*_shiny)*_node_459.rgb);
                v.vertex.xyz += (node_7295*v.normal*_node_8423);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
