// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.16 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.16;sub:START;pass:START;ps:flbk:,iptp:2,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3937,x:36670,y:33510,varname:node_3937,prsc:2|custl-5425-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:8403,x:31059,y:33129,varname:node_8403,prsc:2;n:type:ShaderForge.SFN_Normalize,id:6355,x:31260,y:33129,varname:node_6355,prsc:2|IN-8403-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:4736,x:31589,y:33117,varname:node_4736,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-6355-OUT;n:type:ShaderForge.SFN_Abs,id:8645,x:31798,y:33111,varname:node_8645,prsc:2|IN-4736-OUT;n:type:ShaderForge.SFN_OneMinus,id:691,x:31997,y:33111,varname:node_691,prsc:2|IN-8645-OUT;n:type:ShaderForge.SFN_Power,id:2669,x:32288,y:33131,varname:node_2669,prsc:2|VAL-691-OUT,EXP-3411-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3411,x:32029,y:33298,ptovrint:False,ptlb:horizonSharpness,ptin:_horizonSharpness,varname:node_3411,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:16;n:type:ShaderForge.SFN_ComponentMask,id:5485,x:31970,y:32007,varname:node_5485,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-6355-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4887,x:31992,y:32215,varname:node_4887,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-6355-OUT;n:type:ShaderForge.SFN_Clamp01,id:6085,x:32174,y:32215,varname:node_6085,prsc:2|IN-4887-OUT;n:type:ShaderForge.SFN_OneMinus,id:1233,x:32363,y:32215,varname:node_1233,prsc:2|IN-6085-OUT;n:type:ShaderForge.SFN_Power,id:3053,x:32379,y:32381,varname:node_3053,prsc:2|VAL-6085-OUT,EXP-961-OUT;n:type:ShaderForge.SFN_ValueProperty,id:961,x:32169,y:32448,ptovrint:False,ptlb:starPosition,ptin:_starPosition,varname:node_961,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Multiply,id:5922,x:32456,y:32021,varname:node_5922,prsc:2|A-5485-OUT,B-1233-OUT;n:type:ShaderForge.SFN_Add,id:286,x:32625,y:31963,varname:node_286,prsc:2|A-5485-OUT,B-5922-OUT;n:type:ShaderForge.SFN_Tex2d,id:5608,x:32822,y:31946,ptovrint:False,ptlb:starTexture,ptin:_starTexture,varname:node_5608,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-286-OUT;n:type:ShaderForge.SFN_Multiply,id:6187,x:33043,y:32038,varname:node_6187,prsc:2|A-5608-G,B-3053-OUT;n:type:ShaderForge.SFN_Relay,id:8640,x:32827,y:32691,varname:node_8640,prsc:2|IN-691-OUT;n:type:ShaderForge.SFN_Slider,id:482,x:32962,y:32756,ptovrint:False,ptlb:cycle,ptin:_cycle,varname:node_482,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1367521,max:1;n:type:ShaderForge.SFN_Color,id:9752,x:32914,y:32210,ptovrint:False,ptlb:nightColor,ptin:_nightColor,varname:node_9752,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2872122,c2:0.08109862,c3:0.42,c4:1;n:type:ShaderForge.SFN_Color,id:3829,x:32914,y:32425,ptovrint:False,ptlb:dayColor,ptin:_dayColor,varname:node_3829,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2,c2:0.5,c3:0.8,c4:1;n:type:ShaderForge.SFN_Power,id:3292,x:33119,y:32295,varname:node_3292,prsc:2|VAL-9752-RGB,EXP-9752-A;n:type:ShaderForge.SFN_Power,id:9899,x:33119,y:32498,varname:node_9899,prsc:2|VAL-3829-RGB,EXP-3829-A;n:type:ShaderForge.SFN_Lerp,id:9894,x:33296,y:32577,varname:node_9894,prsc:2|A-3829-RGB,B-9899-OUT,T-8640-OUT;n:type:ShaderForge.SFN_Lerp,id:3076,x:33296,y:32274,varname:node_3076,prsc:2|A-9752-RGB,B-3292-OUT,T-8640-OUT;n:type:ShaderForge.SFN_Power,id:891,x:33545,y:32295,varname:node_891,prsc:2|VAL-3076-OUT,EXP-5783-OUT;n:type:ShaderForge.SFN_OneMinus,id:5783,x:33296,y:32408,varname:node_5783,prsc:2|IN-482-OUT;n:type:ShaderForge.SFN_Power,id:9203,x:33501,y:32577,varname:node_9203,prsc:2|VAL-9894-OUT,EXP-482-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4610,x:33568,y:32198,ptovrint:False,ptlb:starIntensity,ptin:_starIntensity,varname:node_4610,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:100;n:type:ShaderForge.SFN_Multiply,id:717,x:33819,y:32135,varname:node_717,prsc:2|A-6187-OUT,B-4610-OUT,C-891-OUT;n:type:ShaderForge.SFN_Add,id:2987,x:34022,y:32271,varname:node_2987,prsc:2|A-717-OUT,B-3857-OUT;n:type:ShaderForge.SFN_Lerp,id:1972,x:34230,y:32581,varname:node_1972,prsc:2|A-2987-OUT,B-9203-OUT,T-482-OUT;n:type:ShaderForge.SFN_Color,id:7134,x:34258,y:32306,ptovrint:False,ptlb:ground,ptin:_ground,varname:node_7134,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:257,x:34513,y:32882,varname:node_257,prsc:2|A-7134-RGB,B-1972-OUT,T-289-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7815,x:32798,y:33034,ptovrint:False,ptlb:surroundSharpness,ptin:_surroundSharpness,varname:node_7815,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.005;n:type:ShaderForge.SFN_Multiply,id:5103,x:32989,y:32949,varname:node_5103,prsc:2|A-2174-OUT,B-7815-OUT;n:type:ShaderForge.SFN_Add,id:9212,x:33181,y:32949,varname:node_9212,prsc:2|A-5103-OUT,B-4736-OUT;n:type:ShaderForge.SFN_Divide,id:8681,x:33350,y:32949,varname:node_8681,prsc:2|A-9212-OUT,B-7815-OUT;n:type:ShaderForge.SFN_Clamp01,id:289,x:33511,y:32949,varname:node_289,prsc:2|IN-8681-OUT;n:type:ShaderForge.SFN_OneMinus,id:1843,x:32927,y:33307,varname:node_1843,prsc:2|IN-2669-OUT;n:type:ShaderForge.SFN_Multiply,id:1620,x:33114,y:33345,varname:node_1620,prsc:2|A-1843-OUT,B-1835-OUT;n:type:ShaderForge.SFN_LightColor,id:3302,x:33114,y:33208,varname:node_3302,prsc:2;n:type:ShaderForge.SFN_Power,id:9978,x:33386,y:33256,varname:node_9978,prsc:2|VAL-3302-RGB,EXP-1620-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1835,x:32927,y:33467,ptovrint:False,ptlb:lightEccentricity,ptin:_lightEccentricity,varname:node_1835,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Dot,id:5159,x:31518,y:33878,varname:node_5159,prsc:2,dt:0|A-6355-OUT,B-8309-OUT;n:type:ShaderForge.SFN_LightVector,id:8309,x:31295,y:33997,varname:node_8309,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:4573,x:31741,y:33878,varname:node_4573,prsc:2|IN-5159-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1535,x:31741,y:34064,ptovrint:False,ptlb:sunSize,ptin:_sunSize,varname:node_1535,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:6.5;n:type:ShaderForge.SFN_Exp,id:7572,x:31920,y:34064,varname:node_7572,prsc:2,et:0|IN-1535-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7367,x:32072,y:34132,ptovrint:False,ptlb:sunSharpness,ptin:_sunSharpness,varname:node_7367,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Exp,id:7996,x:32234,y:34132,varname:node_7996,prsc:2,et:0|IN-7367-OUT;n:type:ShaderForge.SFN_Power,id:5039,x:32119,y:33881,varname:node_5039,prsc:2|VAL-4573-OUT,EXP-7572-OUT;n:type:ShaderForge.SFN_Multiply,id:9692,x:32420,y:33877,varname:node_9692,prsc:2|A-5039-OUT,B-7996-OUT;n:type:ShaderForge.SFN_Clamp01,id:5977,x:32598,y:33877,varname:node_5977,prsc:2|IN-9692-OUT;n:type:ShaderForge.SFN_Add,id:7156,x:32089,y:33759,varname:node_7156,prsc:2|A-1177-OUT,B-5159-OUT;n:type:ShaderForge.SFN_Multiply,id:5353,x:32271,y:33663,varname:node_5353,prsc:2|A-6336-OUT,B-7156-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6765,x:32271,y:33812,ptovrint:False,ptlb:horizonRel,ptin:_horizonRel,varname:node_6765,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Power,id:5594,x:32450,y:33709,varname:node_5594,prsc:2|VAL-5353-OUT,EXP-6765-OUT;n:type:ShaderForge.SFN_Add,id:3437,x:32620,y:33658,varname:node_3437,prsc:2|A-5594-OUT,B-5353-OUT;n:type:ShaderForge.SFN_Multiply,id:809,x:32917,y:33570,varname:node_809,prsc:2|A-2669-OUT,B-3437-OUT;n:type:ShaderForge.SFN_Vector1,id:6336,x:32089,y:33675,varname:node_6336,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:1177,x:31926,y:33741,varname:node_1177,prsc:2,v1:1;n:type:ShaderForge.SFN_OneMinus,id:935,x:33388,y:33597,varname:node_935,prsc:2|IN-5977-OUT;n:type:ShaderForge.SFN_Multiply,id:5083,x:33731,y:33576,varname:node_5083,prsc:2|A-1835-OUT,B-935-OUT;n:type:ShaderForge.SFN_Power,id:6948,x:34167,y:33451,varname:node_6948,prsc:2|VAL-3302-RGB,EXP-5083-OUT;n:type:ShaderForge.SFN_Lerp,id:3477,x:34717,y:33206,varname:node_3477,prsc:2|A-257-OUT,B-9978-OUT,T-809-OUT;n:type:ShaderForge.SFN_Lerp,id:4729,x:34908,y:33500,varname:node_4729,prsc:2|A-3477-OUT,B-6948-OUT,T-5977-OUT;n:type:ShaderForge.SFN_Max,id:1877,x:35134,y:33500,varname:node_1877,prsc:2|A-4729-OUT,B-4805-OUT;n:type:ShaderForge.SFN_Vector1,id:4805,x:34908,y:33646,varname:node_4805,prsc:2,v1:0;n:type:ShaderForge.SFN_TexCoord,id:9487,x:34501,y:34166,varname:node_9487,prsc:2,uv:0;n:type:ShaderForge.SFN_ScreenPos,id:6288,x:34501,y:34325,varname:node_6288,prsc:2,sctp:2;n:type:ShaderForge.SFN_ToggleProperty,id:3014,x:34501,y:34498,ptovrint:False,ptlb:screenSpaceToggle,ptin:_screenSpaceToggle,varname:node_3014,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Lerp,id:6917,x:34725,y:34166,varname:node_6917,prsc:2|A-9487-UVOUT,B-6288-UVOUT,T-3014-OUT;n:type:ShaderForge.SFN_Noise,id:3418,x:34903,y:34166,varname:node_3418,prsc:2|XY-6917-OUT;n:type:ShaderForge.SFN_Vector1,id:5634,x:34903,y:34316,varname:node_5634,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Subtract,id:7991,x:35105,y:34166,varname:node_7991,prsc:2|A-3418-OUT,B-5634-OUT;n:type:ShaderForge.SFN_Vector1,id:6889,x:35105,y:34102,varname:node_6889,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:6628,x:35309,y:34126,varname:node_6628,prsc:2|A-6889-OUT,B-7991-OUT;n:type:ShaderForge.SFN_Slider,id:7047,x:34903,y:33980,ptovrint:False,ptlb:ditheringintensity,ptin:_ditheringintensity,varname:node_7047,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:4,cur:4,max:10;n:type:ShaderForge.SFN_Power,id:3969,x:35309,y:33968,varname:node_3969,prsc:2|VAL-7047-OUT,EXP-7047-OUT;n:type:ShaderForge.SFN_Multiply,id:1292,x:35551,y:33832,varname:node_1292,prsc:2|A-1877-OUT,B-3969-OUT;n:type:ShaderForge.SFN_Add,id:6846,x:35755,y:33937,varname:node_6846,prsc:2|A-1292-OUT,B-6628-OUT;n:type:ShaderForge.SFN_Floor,id:7484,x:35943,y:33937,varname:node_7484,prsc:2|IN-6846-OUT;n:type:ShaderForge.SFN_Divide,id:3037,x:36136,y:33847,varname:node_3037,prsc:2|A-7484-OUT,B-3969-OUT;n:type:ShaderForge.SFN_Slider,id:1184,x:36086,y:34013,ptovrint:False,ptlb:dithering,ptin:_dithering,varname:node_1184,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:1;n:type:ShaderForge.SFN_Lerp,id:5425,x:36443,y:33820,varname:node_5425,prsc:2|A-1877-OUT,B-3037-OUT,T-1184-OUT;n:type:ShaderForge.SFN_Vector1,id:2174,x:32806,y:32947,varname:node_2174,prsc:2,v1:0.5;n:type:ShaderForge.SFN_TexCoord,id:2967,x:33270,y:31259,varname:node_2967,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:1642,x:34540,y:32087,varname:node_1642,prsc:2|A-3857-OUT,B-2987-OUT,C-7134-RGB;n:type:ShaderForge.SFN_Color,id:6127,x:33567,y:31496,ptovrint:False,ptlb:node_6127,ptin:_node_6127,varname:node_6127,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.751724,c4:1;n:type:ShaderForge.SFN_Color,id:444,x:33499,y:31662,ptovrint:False,ptlb:node_444,ptin:_node_444,varname:node_444,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8036519,c2:0.1102941,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:3857,x:33830,y:31924,varname:node_3857,prsc:2|A-6127-RGB,B-444-RGB,T-8640-OUT;n:type:ShaderForge.SFN_Lerp,id:3201,x:33245,y:31405,varname:node_3201,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:485,x:33387,y:31894,varname:node_485,prsc:2;n:type:ShaderForge.SFN_Color,id:2112,x:34259,y:33681,ptovrint:False,ptlb:sunColor,ptin:_sunColor,varname:node_2112,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:3411-961-5608-482-9752-3829-4610-7134-7815-1835-1535-7367-6765-3014-7047-1184-6127-444-2112;pass:END;sub:END;*/

Shader "Unlit/NewUnlitShader" {
    Properties {
        _horizonSharpness ("horizonSharpness", Float ) = 16
        _starPosition ("starPosition", Float ) = 5
        _starTexture ("starTexture", 2D) = "black" {}
        _cycle ("cycle", Range(0, 1)) = 0.1367521
        _nightColor ("nightColor", Color) = (0.2872122,0.08109862,0.42,1)
        _dayColor ("dayColor", Color) = (0.2,0.5,0.8,1)
        _starIntensity ("starIntensity", Float ) = 100
        _ground ("ground", Color) = (0.5,0.5,0.5,1)
        _surroundSharpness ("surroundSharpness", Float ) = 0.005
        _lightEccentricity ("lightEccentricity", Float ) = 10
        _sunSize ("sunSize", Float ) = 6.5
        _sunSharpness ("sunSharpness", Float ) = 2
        _horizonRel ("horizonRel", Float ) = 1
        [MaterialToggle] _screenSpaceToggle ("screenSpaceToggle", Float ) = 0
        _ditheringintensity ("ditheringintensity", Range(4, 10)) = 4
        _dithering ("dithering", Range(1, 1)) = 1
        _node_6127 ("node_6127", Color) = (0,1,0.751724,1)
        _node_444 ("node_444", Color) = (0.8036519,0.1102941,1,1)
        _sunColor ("sunColor", Color) = (0.5,0.5,0.5,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
            "PreviewType"="Skybox"
        }
        LOD 100
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
            uniform float _horizonSharpness;
            uniform float _starPosition;
            uniform sampler2D _starTexture; uniform float4 _starTexture_ST;
            uniform float _cycle;
            uniform float4 _nightColor;
            uniform float4 _dayColor;
            uniform float _starIntensity;
            uniform float4 _ground;
            uniform float _surroundSharpness;
            uniform float _lightEccentricity;
            uniform float _sunSize;
            uniform float _sunSharpness;
            uniform float _horizonRel;
            uniform fixed _screenSpaceToggle;
            uniform float _ditheringintensity;
            uniform float _dithering;
            uniform float4 _node_6127;
            uniform float4 _node_444;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float4 screenPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
/////// Vectors:
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float3 node_6355 = normalize(i.posWorld.rgb);
                float2 node_5485 = node_6355.rb;
                float node_6085 = saturate(node_6355.g);
                float2 node_286 = (node_5485+(node_5485*(1.0 - node_6085)));
                float4 _starTexture_var = tex2D(_starTexture,TRANSFORM_TEX(node_286, _starTexture));
                float node_4736 = node_6355.g;
                float node_691 = (1.0 - abs(node_4736));
                float node_8640 = node_691;
                float3 node_3857 = lerp(_node_6127.rgb,_node_444.rgb,node_8640);
                float3 node_2987 = (((_starTexture_var.g*pow(node_6085,_starPosition))*_starIntensity*pow(lerp(_nightColor.rgb,pow(_nightColor.rgb,_nightColor.a),node_8640),(1.0 - _cycle)))+node_3857);
                float node_2669 = pow(node_691,_horizonSharpness);
                float node_5159 = dot(node_6355,lightDirection);
                float node_5353 = (0.5*(1.0+node_5159));
                float node_5977 = saturate((pow(saturate(node_5159),exp(_sunSize))*exp(_sunSharpness)));
                float3 node_1877 = max(lerp(lerp(lerp(_ground.rgb,lerp(node_2987,pow(lerp(_dayColor.rgb,pow(_dayColor.rgb,_dayColor.a),node_8640),_cycle),_cycle),saturate((((0.5*_surroundSharpness)+node_4736)/_surroundSharpness))),pow(_LightColor0.rgb,((1.0 - node_2669)*_lightEccentricity)),(node_2669*(pow(node_5353,_horizonRel)+node_5353))),pow(_LightColor0.rgb,(_lightEccentricity*(1.0 - node_5977))),node_5977),0.0);
                float node_3969 = pow(_ditheringintensity,_ditheringintensity);
                float2 node_6917 = lerp(i.uv0,sceneUVs.rg,_screenSpaceToggle);
                float2 node_3418_skew = node_6917 + 0.2127+node_6917.x*0.3713*node_6917.y;
                float2 node_3418_rnd = 4.789*sin(489.123*(node_3418_skew));
                float node_3418 = frac(node_3418_rnd.x*node_3418_rnd.y*(1+node_3418_skew.x));
                float3 finalColor = lerp(node_1877,(floor(((node_1877*node_3969)+(2.0*(node_3418-0.5))))/node_3969),_dithering);
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
            uniform float _horizonSharpness;
            uniform float _starPosition;
            uniform sampler2D _starTexture; uniform float4 _starTexture_ST;
            uniform float _cycle;
            uniform float4 _nightColor;
            uniform float4 _dayColor;
            uniform float _starIntensity;
            uniform float4 _ground;
            uniform float _surroundSharpness;
            uniform float _lightEccentricity;
            uniform float _sunSize;
            uniform float _sunSharpness;
            uniform float _horizonRel;
            uniform fixed _screenSpaceToggle;
            uniform float _ditheringintensity;
            uniform float _dithering;
            uniform float4 _node_6127;
            uniform float4 _node_444;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float4 screenPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
/////// Vectors:
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float3 node_6355 = normalize(i.posWorld.rgb);
                float2 node_5485 = node_6355.rb;
                float node_6085 = saturate(node_6355.g);
                float2 node_286 = (node_5485+(node_5485*(1.0 - node_6085)));
                float4 _starTexture_var = tex2D(_starTexture,TRANSFORM_TEX(node_286, _starTexture));
                float node_4736 = node_6355.g;
                float node_691 = (1.0 - abs(node_4736));
                float node_8640 = node_691;
                float3 node_3857 = lerp(_node_6127.rgb,_node_444.rgb,node_8640);
                float3 node_2987 = (((_starTexture_var.g*pow(node_6085,_starPosition))*_starIntensity*pow(lerp(_nightColor.rgb,pow(_nightColor.rgb,_nightColor.a),node_8640),(1.0 - _cycle)))+node_3857);
                float node_2669 = pow(node_691,_horizonSharpness);
                float node_5159 = dot(node_6355,lightDirection);
                float node_5353 = (0.5*(1.0+node_5159));
                float node_5977 = saturate((pow(saturate(node_5159),exp(_sunSize))*exp(_sunSharpness)));
                float3 node_1877 = max(lerp(lerp(lerp(_ground.rgb,lerp(node_2987,pow(lerp(_dayColor.rgb,pow(_dayColor.rgb,_dayColor.a),node_8640),_cycle),_cycle),saturate((((0.5*_surroundSharpness)+node_4736)/_surroundSharpness))),pow(_LightColor0.rgb,((1.0 - node_2669)*_lightEccentricity)),(node_2669*(pow(node_5353,_horizonRel)+node_5353))),pow(_LightColor0.rgb,(_lightEccentricity*(1.0 - node_5977))),node_5977),0.0);
                float node_3969 = pow(_ditheringintensity,_ditheringintensity);
                float2 node_6917 = lerp(i.uv0,sceneUVs.rg,_screenSpaceToggle);
                float2 node_3418_skew = node_6917 + 0.2127+node_6917.x*0.3713*node_6917.y;
                float2 node_3418_rnd = 4.789*sin(489.123*(node_3418_skew));
                float node_3418 = frac(node_3418_rnd.x*node_3418_rnd.y*(1+node_3418_skew.x));
                float3 finalColor = lerp(node_1877,(floor(((node_1877*node_3969)+(2.0*(node_3418-0.5))))/node_3969),_dithering);
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
