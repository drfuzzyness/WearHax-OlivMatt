// Shader created with Shader Forge v1.16 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.16;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.1962803,fgcg:0.2132353,fgcb:0.1364079,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:5746,x:34326,y:32992,varname:node_5746,prsc:2|diff-3757-OUT,spec-6381-OUT,gloss-6095-OUT,normal-7078-OUT,emission-3747-OUT,difocc-7564-OUT;n:type:ShaderForge.SFN_Tex2d,id:3442,x:31581,y:31487,ptovrint:False,ptlb:base_color,ptin:_base_color,cmnt:primary color map,varname:node_3442,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-424-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:4005,x:31624,y:32702,ptovrint:False,ptlb:normal_map,ptin:_normal_map,cmnt:To append 2 normal maps we combine the RGB of nmp_1 with the RG of nmp_2,varname:node_4005,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-424-UVOUT;n:type:ShaderForge.SFN_Color,id:5870,x:31581,y:31713,ptovrint:False,ptlb:base_color_multiply,ptin:_base_color_multiply,varname:node_5870,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.9997838,c3:0.9997838,c4:1;n:type:ShaderForge.SFN_Slider,id:1413,x:32072,y:32228,ptovrint:False,ptlb:detail_color_intensity,ptin:_detail_color_intensity,varname:node_1413,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:2091,x:31599,y:33478,ptovrint:False,ptlb:base_maps,ptin:_base_maps,varname:node_2091,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-424-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:4481,x:31624,y:32907,ptovrint:False,ptlb:detail_normal_map,ptin:_detail_normal_map,varname:_normal_map_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-4910-UVOUT;n:type:ShaderForge.SFN_Append,id:3193,x:31856,y:33050,cmnt:You cant add a vector2 to a vector3 so we extract RG and add 0 for B just so we get a vector3,varname:node_3193,prsc:2|A-4481-R,B-4481-G,C-9414-OUT;n:type:ShaderForge.SFN_Vector1,id:9414,x:31624,y:33121,varname:node_9414,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:7078,x:32466,y:32686,varname:node_7078,prsc:2|A-4005-RGB,B-7398-OUT,T-5184-OUT;n:type:ShaderForge.SFN_Slider,id:5184,x:31624,y:33275,ptovrint:False,ptlb:detail_normal_intensity,ptin:_detail_normal_intensity,varname:node_5184,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:6877,x:31572,y:31936,ptovrint:False,ptlb:detail_color,ptin:_detail_color,cmnt:detail map can be used for dirt rust etc...,varname:_base_color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4910-UVOUT;n:type:ShaderForge.SFN_Color,id:7881,x:31572,y:32125,ptovrint:False,ptlb:detail_color_multiply,ptin:_detail_color_multiply,varname:_base_multiply_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:0;n:type:ShaderForge.SFN_Multiply,id:8876,x:31867,y:31620,varname:node_8876,prsc:2|A-3442-RGB,B-5870-RGB;n:type:ShaderForge.SFN_Multiply,id:9048,x:31881,y:31974,varname:node_9048,prsc:2|A-6877-RGB,B-7881-RGB;n:type:ShaderForge.SFN_Lerp,id:3757,x:32692,y:31963,varname:node_3757,prsc:2|A-8876-OUT,B-8638-OUT,T-1413-OUT;n:type:ShaderForge.SFN_TexCoord,id:9817,x:30047,y:32082,varname:node_9817,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:247,x:30492,y:32081,varname:node_247,prsc:2|A-9817-UVOUT,B-6786-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4607,x:30047,y:32264,ptovrint:False,ptlb:base_color_tiling,ptin:_base_color_tiling,cmnt:Allows user to tile the base color,varname:node_4607,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ConstantClamp,id:6786,x:30255,y:32264,varname:node_6786,prsc:2,min:1,max:1000|IN-4607-OUT;n:type:ShaderForge.SFN_TexCoord,id:4616,x:29926,y:33049,varname:node_4616,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:9657,x:30366,y:33044,varname:node_9657,prsc:2|A-4616-UVOUT,B-5511-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4288,x:29926,y:33259,ptovrint:False,ptlb:detail_color_tiling,ptin:_detail_color_tiling,varname:_base_color_tiling_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ConstantClamp,id:5511,x:30138,y:33215,varname:node_5511,prsc:2,min:1,max:1000|IN-4288-OUT;n:type:ShaderForge.SFN_Rotator,id:424,x:30894,y:31758,cmnt:Allows the user to rotate the material,varname:node_424,prsc:2|UVIN-247-OUT,ANG-6479-OUT;n:type:ShaderForge.SFN_Slider,id:6479,x:30259,y:31792,ptovrint:False,ptlb:base_rotation,ptin:_base_rotation,varname:node_6479,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Rotator,id:4910,x:30845,y:32728,cmnt:Allows the user to rotate the detail,varname:node_4910,prsc:2|UVIN-9657-OUT,ANG-6237-OUT;n:type:ShaderForge.SFN_Slider,id:6237,x:30172,y:32765,ptovrint:False,ptlb:detail_rotation,ptin:_detail_rotation,varname:_texture_rotation_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Tex2d,id:7858,x:31599,y:33870,ptovrint:False,ptlb:detail_maps,ptin:_detail_maps,varname:_base_maps_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4910-UVOUT;n:type:ShaderForge.SFN_Add,id:6402,x:31951,y:33795,cmnt:Add the base and detail masks,varname:node_6402,prsc:2|A-2091-RGB,B-7858-RGB;n:type:ShaderForge.SFN_ComponentMask,id:6772,x:32614,y:33696,cmnt:The add node doesnt allow to output individual channels so were breaking them up here,varname:node_6772,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-3125-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6381,x:32614,y:33845,varname:node_6381,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-3125-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3777,x:32614,y:34101,varname:node_3777,prsc:2,cc1:2,cc2:-1,cc3:-1,cc4:-1|IN-3125-OUT;n:type:ShaderForge.SFN_Add,id:997,x:32598,y:34445,cmnt:The component mask node doesnt allow A for some reason so were just adding them together here,varname:node_997,prsc:2|A-2091-A,B-7858-A;n:type:ShaderForge.SFN_Lerp,id:3125,x:32200,y:33526,cmnt:This controls the opacity of the detail maps,varname:node_3125,prsc:2|A-2091-RGB,B-6402-OUT,T-7842-OUT;n:type:ShaderForge.SFN_Slider,id:7842,x:31442,y:33672,ptovrint:False,ptlb:detail_map_intensity,ptin:_detail_map_intensity,varname:node_7842,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:1512,x:32962,y:34402,varname:node_1512,prsc:2|A-2091-A,B-997-OUT,T-7842-OUT;n:type:ShaderForge.SFN_Blend,id:7398,x:32119,y:32735,varname:node_7398,prsc:2,blmd:10,clmp:True|SRC-3193-OUT,DST-4005-RGB;n:type:ShaderForge.SFN_Blend,id:8638,x:32142,y:31886,varname:node_8638,prsc:2,blmd:10,clmp:True|SRC-9048-OUT,DST-8876-OUT;n:type:ShaderForge.SFN_Lerp,id:6095,x:33894,y:33599,varname:node_6095,prsc:2|A-6772-OUT,B-8245-OUT,T-9997-OUT;n:type:ShaderForge.SFN_Negate,id:8245,x:33346,y:33698,varname:node_8245,prsc:2|IN-6772-OUT;n:type:ShaderForge.SFN_Slider,id:7263,x:32597,y:34007,ptovrint:False,ptlb:roughness_smoothness,ptin:_roughness_smoothness,varname:node_7263,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Round,id:9997,x:33346,y:33878,cmnt:round to 0 or 1 to act like a toggle,varname:node_9997,prsc:2|IN-7263-OUT;n:type:ShaderForge.SFN_Power,id:7564,x:32966,y:34090,varname:node_7564,prsc:2|VAL-3777-OUT,EXP-1305-OUT;n:type:ShaderForge.SFN_Slider,id:1305,x:32535,y:34283,ptovrint:False,ptlb:ambient_occlusion_power,ptin:_ambient_occlusion_power,varname:_roughness_smoothness_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:10;n:type:ShaderForge.SFN_Tex2d,id:8159,x:33350,y:33000,ptovrint:False,ptlb:emission,ptin:_emission,varname:node_8159,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:3260,x:33350,y:33196,ptovrint:False,ptlb:emission_multiply,ptin:_emission_multiply,varname:node_3260,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:3747,x:33713,y:33056,varname:node_3747,prsc:2|A-8159-RGB,B-3260-RGB;proporder:3442-5870-6877-7881-1413-4607-4288-4005-4481-5184-6479-6237-2091-7858-1305-7842-7263-8159-3260;pass:END;sub:END;*/

Shader "Shader Forge/nielsStandardShader" {
    Properties {
        _base_color ("base_color", 2D) = "white" {}
        _base_color_multiply ("base_color_multiply", Color) = (1,0.9997838,0.9997838,1)
        _detail_color ("detail_color", 2D) = "white" {}
        _detail_color_multiply ("detail_color_multiply", Color) = (0,0,0,0)
        _detail_color_intensity ("detail_color_intensity", Range(0, 1)) = 0
        _base_color_tiling ("base_color_tiling", Float ) = 0
        _detail_color_tiling ("detail_color_tiling", Float ) = 0
        _normal_map ("normal_map", 2D) = "bump" {}
        _detail_normal_map ("detail_normal_map", 2D) = "bump" {}
        _detail_normal_intensity ("detail_normal_intensity", Range(0, 1)) = 0
        _base_rotation ("base_rotation", Range(0, 10)) = 0
        _detail_rotation ("detail_rotation", Range(0, 10)) = 0
        _base_maps ("base_maps", 2D) = "white" {}
        _detail_maps ("detail_maps", 2D) = "white" {}
        _ambient_occlusion_power ("ambient_occlusion_power", Range(1, 10)) = 1
        _detail_map_intensity ("detail_map_intensity", Range(0, 1)) = 0
        _roughness_smoothness ("roughness_smoothness", Range(0, 1)) = 0
        _emission ("emission", 2D) = "white" {}
        _emission_multiply ("emission_multiply", Color) = (1,1,1,1)
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _base_color; uniform float4 _base_color_ST;
            uniform sampler2D _normal_map; uniform float4 _normal_map_ST;
            uniform float4 _base_color_multiply;
            uniform float _detail_color_intensity;
            uniform sampler2D _base_maps; uniform float4 _base_maps_ST;
            uniform sampler2D _detail_normal_map; uniform float4 _detail_normal_map_ST;
            uniform float _detail_normal_intensity;
            uniform sampler2D _detail_color; uniform float4 _detail_color_ST;
            uniform float4 _detail_color_multiply;
            uniform float _base_color_tiling;
            uniform float _detail_color_tiling;
            uniform float _base_rotation;
            uniform float _detail_rotation;
            uniform sampler2D _detail_maps; uniform float4 _detail_maps_ST;
            uniform float _detail_map_intensity;
            uniform float _roughness_smoothness;
            uniform float _ambient_occlusion_power;
            uniform sampler2D _emission; uniform float4 _emission_ST;
            uniform float4 _emission_multiply;
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
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float node_424_ang = _base_rotation;
                float node_424_spd = 1.0;
                float node_424_cos = cos(node_424_spd*node_424_ang);
                float node_424_sin = sin(node_424_spd*node_424_ang);
                float2 node_424_piv = float2(0.5,0.5);
                float2 node_424 = (mul((i.uv0*clamp(_base_color_tiling,1,1000))-node_424_piv,float2x2( node_424_cos, -node_424_sin, node_424_sin, node_424_cos))+node_424_piv); // Allows the user to rotate the material
                float3 _normal_map_var = UnpackNormal(tex2D(_normal_map,TRANSFORM_TEX(node_424, _normal_map))); // To append 2 normal maps we combine the RGB of nmp_1 with the RG of nmp_2
                float node_4910_ang = _detail_rotation;
                float node_4910_spd = 1.0;
                float node_4910_cos = cos(node_4910_spd*node_4910_ang);
                float node_4910_sin = sin(node_4910_spd*node_4910_ang);
                float2 node_4910_piv = float2(0.5,0.5);
                float2 node_4910 = (mul((i.uv0*clamp(_detail_color_tiling,1,1000))-node_4910_piv,float2x2( node_4910_cos, -node_4910_sin, node_4910_sin, node_4910_cos))+node_4910_piv); // Allows the user to rotate the detail
                float3 _detail_normal_map_var = UnpackNormal(tex2D(_detail_normal_map,TRANSFORM_TEX(node_4910, _detail_normal_map)));
                float3 normalLocal = lerp(_normal_map_var.rgb,saturate(( _normal_map_var.rgb > 0.5 ? (1.0-(1.0-2.0*(_normal_map_var.rgb-0.5))*(1.0-float3(_detail_normal_map_var.r,_detail_normal_map_var.g,0.0))) : (2.0*_normal_map_var.rgb*float3(_detail_normal_map_var.r,_detail_normal_map_var.g,0.0)) )),_detail_normal_intensity);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _base_maps_var = tex2D(_base_maps,TRANSFORM_TEX(node_424, _base_maps));
                float4 _detail_maps_var = tex2D(_detail_maps,TRANSFORM_TEX(node_4910, _detail_maps));
                float3 node_3125 = lerp(_base_maps_var.rgb,(_base_maps_var.rgb+_detail_maps_var.rgb),_detail_map_intensity); // This controls the opacity of the detail maps
                float node_6772 = node_3125.r; // The add node doesnt allow to output individual channels so were breaking them up here
                float gloss = 1.0 - lerp(node_6772,(-1*node_6772),round(_roughness_smoothness)); // Convert roughness to gloss
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                UnityGI gi = UnityGlobalIllumination (d, 1, gloss, normalDirection);
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float4 _base_color_var = tex2D(_base_color,TRANSFORM_TEX(node_424, _base_color)); // primary color map
                float3 node_8876 = (_base_color_var.rgb*_base_color_multiply.rgb);
                float4 _detail_color_var = tex2D(_detail_color,TRANSFORM_TEX(node_4910, _detail_color)); // detail map can be used for dirt rust etc...
                float3 diffuseColor = lerp(node_8876,saturate(( node_8876 > 0.5 ? (1.0-(1.0-2.0*(node_8876-0.5))*(1.0-(_detail_color_var.rgb*_detail_color_multiply.rgb))) : (2.0*node_8876*(_detail_color_var.rgb*_detail_color_multiply.rgb)) )),_detail_color_intensity); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, node_3125.g, specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4 );
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                indirectDiffuse *= pow(node_3125.b,_ambient_occlusion_power); // Diffuse AO
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float4 _emission_var = tex2D(_emission,TRANSFORM_TEX(i.uv0, _emission));
                float3 emissive = (_emission_var.rgb*_emission_multiply.rgb);
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _base_color; uniform float4 _base_color_ST;
            uniform sampler2D _normal_map; uniform float4 _normal_map_ST;
            uniform float4 _base_color_multiply;
            uniform float _detail_color_intensity;
            uniform sampler2D _base_maps; uniform float4 _base_maps_ST;
            uniform sampler2D _detail_normal_map; uniform float4 _detail_normal_map_ST;
            uniform float _detail_normal_intensity;
            uniform sampler2D _detail_color; uniform float4 _detail_color_ST;
            uniform float4 _detail_color_multiply;
            uniform float _base_color_tiling;
            uniform float _detail_color_tiling;
            uniform float _base_rotation;
            uniform float _detail_rotation;
            uniform sampler2D _detail_maps; uniform float4 _detail_maps_ST;
            uniform float _detail_map_intensity;
            uniform float _roughness_smoothness;
            uniform sampler2D _emission; uniform float4 _emission_ST;
            uniform float4 _emission_multiply;
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
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float node_424_ang = _base_rotation;
                float node_424_spd = 1.0;
                float node_424_cos = cos(node_424_spd*node_424_ang);
                float node_424_sin = sin(node_424_spd*node_424_ang);
                float2 node_424_piv = float2(0.5,0.5);
                float2 node_424 = (mul((i.uv0*clamp(_base_color_tiling,1,1000))-node_424_piv,float2x2( node_424_cos, -node_424_sin, node_424_sin, node_424_cos))+node_424_piv); // Allows the user to rotate the material
                float3 _normal_map_var = UnpackNormal(tex2D(_normal_map,TRANSFORM_TEX(node_424, _normal_map))); // To append 2 normal maps we combine the RGB of nmp_1 with the RG of nmp_2
                float node_4910_ang = _detail_rotation;
                float node_4910_spd = 1.0;
                float node_4910_cos = cos(node_4910_spd*node_4910_ang);
                float node_4910_sin = sin(node_4910_spd*node_4910_ang);
                float2 node_4910_piv = float2(0.5,0.5);
                float2 node_4910 = (mul((i.uv0*clamp(_detail_color_tiling,1,1000))-node_4910_piv,float2x2( node_4910_cos, -node_4910_sin, node_4910_sin, node_4910_cos))+node_4910_piv); // Allows the user to rotate the detail
                float3 _detail_normal_map_var = UnpackNormal(tex2D(_detail_normal_map,TRANSFORM_TEX(node_4910, _detail_normal_map)));
                float3 normalLocal = lerp(_normal_map_var.rgb,saturate(( _normal_map_var.rgb > 0.5 ? (1.0-(1.0-2.0*(_normal_map_var.rgb-0.5))*(1.0-float3(_detail_normal_map_var.r,_detail_normal_map_var.g,0.0))) : (2.0*_normal_map_var.rgb*float3(_detail_normal_map_var.r,_detail_normal_map_var.g,0.0)) )),_detail_normal_intensity);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _base_maps_var = tex2D(_base_maps,TRANSFORM_TEX(node_424, _base_maps));
                float4 _detail_maps_var = tex2D(_detail_maps,TRANSFORM_TEX(node_4910, _detail_maps));
                float3 node_3125 = lerp(_base_maps_var.rgb,(_base_maps_var.rgb+_detail_maps_var.rgb),_detail_map_intensity); // This controls the opacity of the detail maps
                float node_6772 = node_3125.r; // The add node doesnt allow to output individual channels so were breaking them up here
                float gloss = 1.0 - lerp(node_6772,(-1*node_6772),round(_roughness_smoothness)); // Convert roughness to gloss
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float4 _base_color_var = tex2D(_base_color,TRANSFORM_TEX(node_424, _base_color)); // primary color map
                float3 node_8876 = (_base_color_var.rgb*_base_color_multiply.rgb);
                float4 _detail_color_var = tex2D(_detail_color,TRANSFORM_TEX(node_4910, _detail_color)); // detail map can be used for dirt rust etc...
                float3 diffuseColor = lerp(node_8876,saturate(( node_8876 > 0.5 ? (1.0-(1.0-2.0*(node_8876-0.5))*(1.0-(_detail_color_var.rgb*_detail_color_multiply.rgb))) : (2.0*node_8876*(_detail_color_var.rgb*_detail_color_multiply.rgb)) )),_detail_color_intensity); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, node_3125.g, specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4 );
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
