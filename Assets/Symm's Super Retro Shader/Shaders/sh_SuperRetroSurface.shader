// Made with Amplify Shader Editor v1.9.1.5
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Symm/Super Retro Shader/Super Retro Surface"
{
	Properties
	{
		[HideInInspector]shader_is_using_thry_editor("shader_is_using_thry_editor", Float) = 0
		[HideInInspector]shader_master_label("Super Retro Shader", Float) = 0
		[ThryShaderOptimizerLockButton]_ShaderOptimizerEnabled("LockButton", Int) = 0
		[Helpbox]_LockButtonHelpbox("Warning! Animating values will not work by default when the shader is Locked In! Right click a property to allow for animation at runtime.", Int) = 1
		[ThryWideEnum(Opaque,0, Transparent,3, TransCutout,1, TransClipping,9, Fade,2,  Additive,4, Soft Additive,5, Multiplicative,6, 2x Multiplicative,7)][Space(8)]_Mode("Rendering Presets--{on_value_actions:[ 	{value:0,actions:[ 		{type:SET_PROPERTY,data:render_queue=2000}, 		{type:SET_PROPERTY,data:render_type=Opaque}, 		{type:SET_PROPERTY,data:_BlendOp=0}, 		{type:SET_PROPERTY,data:_BlendOpAlpha=0}, 		{type:SET_PROPERTY,data:_Cutoff=0}, 		{type:SET_PROPERTY,data:_SrcBlend=1}, 		{type:SET_PROPERTY,data:_DstBlend=0}, 		{type:SET_PROPERTY,data:_SrcBlendAlpha=1}, 		{type:SET_PROPERTY,data:_DstBlendAlpha=1}, 		{type:SET_PROPERTY,data:_AlphaToCoverage=0}, 		{type:SET_PROPERTY,data:_ZWrite=1}, 		{type:SET_PROPERTY,data:_ZTest=4}, 	]}, 	{value:1,actions:[ 		{type:SET_PROPERTY,data:render_queue=2450}, 		{type:SET_PROPERTY,data:render_type=TransparentCutout}, 		{type:SET_PROPERTY,data:_BlendOp=0}, 		{type:SET_PROPERTY,data:_BlendOpAlpha=4}, 		{type:SET_PROPERTY,data:_Cutoff=.5}, 		{type:SET_PROPERTY,data:_SrcBlend=1}, 		{type:SET_PROPERTY,data:_DstBlend=0}, 		{type:SET_PROPERTY,data:_SrcBlendAlpha=1}, 		{type:SET_PROPERTY,data:_DstBlendAlpha=1}, 		{type:SET_PROPERTY,data:_AlphaToCoverage=0}, 		{type:SET_PROPERTY,data:_ZWrite=1}, 		{type:SET_PROPERTY,data:_ZTest=4}, 	]}, 	{value:2,actions:[ 		{type:SET_PROPERTY,data:render_queue=3000}, 		{type:SET_PROPERTY,data:render_type=Transparent}, 		{type:SET_PROPERTY,data:_BlendOp=0}, 		{type:SET_PROPERTY,data:_BlendOpAlpha=4}, 		{type:SET_PROPERTY,data:_Cutoff=0}, 		{type:SET_PROPERTY,data:_SrcBlend=5}, 		{type:SET_PROPERTY,data:_DstBlend=10}, 		{type:SET_PROPERTY,data:_SrcBlendAlpha=1}, 		{type:SET_PROPERTY,data:_DstBlendAlpha=1}, 		{type:SET_PROPERTY,data:_AlphaToCoverage=0}, 		{type:SET_PROPERTY,data:_ZWrite=0}, 		{type:SET_PROPERTY,data:_ZTest=4}, 	]}, 	{value:3,actions:[ 		{type:SET_PROPERTY,data:render_queue=3000}, 		{type:SET_PROPERTY,data:render_type=Transparent}, 		{type:SET_PROPERTY,data:_BlendOp=0}, 		{type:SET_PROPERTY,data:_BlendOpAlpha=4}, 		{type:SET_PROPERTY,data:_Cutoff=0}, 		{type:SET_PROPERTY,data:_SrcBlend=1}, 		{type:SET_PROPERTY,data:_DstBlend=10}, 		{type:SET_PROPERTY,data:_SrcBlendAlpha=1}, 		{type:SET_PROPERTY,data:_DstBlendAlpha=1}, 		{type:SET_PROPERTY,data:_AlphaToCoverage=0}, 		{type:SET_PROPERTY,data:_ZWrite=0}, 		{type:SET_PROPERTY,data:_ZTest=4}, 	]}, 	{value:4,actions:[ 		{type:SET_PROPERTY,data:render_queue=3000}, 		{type:SET_PROPERTY,data:render_type=Transparent}, 		{type:SET_PROPERTY,data:_BlendOp=0}, 		{type:SET_PROPERTY,data:_BlendOpAlpha=4}, 		{type:SET_PROPERTY,data:_Cutoff=0}, 		{type:SET_PROPERTY,data:_SrcBlend=1}, 		{type:SET_PROPERTY,data:_DstBlend=1}, 		{type:SET_PROPERTY,data:_SrcBlendAlpha=1}, 		{type:SET_PROPERTY,data:_DstBlendAlpha=1}, 		{type:SET_PROPERTY,data:_AlphaToCoverage=0}, 		{type:SET_PROPERTY,data:_ZWrite=0}, 		{type:SET_PROPERTY,data:_ZTest=4}, 	]}, 	{value:5,actions:[ 		{type:SET_PROPERTY,data:render_queue=3000}, 		{type:SET_PROPERTY,data:render_type=Transparent}, 		{type:SET_PROPERTY,data:_BlendOp=0}, 		{type:SET_PROPERTY,data:_BlendOpAlpha=4}, 		{type:SET_PROPERTY,data:_Cutoff=0}, 		{type:SET_PROPERTY,data:_SrcBlend=4}, 		{type:SET_PROPERTY,data:_DstBlend=1}, 		{type:SET_PROPERTY,data:_SrcBlendAlpha=1}, 		{type:SET_PROPERTY,data:_DstBlendAlpha=1}, 		{type:SET_PROPERTY,data:_AlphaToCoverage=0}, 		{type:SET_PROPERTY,data:_ZWrite=0}, 		{type:SET_PROPERTY,data:_ZTest=4}, 	]}, 	{value:6,actions:[ 		{type:SET_PROPERTY,data:render_queue=3000}, 		{type:SET_PROPERTY,data:render_type=Transparent}, 		{type:SET_PROPERTY,data:_BlendOp=0}, 		{type:SET_PROPERTY,data:_BlendOpAlpha=4}, 		{type:SET_PROPERTY,data:_Cutoff=0}, 		{type:SET_PROPERTY,data:_SrcBlend=2}, 		{type:SET_PROPERTY,data:_DstBlend=0}, 		{type:SET_PROPERTY,data:_SrcBlendAlpha=1}, 		{type:SET_PROPERTY,data:_DstBlendAlpha=1}, 		{type:SET_PROPERTY,data:_AlphaToCoverage=0}, 		{type:SET_PROPERTY,data:_ZWrite=0}, 		{type:SET_PROPERTY,data:_ZTest=4}, 	]}, 	{value:7,actions:[ 		{type:SET_PROPERTY,data:render_queue=3000}, 		{type:SET_PROPERTY,data:render_type=Transparent}, 		{type:SET_PROPERTY,data:_BlendOp=0}, 		{type:SET_PROPERTY,data:_BlendOpAlpha=4}, 		{type:SET_PROPERTY,data:_Cutoff=0}, 		{type:SET_PROPERTY,data:_SrcBlend=2}, 		{type:SET_PROPERTY,data:_DstBlend=3}, 		{type:SET_PROPERTY,data:_SrcBlendAlpha=1}, 		{type:SET_PROPERTY,data:_DstBlendAlpha=1}, 		{type:SET_PROPERTY,data:_AlphaToCoverage=0}, 		{type:SET_PROPERTY,data:_ZWrite=0}, 		{type:SET_PROPERTY,data:_ZTest=4}, 	]}, 	{value:9,actions:[ 		{type:SET_PROPERTY,data:render_queue=2450}, 		{type:SET_PROPERTY,data:render_type=TransparentCutout}, 		{type:SET_PROPERTY,data:_BlendOp=0}, 		{type:SET_PROPERTY,data:_BlendOpAlpha=4}, 		{type:SET_PROPERTY,data:_Cutoff=0}, 		{type:SET_PROPERTY,data:_SrcBlend=5}, 		{type:SET_PROPERTY,data:_DstBlend=10}, 		{type:SET_PROPERTY,data:_SrcBlendAlpha=1}, 		{type:SET_PROPERTY,data:_DstBlendAlpha=1}, 		{type:SET_PROPERTY,data:_AlphaToCoverage=0}, 		{type:SET_PROPERTY,data:_ZWrite=1}, 		{type:SET_PROPERTY,data:_ZTest=4}, 	]} ]}", Int) = 0
		[Enum(UnityEngine.Rendering.CullMode)]_Cull("Face Culling Mode", Float) = 2
		[HideInInspector]m_start_MainOps("Main Textures", Float) = 0
		[ThryHeaderLabel(Albedo)]_MainTex("Albedo (RGBA)", 2D) = "white" {}
		_Color("Albedo Tint", Color) = (1,1,1,1)
		[Enum(Texture Driven,0,N64 Bilinear,1)]_MainTextureFiltering("Albedo Filtering", Int) = 0
		[ThryHeaderLabel(Normals)]_BumpMap("Normal Map", 2D) = "bump" {}
		_BumpScale("Normal Scale", Range( 0 , 10)) = 1
		[ThryHeaderLabel(Specular)]_SpecGlossMap("Specular Map (RBG)", 2D) = "white" {}
		_SpecularTint("Specular Tint", Color) = (1,1,1,1)
		[Toggle(_)]_InvertSpecular("Invert Specular Map Color", Float) = 0
		[ThryHeaderLabel(Occlusion)]_OcclusionMap("Occlusion Map (R)", 2D) = "white" {}
		_OcclusionStrength("Occlusion Strength", Range( 0 , 1)) = 1
		[Toggle(_)]_ApplyOcclusionOnAlbedo("Apply to Base Color?", Float) = 1
		[HideInInspector]m_start_Emissive("Emissive--{reference_property:_EmissiveToggle}", Float) = 0
		[Helpbox()]_EmissiveHelpbox("NOTE: You can either use a grayscale image as your Emissive and tint with color, or use a full color Emissive and set the Tint to pure white!", Int) = 1
		[ThryHeaderLabel(Emissive)]_EmissionMap("Emissive Map (RGB)", 2D) = "black" {}
		[HDR]_EmissionColor("Emission Tint", Color) = (2,2,2,1)
		_EmissiveStrength("Emissive Strength", Range( 0 , 10)) = 1
		[Enum(Texture Driven,0,N64 Bilinear,1)]_EmissiveTextureFiltering("Emissive Filtering", Int) = 0
		[HideInInspector]m_end_Emissive("Emissive (end)", Float) = 0
		_Cutoff("Alpha Cutoff Value", Range( 0 , 1)) = 0.5
		[HideInInspector]m_end_MainOps("Main Textures (end)", Float) = 0
		[HideInInspector]m_start_Lighting("Surface Lighting", Float) = 0
		[ThryHeaderLabel(Base Surface Shading Settings)][ThryWideEnum(Lambert,0, Half Lambert,1, Gouraud,2, Per Texel,3, Flat Lambert,4, Flat Half Lambert,5, Dithered Lambert 4x4,6, Dithered Lambert 8x8,7, Dithered Half Lambert 4x4,8, Dithered Half Lambert 8x8,9, Unlit,10)]_SurfaceShadingModel("Surface Shading Model", Float) = 0
		_HalfLambertWrapStrength("Half Lambert Wrap Strength--{condition_showS:(_SurfaceShadingModel==1||_SurfaceShadingModel==5||_SurfaceShadingModel==8||_SurfaceShadingModel==9)}", Range( 0.5 , 1)) = 0.5
		[Helpbox(1)]_PerTexelHelpbox("NOTE: Per-Texel Shading technically supports Normals! However, this has two caveats. The lower the Normal Map texture size, the more important it becomes to use a slightly higher resolution Texel density. The camera will also start showing minor artifacting when you start zooming in close enough to a surface with a Normal Map.--{condition_showS:(_SurfaceShadingModel==3)}", Int) = 0
		[ThryWideEnum(Match Main Texture Resolution,0, 8x8,8, 16x16,16, 32x32,32, 64x64,64, 128x128,128, 256x256,256, 512x512,512, 1024x1024,1024)]_LightingTexelSize("Lighting Texel Size--{condition_showS:(_SurfaceShadingModel==3)}", Float) = 0
		[Helpbox(1)]_UnlitNote("NOTE: Unlit Shading does not make use of the Normal, Specular, or Occlusion Maps. If you do not plan on using any other Surface Shading Model and are using any of those textures on this material, remove them to save on VRAM usage!--{condition_showS:(_SurfaceShadingModel==10)}", Int) = 0
		_UnlitBrightness("Unlit Surface Brightness--{condition_showS:(_SurfaceShadingModel==10)}", Range( 0 , 5)) = 1
		[Toggle(_)]_IndirectLightingSupport("Indirect/Baked Lighting--{condition_showS:(_SurfaceShadingModel!=10)}", Float) = 0
		_IndirectLightingStrength("Indirect Lighting Strength--{condition_showS:(_SurfaceShadingModel!=10&&_IndirectLightingSupport==1)}", Range( 0 , 2)) = 1
		[Toggle(_)]_AmbientSHLighting("Ambient SH Lighting--{condition_showS:(_SurfaceShadingModel!=10)}", Float) = 0
		_AmbientLightingStrength("Ambient Lighting Strength--{condition_showS:(_SurfaceShadingModel!=10&&_AmbientSHLighting==1)}", Range( 0 , 2)) = 1
		[Enum(None,0,Phong,1,BlinnPhong,2)][Space(8)][ThryHeaderLabel(Specular Settings)]_SpecularShading("Specular Model--{condition_showS:(_SurfaceShadingModel!=10)}", Float) = 0
		[Helpbox(1)]_PhongFlatWarning("NOTE: Phong Specular is not technically compatible with ''Flat'' shading types, and will not show Specular per-face.--{condition_showS:(_SurfaceShadingModel!=1&&_SurfaceShadingModel!=2&&_SurfaceShadingModel!=3&&_SurfaceShadingModel!=6&&_SurfaceShadingModel!=7&&_SurfaceShadingModel!=8&&_SurfaceShadingModel!=9&&_SurfaceShadingModel!=10&&_SpecularShading==1)}", Int) = 0
		_SpecularStrength("Specular Strength--{condition_showS:(_SurfaceShadingModel!=10&&_SpecularShading==2)}", Range( 0.01 , 1)) = 0.1
		_SpecularGloss("Specular Gloss--{condition_showS:(_SurfaceShadingModel!=10&&_SpecularShading!=0&&_SpecularShading!=3)}", Range( 0.01 , 128)) = 32
		[Toggle(_)]_PerVertexSpecular("Per-Vertex Specular--{condition_showS:(_SurfaceShadingModel!=10&&_SpecularShading!=0)}", Float) = 0
		[Space(8)][ThryHeaderLabel(Shadow Settings)][Helpbox(1)]_ShadowColorHelpbox("NOTE: Shadow Color only effects Realtime Pixel/Important Directional Lights for technical (BiRP) reasons!--{condition_showS:(_SurfaceShadingModel!=10)}", Int) = 0
		_ShadowColor("Surface Shadow Color--{condition_showS:(_SurfaceShadingModel!=10),tooltip:''Only works with Realtime Directional lights!''}", Color) = (0,0,0,1)
		[HideInInspector]m_end_Lighting("Surface Lighting (end)", Float) = 0
		[HideInInspector]m_start_AffineUVs("Affine UVs--{reference_property:_AffineUVsToggle}", Float) = 0
		[HideInInspector][ThryToggle(_AffineUVsToggle)]_AffineUVsToggle("AffineUVsToggle", Float) = 0
		[HideInInspector][ThryToggle(_EmissiveToggle)]_EmissiveToggle("EmissiveToggle", Float) = 0
		_PerspectiveShiftStrength("Perspective Shift Strength", Range( 0.01 , 1)) = 1
		_AffineCameraClipBias("Affine Camera Clip Bias", Range( -5 , 0)) = -1
		[Helpbox(1)]_AffineUVsWarningHelpbox("WARNING: Higher Perspective Shift Strength values with a low (> -0.8) Affine Camera Clip Bias will result in visual artifacting and UV popping!--{condition_showS:(_AffineUVsToggle==1&&_PerspectiveShiftStrength>=0.5&&_AffineCameraClipBias>-1)}", Int) = 0
		[HideInInspector]m_end_AffineUVs("Affine UVs (end)", Float) = 0
		[HideInInspector]m_start_VertSnapping("Vertex Snapping--{reference_property:_VertSnappingToggle}", Float) = 0
		[HideInInspector][ThryToggle(_VertSnappingToggle)]_VertSnappingToggle("VertSnappingToggle", Float) = 0
		[Helpbox()]_VertSnappingHelpbox("WARNING: Vertex Snapping can cause significant flickering and visual artifacts in surface shadows on non-static objects with ''Flat'' or ''Half Lambert'' shading types. Combination of the styles are up to user discretion.--{condition_showS:(_SurfaceShadingModel==1||_SurfaceShadingModel==4||_SurfaceShadingModel==5||_SurfaceShadingModel==8||_SurfaceShadingModel==9)}", Int) = 1
		[IntRange]_VertexRoundingAccuracy("Vertex Rounding Accuracy", Range( 0 , 512)) = 128
		[HideInInspector]m_end_VertSnapping("Vertex Snapping (end)", Float) = 0
		[HideInInspector]m_start_AdvOp("Advanced Options", Float) = 0
		[HideInInspector]m_start_RenderingOps("Rendering Options", Float) = 0
		[Helpbox()]_AdvRenderingHelpbox("NOTE: You can use the ''Rendering Presets'' option at the top of the UI to quickly switch to different material types! Selecting a Rendering Preset option will automatically change these values as needed.", Int) = 1
		[ThryHeaderLabel(Depth Options)][Enum(Off,0, On,1)]_ZWrite("ZWrite", Float) = 1
		[Enum(UnityEngine.Rendering.CompareFunction)]_ZTest("ZTest", Float) = 4
		_OffsetFactor("Offset Factor", Float) = 0
		_OffsetUnits("Offset Units", Float) = 0
		[Space(8)][ThryHeaderLabel(RGB Blending Options)][Enum(UnityEngine.Rendering.BlendMode)]_SrcBlend("RGB Blend Source", Float) = 1
		[Enum(UnityEngine.Rendering.BlendMode)]_DstBlend("RGB Blend Destination", Float) = 0
		[Enum(Thry.BlendOp)]_BlendOp("RGB Blend Op", Float) = 0
		[Space(8)][ThryHeaderLabel(Alpha Blending Options)][Enum(UnityEngine.Rendering.BlendMode)]_SrcBlendAlpha("Alpha Blend Source", Float) = 0
		[Enum(UnityEngine.Rendering.BlendMode)]_DstBlendAlpha("Alpha Blend Destination", Float) = 0
		[Enum(Thry.BlendOp)]_BlendOpAlpha("Alpha Blend Op", Float) = 0
		[Space(8)][Toggle(_)]_AlphatoCoverage("Alpha to Coverage", Float) = 0
		[Enum(Thry.ColorMask)]_ColorMask("Color Mask", Float) = 15
		[HideInInspector]m_end_RenderingOps("Rendering Options (end)", Float) = 0
		[HideInInspector]m_start_StencilOps("Stencil Options", Float) = 0
		[IntRange]_StencilReference("Reference Value", Range( 0 , 255)) = 0
		[IntRange]_StencilReadMask("Read Mask Value", Range( 0 , 255)) = 255
		[IntRange]_StencilWriteMask("Write Mask Value", Range( 0 , 255)) = 255
		[Enum(UnityEngine.Rendering.CompareFunction)]_StencilComparison("Comparison", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilPassOp("Pass Front Operation", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilFailOp("Fail Front Operation", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilZFailOp("ZFail Front Operation", Float) = 0
		[HideInInspector]m_end_StencilOps("Stencil Options (end)", Float) = 0
		[HideInInspector]m_end_AdvOp("Advanced Options (end)", Float) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" "IsEmissive" = "true"  }
		Cull [_Cull]
		ZWrite [_ZWrite]
		ZTest [_ZTest]
		Offset  [_OffsetFactor] , [_OffsetUnits]
		Stencil
		{
			Ref [_StencilReference]
			ReadMask [_StencilReadMask]
			WriteMask [_StencilWriteMask]
			Comp [_StencilComparison]
			Pass [_StencilPassOp]
			Fail [_StencilFailOp]
			ZFail [_StencilZFailOp]
		}
		Blend [_SrcBlend] [_DstBlend] , [_SrcBlendAlpha] [_DstBlendAlpha]
		AlphaToMask [_AlphatoCoverage]
		ColorMask [_ColorMask]
		CGINCLUDE
		#include "UnityPBSLighting.cginc"
		#include "UnityCG.cginc"
		#include "UnityStandardUtils.cginc"
		#include "UnityShaderVariables.cginc"
		#include "Lighting.cginc"
		#pragma target 5.0
		#pragma multi_compile _ VERTEXLIGHT_ON
		#ifdef UNITY_PASS_SHADOWCASTER
			#undef INTERNAL_DATA
			#undef WorldReflectionVector
			#undef WorldNormalVector
			#define INTERNAL_DATA half3 internalSurfaceTtoW0; half3 internalSurfaceTtoW1; half3 internalSurfaceTtoW2;
			#define WorldReflectionVector(data,normal) reflect (data.worldRefl, half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal)))
			#define WorldNormalVector(data,normal) half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal))
		#endif
		struct Input
		{
			float2 uv_texcoord;
			float4 vertexToFrag42_g1193;
			float4 vertexToFrag42_g1195;
			float3 worldNormal;
			INTERNAL_DATA
			float4 vertexToFrag42_g1197;
			float3 worldPos;
			float4 screenPosition;
			float3 vertexToFrag640_g1145;
			float4 vertexToFrag42_g1196;
			float vertexToFrag313_g1143;
			float3 worldRefl;
			float4 vertexToFrag42_g1198;
		};

		struct SurfaceOutputCustomLightingCustom
		{
			half3 Albedo;
			half3 Normal;
			half3 Emission;
			half Metallic;
			half Smoothness;
			half Occlusion;
			half Alpha;
			Input SurfInput;
			UnityGIInput GIData;
		};

		uniform float shader_master_label;
		uniform int _ShaderOptimizerEnabled;
		uniform float shader_is_using_thry_editor;
		uniform int _LockButtonHelpbox;
		uniform float _OffsetUnits;
		uniform float _DstBlend;
		uniform float _BlendOp;
		uniform float _SrcBlend;
		uniform float _DstBlendAlpha;
		uniform float _AlphatoCoverage;
		uniform float _ColorMask;
		uniform float _StencilReadMask;
		uniform float _StencilWriteMask;
		uniform float _StencilReference;
		uniform float _StencilComparison;
		uniform float _StencilPassOp;
		uniform float _StencilFailOp;
		uniform float _StencilZFailOp;
		uniform float _ZTest;
		uniform float _OffsetFactor;
		uniform float _SrcBlendAlpha;
		uniform float _BlendOpAlpha;
		uniform float m_end_AdvOp;
		uniform float m_end_StencilOps;
		uniform float m_start_AdvOp;
		uniform float m_start_StencilOps;
		uniform float _ZWrite;
		uniform float m_start_RenderingOps;
		uniform float m_end_RenderingOps;
		uniform float m_end_Lighting;
		uniform float m_start_Lighting;
		uniform float m_end_AffineUVs;
		uniform float m_end_Emissive;
		uniform float m_end_MainOps;
		uniform float m_start_MainOps;
		uniform float _Cull;
		uniform float m_start_Emissive;
		uniform int _AdvRenderingHelpbox;
		uniform float m_start_AffineUVs;
		uniform float m_start_VertSnapping;
		uniform float m_end_VertSnapping;
		uniform int _Mode;
		uniform int _EmissiveHelpbox;
		uniform int _PhongFlatWarning;
		uniform int _UnlitNote;
		uniform int _PerTexelHelpbox;
		uniform int _ShadowColorHelpbox;
		uniform float _Cutoff;
		uniform int _AffineUVsWarningHelpbox;
		uniform int _VertSnappingHelpbox;
		uniform float _VertSnappingToggle;
		uniform float _VertexRoundingAccuracy;
		uniform sampler2D _EmissionMap;
		uniform float _AffineUVsToggle;
		uniform float4 _EmissionMap_ST;
		uniform float _AffineCameraClipBias;
		uniform float _PerspectiveShiftStrength;
		float4 _EmissionMap_TexelSize;
		uniform int _EmissiveTextureFiltering;
		uniform float4 _EmissionColor;
		uniform float _EmissiveStrength;
		uniform float _EmissiveToggle;
		uniform sampler2D _MainTex;
		uniform float4 _MainTex_ST;
		float4 _MainTex_TexelSize;
		uniform int _MainTextureFiltering;
		uniform float4 _Color;
		uniform float _SurfaceShadingModel;
		uniform sampler2D _BumpMap;
		uniform float4 _BumpMap_ST;
		uniform float _BumpScale;
		uniform float _HalfLambertWrapStrength;
		uniform float _LightingTexelSize;
		uniform sampler2D _OcclusionMap;
		uniform float4 _OcclusionMap_ST;
		uniform float _OcclusionStrength;
		uniform float4 _ShadowColor;
		uniform float _IndirectLightingSupport;
		uniform float _IndirectLightingStrength;
		uniform float _AmbientSHLighting;
		uniform float _AmbientLightingStrength;
		uniform float _ApplyOcclusionOnAlbedo;
		uniform float _PerVertexSpecular;
		uniform float _SpecularShading;
		uniform float _SpecularGloss;
		uniform float _SpecularStrength;
		uniform sampler2D _SpecGlossMap;
		uniform float4 _SpecGlossMap_ST;
		uniform float _InvertSpecular;
		uniform float4 _SpecularTint;
		uniform float _UnlitBrightness;


		float PerTexelSource(  )
		{
			// Original post and code by GreatestBear. Modified (slightly) by Symmasolan.
			// (https://forum.unity.com/threads/the-quest-for-efficient-per-texel-lighting.529948/#post-4913543)
		}


		float PhongSpecularinCgSource(  )
		{
			// There were very few working options for Phong lighting in HLSL. Here's a source that helped my figure out basic Phong Specular
			// (https://en.wikibooks.org/wiki/Cg_Programming/Unity/Specular_Highlights)
		}


		float PS1AffineUVSource(  )
		{
			// PlayStation 1 Affine Texture Mapping in Shader Code:
			// (https://danielilett.com/2021-11-06-tut5-21-ps1-affine-textures/)
		}


		float VertexDistfromCamera(  )
		{
			// "best way to calculate the distance between camera and vertex position?":
			// (https://forum.unity.com/threads/best-way-to-calculate-the-distance-between-camera-and-vertex-position.140917/#post-2117292)
		}


		float ShaderbySymmasolan(  )
		{
			// All code not attributed to sources written by Symmasolan (Symm#8218)
			// Please don't randomly friend request me  without talking to me first somehow :(
			// I'd love to see what you make with this shader though!
			// Tag me on Twitter! (Symmasolan)
		}


		float N64FilteringSources(  )
		{
			// N64 Style Filtering:
			// (https://forum.unity.com/threads/shader-ideas-for-replicating-n64-bi-linear-filtering.936119/#post-6116207)
			// Original ShaderToy:
			// (https://www.shadertoy.com/view/wdy3RW)
		}


		float4 N64Filtering132_g1200( sampler2D tex, float2 uv, float4 texelSize )
		{
			// texel coordinates
			float2 texels = uv * texelSize.zw;
			// calculate mip level
			float2 dx = ddx(texels);
			float2 dy = ddy(texels);
			float delta_max_sqr = max(dot(dx, dx), dot(dy, dy));
			float mip = max(0.0, 0.5 * log2(delta_max_sqr));
			// scale texel sizes and texel coordinates to handle mip levels properly
			float scale = pow(2,floor(mip));
			texelSize.xy *= scale;
			texelSize.zw /= scale;
			texels = texels / scale - 0.5;
			// calculate blend for the three points of the tri-filter
			float2 fracTexels = frac(texels);
			float3 blend = float3(
			    abs(fracTexels.x+fracTexels.y-1),
			    min(abs(fracTexels.xx-float2(0,1)), abs(fracTexels.yy-float2(1,0)))
			);
			// calculate equivalents of point filtered uvs for the three points
			float2 uvA = (floor(texels + fracTexels.yx) + 0.5) * texelSize.xy;
			float2 uvB = (floor(texels) + float2(1.5, 0.5)) * texelSize.xy;
			float2 uvC = (floor(texels) + float2(0.5, 1.5)) * texelSize.xy;
			// sample points
			fixed4 A = tex2Dlod(tex, float4(uvA, 0, mip));
			fixed4 B = tex2Dlod(tex, float4(uvB, 0, mip));
			fixed4 C = tex2Dlod(tex, float4(uvC, 0, mip));
			// blend and return
			return A * blend.x + B * blend.y + C * blend.z;
		}


		float4 N64Filtering132_g1199( sampler2D tex, float2 uv, float4 texelSize )
		{
			// texel coordinates
			float2 texels = uv * texelSize.zw;
			// calculate mip level
			float2 dx = ddx(texels);
			float2 dy = ddy(texels);
			float delta_max_sqr = max(dot(dx, dx), dot(dy, dy));
			float mip = max(0.0, 0.5 * log2(delta_max_sqr));
			// scale texel sizes and texel coordinates to handle mip levels properly
			float scale = pow(2,floor(mip));
			texelSize.xy *= scale;
			texelSize.zw /= scale;
			texels = texels / scale - 0.5;
			// calculate blend for the three points of the tri-filter
			float2 fracTexels = frac(texels);
			float3 blend = float3(
			    abs(fracTexels.x+fracTexels.y-1),
			    min(abs(fracTexels.xx-float2(0,1)), abs(fracTexels.yy-float2(1,0)))
			);
			// calculate equivalents of point filtered uvs for the three points
			float2 uvA = (floor(texels + fracTexels.yx) + 0.5) * texelSize.xy;
			float2 uvB = (floor(texels) + float2(1.5, 0.5)) * texelSize.xy;
			float2 uvC = (floor(texels) + float2(0.5, 1.5)) * texelSize.xy;
			// sample points
			fixed4 A = tex2Dlod(tex, float4(uvA, 0, mip));
			fixed4 B = tex2Dlod(tex, float4(uvB, 0, mip));
			fixed4 C = tex2Dlod(tex, float4(uvC, 0, mip));
			// blend and return
			return A * blend.x + B * blend.y + C * blend.z;
		}


		float3 CheckisFlatLighting392_g1145( int lightType, float3 worldNormal, float3 flatNormal )
		{
			UNITY_BRANCH
			if(lightType == 4 || lightType == 5) {
			    // Discard normals
			    return flatNormal;
			}
			else {
			    // Get Tangent modified World normals
			    return worldNormal;
			}
		}


		inline float Dither4x4Bayer( int x, int y )
		{
			const float dither[ 16 ] = {
				 1,  9,  3, 11,
				13,  5, 15,  7,
				 4, 12,  2, 10,
				16,  8, 14,  6 };
			int r = y * 4 + x;
			return dither[r] / 16; // same # of instructions as pre-dividing due to compiler magic
		}


		inline float Dither8x8Bayer( int x, int y )
		{
			const float dither[ 64 ] = {
				 1, 49, 13, 61,  4, 52, 16, 64,
				33, 17, 45, 29, 36, 20, 48, 32,
				 9, 57,  5, 53, 12, 60,  8, 56,
				41, 25, 37, 21, 44, 28, 40, 24,
				 3, 51, 15, 63,  2, 50, 14, 62,
				35, 19, 47, 31, 34, 18, 46, 30,
				11, 59,  7, 55, 10, 58,  6, 54,
				43, 27, 39, 23, 42, 26, 38, 22};
			int r = y * 8 + x;
			return dither[r] / 64; // same # of instructions as pre-dividing due to compiler magic
		}


		float LambertVertLitShadedNL1_g1148( float3 posWorld, float3 normalWorld )
		{
			#ifdef VERTEXLIGHT_ON
			    // to light vectors
			    float4 toLightX = unity_4LightPosX0 - posWorld.x;
			    float4 toLightY = unity_4LightPosY0 - posWorld.y;
			    float4 toLightZ = unity_4LightPosZ0 - posWorld.z;
			    // squared lengths
			    float4 lengthSq = 0;
			    lengthSq += toLightX * toLightX;
			    lengthSq += toLightY * toLightY;
			    lengthSq += toLightZ * toLightZ;
			    // don't produce NaNs if some vertex position overlaps with the light
			    lengthSq = max(lengthSq, 0.000001);
			    // NdotL
			    float4 ndotl = 0;
			    ndotl += toLightX * normalWorld.x;
			    ndotl += toLightY * normalWorld.y;
			    ndotl += toLightZ * normalWorld.z;
			    // correct NdotL
			    float4 corr = rsqrt(lengthSq);
			    ndotl = max (0, ndotl * corr);
			    // attenuation
			    float4 atten = saturate((1 - (unity_4LightAtten0 * lengthSq / 25)));
			    // shade with ndotl
			    float4 diff = float4(atten * ndotl);
			    return diff;
			#endif
			return float4(0,0,0,0);
		}


		float3 TexelSnappedWorldNormal91_g1145( float3 WorldNormal, float2 UV0, float4 TexelSize )
		{
			// 1.) Calculate how much the texture UV coords need to
			//     shift to be at the center of the nearest texel.
			float2 originalUV = UV0.xy;
			float2 centerUV = floor(originalUV * (TexelSize.zw))/TexelSize.zw + (TexelSize.xy/2.0);
			float2 dUV = (centerUV - originalUV);
			// 2b.) Calculate how much the texture coords vary over fragment space.
			//      This essentially defines a 2x2 matrix that gets
			//      texture space (UV) deltas from fragment space (ST) deltas
			// Note: I call fragment space "ST" to disambiguate from world space "XY".
			float2 dUVdS = ddx( originalUV );
			float2 dUVdT = ddy( originalUV );
			// 2c.) Invert the texture delta from fragment delta matrix
			float2x2 dSTdUV = float2x2(dUVdT[1], -dUVdT[0], -dUVdS[1], dUVdS[0])*(1.0f/(dUVdS[0]*dUVdT[1]-dUVdT[0]*dUVdS[1]));
			// 2d.) Convert the texture delta to fragment delta
			float2 dST = mul(dSTdUV , dUV);
			// 2e.) Calculate how much the world coords vary over fragment space.
			float3 dXYZdS = ddx(WorldNormal);
			float3 dXYZdT = ddy(WorldNormal);
			// 2f.) Finally, convert our fragment space delta to a world space delta
			// And be sure to clamp it in case the derivative calc went insane
			float3 dXYZ = dXYZdS * dST[0] + dXYZdT * dST[1];
			dXYZ = clamp (dXYZ, -1, 1);
			// 3a.) Transform the snapped UV back to world space
			return (WorldNormal + dXYZ);
		}


		float BaseShadingType70_g1143( int lightType, float lambert, float dithLambertQuadSq, float dithLambertOctSq, float hLambert, float dithHLambertQuadSq, float dithHLambertOctSq, float gouraud, float pertexel )
		{
			UNITY_BRANCH
			if(lightType == 1) {
			    // Half-Lambert
			    return hLambert;
			}
			else if(lightType == 2) {
			    // Gouraud (Per-Vertex)
			    return gouraud;
			}
			else if(lightType == 3) {
			    // Per-Texel
			    return pertexel;
			}
			else if(lightType == 4) {
			    // Flat Lambert
			    return lambert;
			}
			else if(lightType == 5) {
			    // Flat Half-Lambert
			    return hLambert;
			}
			else if(lightType == 6) {
			    // Dithered Lambert, Bayer 4x4
			    return dithLambertQuadSq;
			}
			else if(lightType == 7) {
			    // Dithered Lambert, Bayer 8x8
			    return dithLambertOctSq;
			}
			else if(lightType == 8) {
			    // Dithered Half-Lambert, Bayer 4x4
			    return dithHLambertQuadSq;
			}
			else if(lightType == 9) {
			    // Dithered Half-Lambert, Bayer 8x8
			    return dithHLambertOctSq;
			}
			else {
			    // All other non-available values (and 0)
			    // Lambert
			    return lambert;
			}
		}


		float3 IndirectLightingType488_g1143( int lightType, float3 lambert, float3 dithLambertQuadSq, float3 dithLambertOctSq, float3 hLambert, float3 dithHLambertQuadSq, float3 dithHLambertOctSq, float3 gouraud, float3 pertexel )
		{
			UNITY_BRANCH
			if(lightType == 1) {
			    // Half-Lambert
			    return hLambert;
			}
			else if(lightType == 2) {
			    // Gouraud (Per-Vertex)
			    return gouraud;
			}
			else if(lightType == 3) {
			    // Per-Texel
			    return pertexel;
			}
			else if(lightType == 4) {
			    // Flat Lambert
			    return lambert;
			}
			else if(lightType == 5) {
			    // Flat Half-Lambert
			    return hLambert;
			}
			else if(lightType == 6) {
			    // Dithered Lambert, Bayer 4x4
			    return dithLambertQuadSq;
			}
			else if(lightType == 7) {
			    // Dithered Lambert, Bayer 8x8
			    return dithLambertOctSq;
			}
			else if(lightType == 8) {
			    // Dithered Half-Lambert, Bayer 4x4
			    return dithHLambertQuadSq;
			}
			else if(lightType == 9) {
			    // Dithered Half-Lambert, Bayer 8x8
			    return dithHLambertOctSq;
			}
			else {
			    // All other non-available values (and 0)
			    // Lambert
			    return lambert;
			}
		}


		half3 Ambient305_g1143(  )
		{
			return half3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w);
		}


		float HalfLambertVertLitShadedNL1_g1146( float3 posWorld, float3 normalWorld, float halfLambertWrapStr )
		{
			#ifdef VERTEXLIGHT_ON
			    // to light vectors
			    float4 toLightX = unity_4LightPosX0 - posWorld.x;
			    float4 toLightY = unity_4LightPosY0 - posWorld.y;
			    float4 toLightZ = unity_4LightPosZ0 - posWorld.z;
			    // squared lengths
			    float4 lengthSq = 0;
			    lengthSq += toLightX * toLightX;
			    lengthSq += toLightY * toLightY;
			    lengthSq += toLightZ * toLightZ;
			    // don't produce NaNs if some vertex position overlaps with the light
			    lengthSq = max(lengthSq, 0.000001);
			    // NdotL
			    float4 ndotl = 0;
			    ndotl += toLightX * normalWorld.x;
			    ndotl += toLightY * normalWorld.y;
			    ndotl += toLightZ * normalWorld.z;
			    // correct NdotL
			    float4 corr = rsqrt(lengthSq);
			    ndotl = max (float4(0,0,0,0), ndotl * corr);
			    float halfLambertDiffuse = pow(ndotl * halfLambertWrapStr + halfLambertWrapStr,2.0);
			    // attenuation
			    float4 atten = saturate((1 - (unity_4LightAtten0 * lengthSq / 25)));
			    // shade with halfLambertDiffuse
			    float4 diff = atten * halfLambertDiffuse;
			    return diff;
			#endif
			return float4(0,0,0,0);
		}


		float LambertVertLitShadedNL1_g1147( float3 posWorld, float3 normalWorld )
		{
			#ifdef VERTEXLIGHT_ON
			    // to light vectors
			    float4 toLightX = unity_4LightPosX0 - posWorld.x;
			    float4 toLightY = unity_4LightPosY0 - posWorld.y;
			    float4 toLightZ = unity_4LightPosZ0 - posWorld.z;
			    // squared lengths
			    float4 lengthSq = 0;
			    lengthSq += toLightX * toLightX;
			    lengthSq += toLightY * toLightY;
			    lengthSq += toLightZ * toLightZ;
			    // don't produce NaNs if some vertex position overlaps with the light
			    lengthSq = max(lengthSq, 0.000001);
			    // NdotL
			    float4 ndotl = 0;
			    ndotl += toLightX * normalWorld.x;
			    ndotl += toLightY * normalWorld.y;
			    ndotl += toLightZ * normalWorld.z;
			    // correct NdotL
			    float4 corr = rsqrt(lengthSq);
			    ndotl = max (0, ndotl * corr);
			    // attenuation
			    float4 atten = saturate((1 - (unity_4LightAtten0 * lengthSq / 25)));
			    // shade with ndotl
			    float4 diff = float4(atten * ndotl);
			    return diff;
			#endif
			return float4(0,0,0,0);
		}


		float4 BaseVertexShadingType423_g1143( int lightType, float4 lambert, float4 dithLambertQuadSq, float4 dithLambertOctSq, float4 hLambert, float4 dithHLambertQuadSq, float4 dithHLambertOctSq, float4 gouraud, float4 pertexel )
		{
			UNITY_BRANCH
			if(lightType == 1) {
			    // Half-Lambert
			    return hLambert;
			}
			else if(lightType == 2) {
			    // Gouraud (Per-Vertex)
			    return gouraud;
			}
			else if(lightType == 3) {
			    // Per-Texel
			    return pertexel;
			}
			else if(lightType == 4) {
			    // Flat Lambert
			    return lambert;
			}
			else if(lightType == 5) {
			    // Flat Half-Lambert
			    return hLambert;
			}
			else if(lightType == 6) {
			    // Dithered Lambert, Bayer 4x4
			    return dithLambertQuadSq;
			}
			else if(lightType == 7) {
			    // Dithered Lambert, Bayer 8x8
			    return dithLambertOctSq;
			}
			else if(lightType == 8) {
			    // Dithered Half-Lambert, Bayer 4x4
			    return dithHLambertQuadSq;
			}
			else if(lightType == 9) {
			    // Dithered Half-Lambert, Bayer 8x8
			    return dithHLambertOctSq;
			}
			else {
			    // All other non-available values (and 0)
			    // Lambert
			    return lambert;
			}
		}


		float3 ColorVertexLights1_g1149( float4 shadedNL )
		{
			#ifdef VERTEXLIGHT_ON
			    // final color
			    float3 col = 0;
			    col += unity_LightColor[0].rgb * shadedNL.x;
			    col += unity_LightColor[1].rgb * shadedNL.y;
			    col += unity_LightColor[2].rgb * shadedNL.z;
			    col += unity_LightColor[3].rgb * shadedNL.w;
			    return col;
			#endif
			return float3(0,0,0);
		}


		float SpecularType208_g1143( int specularType, float phong, float blinnPhong )
		{
			UNITY_BRANCH
			if(specularType == 1) {
			    // Phong
			    return phong;
			}
			else if(specularType == 2) {
			    // Blinn-Phong
			    return blinnPhong;
			}
			else {
			    // All other values (and 0)
			    // No specular
			    return 0;
			}
		}


		void vertexDataFunc( inout appdata_full v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			float prop_VertSnappingToggle545 = _VertSnappingToggle;
			float4 ase_vertex4Pos = v.vertex;
			float4 transform529 = mul(unity_ObjectToWorld,ase_vertex4Pos);
			float prop_VertSnappingAccuracy547 = _VertexRoundingAccuracy;
			float4 transform532 = mul(unity_WorldToObject,( round( ( transform529 * prop_VertSnappingAccuracy547 ) ) / prop_VertSnappingAccuracy547 ));
			float4 var_FinalVertexRoundingOffset536 = ( prop_VertSnappingToggle545 == 1.0 ? ( transform532 - ase_vertex4Pos ) : float4( 0,0,0,0 ) );
			v.vertex.xyz += var_FinalVertexRoundingOffset536.xyz;
			v.vertex.w = 1;
			float2 uv_EmissionMap = v.texcoord.xy * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
			float2 var_TexCoords53_g1193 = uv_EmissionMap;
			float4 unityObjectToClipPos41_g1193 = UnityObjectToClipPos( ase_vertex4Pos.xyz );
			float3 objectSpaceViewDir67_g1193 = ObjSpaceViewDir( ase_vertex4Pos );
			float prop_AffineCameraClipBias1010 = _AffineCameraClipBias;
			float input_AffineCameraClipBias78_g1193 = prop_AffineCameraClipBias1010;
			float4 appendResult44_g1193 = (float4(( var_TexCoords53_g1193 * unityObjectToClipPos41_g1193.w ) , unityObjectToClipPos41_g1193.w , ( length( objectSpaceViewDir67_g1193 ) - -input_AffineCameraClipBias78_g1193 )));
			o.vertexToFrag42_g1193 = appendResult44_g1193;
			float2 uv_MainTex = v.texcoord.xy * _MainTex_ST.xy + _MainTex_ST.zw;
			float2 var_TexCoords53_g1195 = uv_MainTex;
			float4 unityObjectToClipPos41_g1195 = UnityObjectToClipPos( ase_vertex4Pos.xyz );
			float3 objectSpaceViewDir67_g1195 = ObjSpaceViewDir( ase_vertex4Pos );
			float input_AffineCameraClipBias78_g1195 = prop_AffineCameraClipBias1010;
			float4 appendResult44_g1195 = (float4(( var_TexCoords53_g1195 * unityObjectToClipPos41_g1195.w ) , unityObjectToClipPos41_g1195.w , ( length( objectSpaceViewDir67_g1195 ) - -input_AffineCameraClipBias78_g1195 )));
			o.vertexToFrag42_g1195 = appendResult44_g1195;
			float2 uv_BumpMap = v.texcoord.xy * _BumpMap_ST.xy + _BumpMap_ST.zw;
			float2 var_TexCoords53_g1197 = uv_BumpMap;
			float4 unityObjectToClipPos41_g1197 = UnityObjectToClipPos( ase_vertex4Pos.xyz );
			float3 objectSpaceViewDir67_g1197 = ObjSpaceViewDir( ase_vertex4Pos );
			float input_AffineCameraClipBias78_g1197 = prop_AffineCameraClipBias1010;
			float4 appendResult44_g1197 = (float4(( var_TexCoords53_g1197 * unityObjectToClipPos41_g1197.w ) , unityObjectToClipPos41_g1197.w , ( length( objectSpaceViewDir67_g1197 ) - -input_AffineCameraClipBias78_g1197 )));
			o.vertexToFrag42_g1197 = appendResult44_g1197;
			float4 ase_screenPos = ComputeScreenPos( UnityObjectToClipPos( v.vertex ) );
			o.screenPosition = ase_screenPos;
			float prop_BaseSurfaceLighting113 = _SurfaceShadingModel;
			int input_LightingType34_g1143 = (int)prop_BaseSurfaceLighting113;
			int input_LightingType387_g1145 = input_LightingType34_g1143;
			int lightType392_g1145 = input_LightingType387_g1145;
			float prop_AffineUVsToggle705 = _AffineUVsToggle;
			float input_GetAffinedUV4_g1197 = prop_AffineUVsToggle705;
			float4 vertexToFrag42_g1197 = appendResult44_g1197;
			float4 break45_g1197 = vertexToFrag42_g1197;
			float2 appendResult46_g1197 = (float2(break45_g1197.x , break45_g1197.y));
			float prop_AffineUVStrength711 = _PerspectiveShiftStrength;
			float input_AffineStrength15_g1197 = prop_AffineUVStrength711;
			float clampResult71_g1197 = clamp( ( break45_g1197.w * input_AffineStrength15_g1197 ) , 0.0 , 1.0 );
			float2 lerpResult43_g1197 = lerp( var_TexCoords53_g1197 , ( appendResult46_g1197 / break45_g1197.z ) , clampResult71_g1197);
			float2 var_UVAffined55_g1197 = lerpResult43_g1197;
			float prop_NormalScale431 = _BumpScale;
			float3 var_NormalXYZ88 = UnpackScaleNormal( tex2Dlod( _BumpMap, float4( ( input_GetAffinedUV4_g1197 == 1.0 ? var_UVAffined55_g1197 : var_TexCoords53_g1197 ), 0, 0.0) ), prop_NormalScale431 );
			float3 input_Normal9_g1143 = var_NormalXYZ88;
			float3 input_TangentNorm6_g1145 = input_Normal9_g1143;
			float3 ase_worldNormal = UnityObjectToWorldNormal( v.normal );
			float3 ase_worldTangent = UnityObjectToWorldDir( v.tangent.xyz );
			float3x3 tangentToWorld = CreateTangentToWorldPerVertex( ase_worldNormal, ase_worldTangent, v.tangent.w );
			float3 tangentNormal379_g1145 = input_TangentNorm6_g1145;
			float3 modWorldNormal379_g1145 = (tangentToWorld[0] * tangentNormal379_g1145.x + tangentToWorld[1] * tangentNormal379_g1145.y + tangentToWorld[2] * tangentNormal379_g1145.z);
			float3 worldNormal392_g1145 = modWorldNormal379_g1145;
			float3 ase_worldPos = mul( unity_ObjectToWorld, v.vertex );
			float3 normalizeResult386_g1145 = normalize( cross( ase_worldPos , ase_worldPos ) );
			float3 flatNormal392_g1145 = -normalizeResult386_g1145;
			float3 localCheckisFlatLighting392_g1145 = CheckisFlatLighting392_g1145( lightType392_g1145 , worldNormal392_g1145 , flatNormal392_g1145 );
			float3 var_FinalWorldNormal393_g1145 = localCheckisFlatLighting392_g1145;
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float dotResult403_g1145 = dot( var_FinalWorldNormal393_g1145 , ase_worldlightDir );
			float dot_NdotL406_g1145 = dotResult403_g1145;
			float temp_output_63_0_g1145 = max( dot_NdotL406_g1145 , 0.0 );
			float var_GouraudRT639_g1145 = temp_output_63_0_g1145;
			float3 indirectDiffuse598_g1145 = ShadeSH9( float4( var_FinalWorldNormal393_g1145, 1 ) );
			float3 var_IndirectDiffuseLight657_g1145 = indirectDiffuse598_g1145;
			float3 var_GouraudIndirect641_g1145 = var_IndirectDiffuseLight657_g1145;
			float grayscale662_g1145 = Luminance(var_GouraudIndirect641_g1145);
			float3 posWorld1_g1148 = ase_worldPos;
			float3 normalWorld1_g1148 = var_FinalWorldNormal393_g1145;
			float localLambertVertLitShadedNL1_g1148 = LambertVertLitShadedNL1_g1148( posWorld1_g1148 , normalWorld1_g1148 );
			float temp_output_653_0_g1145 = localLambertVertLitShadedNL1_g1148;
			float var_GouraudVertLit655_g1145 = temp_output_653_0_g1145;
			float3 appendResult647_g1145 = (float3(var_GouraudRT639_g1145 , grayscale662_g1145 , var_GouraudVertLit655_g1145));
			o.vertexToFrag640_g1145 = appendResult647_g1145;
			float2 uv_OcclusionMap = v.texcoord.xy * _OcclusionMap_ST.xy + _OcclusionMap_ST.zw;
			float2 var_TexCoords53_g1196 = uv_OcclusionMap;
			float4 unityObjectToClipPos41_g1196 = UnityObjectToClipPos( ase_vertex4Pos.xyz );
			float3 objectSpaceViewDir67_g1196 = ObjSpaceViewDir( ase_vertex4Pos );
			float input_AffineCameraClipBias78_g1196 = prop_AffineCameraClipBias1010;
			float4 appendResult44_g1196 = (float4(( var_TexCoords53_g1196 * unityObjectToClipPos41_g1196.w ) , unityObjectToClipPos41_g1196.w , ( length( objectSpaceViewDir67_g1196 ) - -input_AffineCameraClipBias78_g1196 )));
			o.vertexToFrag42_g1196 = appendResult44_g1196;
			float prop_SpecularType286 = _SpecularShading;
			int input_SpecularType206_g1143 = (int)prop_SpecularType286;
			int specularType208_g1143 = input_SpecularType206_g1143;
			float3 tangentNormal269_g1145 = input_TangentNorm6_g1145;
			float3 ase_worldViewDir = normalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 modWorldNormal269_g1145 = ( tangentToWorld[0] * tangentNormal269_g1145.x + tangentToWorld[1] * tangentNormal269_g1145.y + tangentToWorld[2] * tangentNormal269_g1145.z);
			float3 modReflection269_g1145 = normalize( reflect( -ase_worldViewDir, modWorldNormal269_g1145 ) );
			float dotResult260_g1145 = dot( modReflection269_g1145 , ase_worldViewDir );
			float prop_SpecularGloss283 = _SpecularGloss;
			float input_SpecularGloss197_g1143 = prop_SpecularGloss283;
			float input_SpecularGloss194_g1145 = input_SpecularGloss197_g1143;
			float input_PhongSpecular220_g1143 = pow( max( dotResult260_g1145 , 0.0 ) , input_SpecularGloss194_g1145 );
			float phong208_g1143 = input_PhongSpecular220_g1143;
			float3 normalizeResult414_g1145 = normalize( ( ase_worldlightDir + ase_worldViewDir ) );
			float dotResult419_g1145 = dot( var_FinalWorldNormal393_g1145 , normalizeResult414_g1145 );
			float dot_NdotH422_g1145 = dotResult419_g1145;
			float prop_SpecularStrength282 = ( 1.0 - _SpecularStrength );
			float input_SpecularStrength196_g1143 = prop_SpecularStrength282;
			float input_SpecularStrength193_g1145 = input_SpecularStrength196_g1143;
			float input_BlinnPhongSpecular204_g1143 = pow( max( dot_NdotH422_g1145 , 0.0 ) , ( input_SpecularStrength193_g1145 * input_SpecularGloss194_g1145 ) );
			float blinnPhong208_g1143 = input_BlinnPhongSpecular204_g1143;
			float localSpecularType208_g1143 = SpecularType208_g1143( specularType208_g1143 , phong208_g1143 , blinnPhong208_g1143 );
			float var_SelectedSpecular212_g1143 = localSpecularType208_g1143;
			o.vertexToFrag313_g1143 = var_SelectedSpecular212_g1143;
			float2 uv_SpecGlossMap = v.texcoord.xy * _SpecGlossMap_ST.xy + _SpecGlossMap_ST.zw;
			float2 var_TexCoords53_g1198 = uv_SpecGlossMap;
			float4 unityObjectToClipPos41_g1198 = UnityObjectToClipPos( ase_vertex4Pos.xyz );
			float3 objectSpaceViewDir67_g1198 = ObjSpaceViewDir( ase_vertex4Pos );
			float input_AffineCameraClipBias78_g1198 = prop_AffineCameraClipBias1010;
			float4 appendResult44_g1198 = (float4(( var_TexCoords53_g1198 * unityObjectToClipPos41_g1198.w ) , unityObjectToClipPos41_g1198.w , ( length( objectSpaceViewDir67_g1198 ) - -input_AffineCameraClipBias78_g1198 )));
			o.vertexToFrag42_g1198 = appendResult44_g1198;
		}

		inline half4 LightingStandardCustomLighting( inout SurfaceOutputCustomLightingCustom s, half3 viewDir, UnityGI gi )
		{
			UnityGIInput data = s.GIData;
			Input i = s.SurfInput;
			half4 c = 0;
			#ifdef UNITY_PASS_FORWARDBASE
			float ase_lightAtten = data.atten;
			if( _LightColor0.a == 0)
			ase_lightAtten = 0;
			#else
			float3 ase_lightAttenRGB = gi.light.color / ( ( _LightColor0.rgb ) + 0.000001 );
			float ase_lightAtten = max( max( ase_lightAttenRGB.r, ase_lightAttenRGB.g ), ase_lightAttenRGB.b );
			#endif
			#if defined(HANDLE_SHADOWS_BLENDING_IN_GI)
			half bakedAtten = UnitySampleBakedOcclusion(data.lightmapUV.xy, data.worldPos);
			float zDist = dot(_WorldSpaceCameraPos - data.worldPos, UNITY_MATRIX_V[2].xyz);
			float fadeDist = UnityComputeShadowFadeDistance(data.worldPos, zDist);
			ase_lightAtten = UnityMixRealtimeAndBakedShadows(data.atten, bakedAtten, UnityComputeShadowFade(fadeDist));
			#endif
			float prop_AffineUVsToggle705 = _AffineUVsToggle;
			float input_GetAffinedUV4_g1195 = prop_AffineUVsToggle705;
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST.xy + _MainTex_ST.zw;
			float2 var_TexCoords53_g1195 = uv_MainTex;
			float4 break45_g1195 = i.vertexToFrag42_g1195;
			float2 appendResult46_g1195 = (float2(break45_g1195.x , break45_g1195.y));
			float prop_AffineUVStrength711 = _PerspectiveShiftStrength;
			float input_AffineStrength15_g1195 = prop_AffineUVStrength711;
			float clampResult71_g1195 = clamp( ( break45_g1195.w * input_AffineStrength15_g1195 ) , 0.0 , 1.0 );
			float2 lerpResult43_g1195 = lerp( var_TexCoords53_g1195 , ( appendResult46_g1195 / break45_g1195.z ) , clampResult71_g1195);
			float2 var_UVAffined55_g1195 = lerpResult43_g1195;
			float2 temp_output_1014_0 = ( input_GetAffinedUV4_g1195 == 1.0 ? var_UVAffined55_g1195 : var_TexCoords53_g1195 );
			sampler2D tex132_g1199 = _MainTex;
			float2 input_UV9_g1199 = temp_output_1014_0;
			float2 uv132_g1199 = input_UV9_g1199;
			float4 input_TexelSize2_g1199 = _MainTex_TexelSize;
			float4 texelSize132_g1199 = input_TexelSize2_g1199;
			float4 localN64Filtering132_g1199 = N64Filtering132_g1199( tex132_g1199 , uv132_g1199 , texelSize132_g1199 );
			float4 FinalSampleRGBA138_g1199 = localN64Filtering132_g1199;
			float4 lerpResult60 = lerp( tex2D( _MainTex, temp_output_1014_0 ) , FinalSampleRGBA138_g1199 , (float)_MainTextureFiltering);
			float4 var_AlbedoRGBA87 = ( lerpResult60 * _Color );
			float temp_output_495_3 = var_AlbedoRGBA87.w;
			float prop_BaseSurfaceLighting113 = _SurfaceShadingModel;
			int input_LightingType34_g1143 = (int)prop_BaseSurfaceLighting113;
			int lightType70_g1143 = input_LightingType34_g1143;
			int input_LightingType387_g1145 = input_LightingType34_g1143;
			int lightType392_g1145 = input_LightingType387_g1145;
			float input_GetAffinedUV4_g1197 = prop_AffineUVsToggle705;
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST.xy + _BumpMap_ST.zw;
			float2 var_TexCoords53_g1197 = uv_BumpMap;
			float4 break45_g1197 = i.vertexToFrag42_g1197;
			float2 appendResult46_g1197 = (float2(break45_g1197.x , break45_g1197.y));
			float input_AffineStrength15_g1197 = prop_AffineUVStrength711;
			float clampResult71_g1197 = clamp( ( break45_g1197.w * input_AffineStrength15_g1197 ) , 0.0 , 1.0 );
			float2 lerpResult43_g1197 = lerp( var_TexCoords53_g1197 , ( appendResult46_g1197 / break45_g1197.z ) , clampResult71_g1197);
			float2 var_UVAffined55_g1197 = lerpResult43_g1197;
			float prop_NormalScale431 = _BumpScale;
			float3 var_NormalXYZ88 = UnpackScaleNormal( tex2D( _BumpMap, ( input_GetAffinedUV4_g1197 == 1.0 ? var_UVAffined55_g1197 : var_TexCoords53_g1197 ) ), prop_NormalScale431 );
			float3 input_Normal9_g1143 = var_NormalXYZ88;
			float3 input_TangentNorm6_g1145 = input_Normal9_g1143;
			float3 worldNormal392_g1145 = (WorldNormalVector( i , input_TangentNorm6_g1145 ));
			float3 ase_worldPos = i.worldPos;
			float3 normalizeResult386_g1145 = normalize( cross( ddx( ase_worldPos ) , ddy( ase_worldPos ) ) );
			float3 flatNormal392_g1145 = -normalizeResult386_g1145;
			float3 localCheckisFlatLighting392_g1145 = CheckisFlatLighting392_g1145( lightType392_g1145 , worldNormal392_g1145 , flatNormal392_g1145 );
			float3 var_FinalWorldNormal393_g1145 = localCheckisFlatLighting392_g1145;
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float dotResult403_g1145 = dot( var_FinalWorldNormal393_g1145 , ase_worldlightDir );
			float dot_NdotL406_g1145 = dotResult403_g1145;
			float temp_output_63_0_g1145 = max( dot_NdotL406_g1145 , 0.0 );
			float input_Lambert18_g1143 = temp_output_63_0_g1145;
			float lambert70_g1143 = input_Lambert18_g1143;
			float4 ase_screenPos = i.screenPosition;
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			float2 clipScreen354_g1145 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither354_g1145 = Dither4x4Bayer( fmod(clipScreen354_g1145.x, 4), fmod(clipScreen354_g1145.y, 4) );
			dither354_g1145 = step( dither354_g1145, temp_output_63_0_g1145 );
			float input_DithLambert4x4321_g1143 = dither354_g1145;
			float dithLambertQuadSq70_g1143 = input_DithLambert4x4321_g1143;
			float2 clipScreen357_g1145 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither357_g1145 = Dither8x8Bayer( fmod(clipScreen357_g1145.x, 8), fmod(clipScreen357_g1145.y, 8) );
			dither357_g1145 = step( dither357_g1145, temp_output_63_0_g1145 );
			float input_DithLambert8x8323_g1143 = dither357_g1145;
			float dithLambertOctSq70_g1143 = input_DithLambert8x8323_g1143;
			float prop_HalfLambertWrapStrength357 = _HalfLambertWrapStrength;
			float input_HalfLambertWrapStrength276_g1143 = prop_HalfLambertWrapStrength357;
			float input_HalfLambertWrapStrength341_g1145 = input_HalfLambertWrapStrength276_g1143;
			float temp_output_339_0_g1145 = pow( ( ( temp_output_63_0_g1145 * input_HalfLambertWrapStrength341_g1145 ) + input_HalfLambertWrapStrength341_g1145 ) , 2.0 );
			float input_HalfLambert153_g1143 = temp_output_339_0_g1145;
			float hLambert70_g1143 = input_HalfLambert153_g1143;
			float2 clipScreen375_g1145 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither375_g1145 = Dither4x4Bayer( fmod(clipScreen375_g1145.x, 4), fmod(clipScreen375_g1145.y, 4) );
			dither375_g1145 = step( dither375_g1145, temp_output_339_0_g1145 );
			float input_DithHalfLambert4x4334_g1143 = dither375_g1145;
			float dithHLambertQuadSq70_g1143 = input_DithHalfLambert4x4334_g1143;
			float2 clipScreen376_g1145 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither376_g1145 = Dither8x8Bayer( fmod(clipScreen376_g1145.x, 8), fmod(clipScreen376_g1145.y, 8) );
			dither376_g1145 = step( dither376_g1145, temp_output_339_0_g1145 );
			float input_DithHalfLambert8x8335_g1143 = dither376_g1145;
			float dithHLambertOctSq70_g1143 = input_DithHalfLambert8x8335_g1143;
			float3 break648_g1145 = i.vertexToFrag640_g1145;
			float input_Gouraud19_g1143 = break648_g1145.x;
			float gouraud70_g1143 = input_Gouraud19_g1143;
			float3 WorldNormal91_g1145 = normalize( (WorldNormalVector( i , input_TangentNorm6_g1145 )) );
			float2 UV091_g1145 = uv_MainTex;
			float prop_LightingTexelSize212 = _LightingTexelSize;
			float input_TexelSize147_g1143 = prop_LightingTexelSize212;
			float input_LightingTexelSize130_g1145 = input_TexelSize147_g1143;
			float temp_output_133_0_g1145 = ( 1.0 / input_LightingTexelSize130_g1145 );
			float4 appendResult129_g1145 = (float4(temp_output_133_0_g1145 , temp_output_133_0_g1145 , input_LightingTexelSize130_g1145 , input_LightingTexelSize130_g1145));
			float4 TexelSize91_g1145 = ( input_LightingTexelSize130_g1145 == 0.0 ? _MainTex_TexelSize : appendResult129_g1145 );
			float3 localTexelSnappedWorldNormal91_g1145 = TexelSnappedWorldNormal91_g1145( WorldNormal91_g1145 , UV091_g1145 , TexelSize91_g1145 );
			float dotResult105_g1145 = dot( localTexelSnappedWorldNormal91_g1145 , ase_worldlightDir );
			float input_TexelSnappedNdotL62_g1143 = max( dotResult105_g1145 , 0.0 );
			float pertexel70_g1143 = input_TexelSnappedNdotL62_g1143;
			float localBaseShadingType70_g1143 = BaseShadingType70_g1143( lightType70_g1143 , lambert70_g1143 , dithLambertQuadSq70_g1143 , dithLambertOctSq70_g1143 , hLambert70_g1143 , dithHLambertQuadSq70_g1143 , dithHLambertOctSq70_g1143 , gouraud70_g1143 , pertexel70_g1143 );
			float var_SelectedBaseShading79_g1143 = localBaseShadingType70_g1143;
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float input_SurfaceShadingRT9_g1150 = var_SelectedBaseShading79_g1143;
			float input_GetAffinedUV4_g1196 = prop_AffineUVsToggle705;
			float2 uv_OcclusionMap = i.uv_texcoord * _OcclusionMap_ST.xy + _OcclusionMap_ST.zw;
			float2 var_TexCoords53_g1196 = uv_OcclusionMap;
			float4 break45_g1196 = i.vertexToFrag42_g1196;
			float2 appendResult46_g1196 = (float2(break45_g1196.x , break45_g1196.y));
			float input_AffineStrength15_g1196 = prop_AffineUVStrength711;
			float clampResult71_g1196 = clamp( ( break45_g1196.w * input_AffineStrength15_g1196 ) , 0.0 , 1.0 );
			float2 lerpResult43_g1196 = lerp( var_TexCoords53_g1196 , ( appendResult46_g1196 / break45_g1196.z ) , clampResult71_g1196);
			float2 var_UVAffined55_g1196 = lerpResult43_g1196;
			float prop_OcclusionStrength475 = _OcclusionStrength;
			float var_OcclusionMap472 = ( tex2D( _OcclusionMap, ( input_GetAffinedUV4_g1196 == 1.0 ? var_UVAffined55_g1196 : var_TexCoords53_g1196 ) ).r * prop_OcclusionStrength475 );
			float input_OcclusionMap362_g1143 = var_OcclusionMap472;
			float var_LightAttenuation290_g1143 = ( ase_lightAtten * input_OcclusionMap362_g1143 );
			float input_LightAttenOcclusion53_g1150 = var_LightAttenuation290_g1143;
			float var_AttenBase21_g1150 = ( input_SurfaceShadingRT9_g1150 * input_LightAttenOcclusion53_g1150 );
			float4 temp_cast_9 = (var_AttenBase21_g1150).xxxx;
			float4 prop_SurfaceShadowColor943 = _ShadowColor;
			float4 input_ShadowColor369_g1143 = prop_SurfaceShadowColor943;
			float4 input_ShadowColor4_g1150 = input_ShadowColor369_g1143;
			float var_IsPointLight14_g1150 = _WorldSpaceLightPos0.w;
			float4 result_DirShadows32_g1150 = ( max( temp_cast_9 , input_ShadowColor4_g1150 ) * ( 1.0 - var_IsPointLight14_g1150 ) );
			float result_PointLighting49_g1150 = ( var_AttenBase21_g1150 * var_IsPointLight14_g1150 );
			float4 var_FinalShadows557_g1143 = ( result_DirShadows32_g1150 + result_PointLighting49_g1150 );
			float prop_BakedLightSupport197 = _IndirectLightingSupport;
			int input_SupportIndirect27_g1143 = (int)prop_BakedLightSupport197;
			int lightType488_g1143 = input_LightingType34_g1143;
			UnityGI gi598_g1145 = gi;
			float3 diffNorm598_g1145 = var_FinalWorldNormal393_g1145;
			gi598_g1145 = UnityGI_Base( data, 1, diffNorm598_g1145 );
			float3 indirectDiffuse598_g1145 = gi598_g1145.indirect.diffuse + diffNorm598_g1145 * 0.0001;
			float3 var_IndirectDiffuseLight657_g1145 = indirectDiffuse598_g1145;
			float3 input_IndirectLambert469_g1143 = var_IndirectDiffuseLight657_g1145;
			float3 lambert488_g1143 = input_IndirectLambert469_g1143;
			float2 clipScreen624_g1145 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither624_g1145 = Dither4x4Bayer( fmod(clipScreen624_g1145.x, 4), fmod(clipScreen624_g1145.y, 4) );
			dither624_g1145 = step( dither624_g1145, var_IndirectDiffuseLight657_g1145.x );
			float3 input_IndirectLambert4x4470_g1143 = ( dither624_g1145 * var_IndirectDiffuseLight657_g1145 );
			float3 dithLambertQuadSq488_g1143 = input_IndirectLambert4x4470_g1143;
			float2 clipScreen625_g1145 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither625_g1145 = Dither8x8Bayer( fmod(clipScreen625_g1145.x, 8), fmod(clipScreen625_g1145.y, 8) );
			dither625_g1145 = step( dither625_g1145, var_IndirectDiffuseLight657_g1145.x );
			float3 input_IndirectLambert8x8471_g1143 = ( dither625_g1145 * var_IndirectDiffuseLight657_g1145 );
			float3 dithLambertOctSq488_g1143 = input_IndirectLambert8x8471_g1143;
			float3 temp_output_604_0_g1145 = pow( ( ( var_IndirectDiffuseLight657_g1145 * input_HalfLambertWrapStrength341_g1145 ) + input_HalfLambertWrapStrength341_g1145 ) , 2.0 );
			float3 input_IndirectHLambert472_g1143 = temp_output_604_0_g1145;
			float3 hLambert488_g1143 = input_IndirectHLambert472_g1143;
			float2 clipScreen616_g1145 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither616_g1145 = Dither4x4Bayer( fmod(clipScreen616_g1145.x, 4), fmod(clipScreen616_g1145.y, 4) );
			dither616_g1145 = step( dither616_g1145, temp_output_604_0_g1145.x );
			float3 input_IndirectHLambert4x4473_g1143 = ( dither616_g1145 * var_IndirectDiffuseLight657_g1145 );
			float3 dithHLambertQuadSq488_g1143 = input_IndirectHLambert4x4473_g1143;
			float2 clipScreen617_g1145 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither617_g1145 = Dither8x8Bayer( fmod(clipScreen617_g1145.x, 8), fmod(clipScreen617_g1145.y, 8) );
			dither617_g1145 = step( dither617_g1145, temp_output_604_0_g1145.x );
			float3 input_IndirectHLambert8x8474_g1143 = ( dither617_g1145 * var_IndirectDiffuseLight657_g1145 );
			float3 dithHLambertOctSq488_g1143 = input_IndirectHLambert8x8474_g1143;
			float3 input_IndirectGouraud475_g1143 = ( var_IndirectDiffuseLight657_g1145 + break648_g1145.y );
			float3 gouraud488_g1143 = input_IndirectGouraud475_g1143;
			float3 var_TexelSnappedWorldNormal549_g1145 = localTexelSnappedWorldNormal91_g1145;
			UnityGI gi609_g1145 = gi;
			float3 diffNorm609_g1145 = var_TexelSnappedWorldNormal549_g1145;
			gi609_g1145 = UnityGI_Base( data, 1, diffNorm609_g1145 );
			float3 indirectDiffuse609_g1145 = gi609_g1145.indirect.diffuse + diffNorm609_g1145 * 0.0001;
			float3 input_IndirectTexelSnapped476_g1143 = indirectDiffuse609_g1145;
			float3 pertexel488_g1143 = input_IndirectTexelSnapped476_g1143;
			float3 localIndirectLightingType488_g1143 = IndirectLightingType488_g1143( lightType488_g1143 , lambert488_g1143 , dithLambertQuadSq488_g1143 , dithLambertOctSq488_g1143 , hLambert488_g1143 , dithHLambertQuadSq488_g1143 , dithHLambertOctSq488_g1143 , gouraud488_g1143 , pertexel488_g1143 );
			float3 var_SelectedIndirectBaseLighting489_g1143 = localIndirectLightingType488_g1143;
			float var_IndirectLightingStr889 = _IndirectLightingStrength;
			float input_IndirectLightingStr539_g1143 = var_IndirectLightingStr889;
			float3 var_FinalIndirectLighting108_g1143 = ( ( (float)input_SupportIndirect27_g1143 == 1.0 ? var_SelectedIndirectBaseLighting489_g1143 : float3( 0,0,0 ) ) * input_IndirectLightingStr539_g1143 );
			float prop_AmbientLightSupport198 = _AmbientSHLighting;
			int input_SupportAmbient28_g1143 = (int)prop_AmbientLightSupport198;
			half3 localAmbient305_g1143 = Ambient305_g1143();
			float prop_AmbientLightingStr890 = _AmbientLightingStrength;
			float input_AmbientLightingStr540_g1143 = prop_AmbientLightingStr890;
			float3 var_FinalAmbientLighting110_g1143 = ( ( (float)input_SupportAmbient28_g1143 == 1.0 ? localAmbient305_g1143 : float3( 0,0,0 ) ) * input_AmbientLightingStr540_g1143 );
			int lightType423_g1143 = input_LightingType34_g1143;
			float3 posWorld1_g1148 = ase_worldPos;
			float3 normalWorld1_g1148 = var_FinalWorldNormal393_g1145;
			float localLambertVertLitShadedNL1_g1148 = LambertVertLitShadedNL1_g1148( posWorld1_g1148 , normalWorld1_g1148 );
			float temp_output_653_0_g1145 = localLambertVertLitShadedNL1_g1148;
			float input_VLitLambertNL402_g1143 = temp_output_653_0_g1145;
			float4 temp_cast_20 = (input_VLitLambertNL402_g1143).xxxx;
			float4 lambert423_g1143 = temp_cast_20;
			float2 clipScreen437_g1143 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither437_g1143 = Dither4x4Bayer( fmod(clipScreen437_g1143.x, 4), fmod(clipScreen437_g1143.y, 4) );
			dither437_g1143 = step( dither437_g1143, input_VLitLambertNL402_g1143 );
			float4 appendResult438_g1143 = (float4(dither437_g1143 , dither437_g1143 , dither437_g1143 , dither437_g1143));
			float4 dithLambertQuadSq423_g1143 = appendResult438_g1143;
			float2 clipScreen443_g1143 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither443_g1143 = Dither8x8Bayer( fmod(clipScreen443_g1143.x, 8), fmod(clipScreen443_g1143.y, 8) );
			dither443_g1143 = step( dither443_g1143, input_VLitLambertNL402_g1143 );
			float4 appendResult444_g1143 = (float4(dither443_g1143 , dither443_g1143 , dither443_g1143 , dither443_g1143));
			float4 dithLambertOctSq423_g1143 = appendResult444_g1143;
			float3 posWorld1_g1146 = ase_worldPos;
			float3 normalWorld1_g1146 = var_FinalWorldNormal393_g1145;
			float halfLambertWrapStr1_g1146 = input_HalfLambertWrapStrength341_g1145;
			float localHalfLambertVertLitShadedNL1_g1146 = HalfLambertVertLitShadedNL1_g1146( posWorld1_g1146 , normalWorld1_g1146 , halfLambertWrapStr1_g1146 );
			float input_VLitHLambertNL405_g1143 = localHalfLambertVertLitShadedNL1_g1146;
			float4 temp_cast_21 = (input_VLitHLambertNL405_g1143).xxxx;
			float4 hLambert423_g1143 = temp_cast_21;
			float2 clipScreen447_g1143 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither447_g1143 = Dither4x4Bayer( fmod(clipScreen447_g1143.x, 4), fmod(clipScreen447_g1143.y, 4) );
			dither447_g1143 = step( dither447_g1143, input_VLitHLambertNL405_g1143 );
			float4 appendResult445_g1143 = (float4(dither447_g1143 , dither447_g1143 , dither447_g1143 , dither447_g1143));
			float4 dithHLambertQuadSq423_g1143 = appendResult445_g1143;
			float2 clipScreen448_g1143 = ase_screenPosNorm.xy * _ScreenParams.xy;
			float dither448_g1143 = Dither8x8Bayer( fmod(clipScreen448_g1143.x, 8), fmod(clipScreen448_g1143.y, 8) );
			dither448_g1143 = step( dither448_g1143, input_VLitHLambertNL405_g1143 );
			float4 appendResult446_g1143 = (float4(dither448_g1143 , dither448_g1143 , dither448_g1143 , dither448_g1143));
			float4 dithHLambertOctSq423_g1143 = appendResult446_g1143;
			float input_VLitGouraudNL408_g1143 = break648_g1145.z;
			float4 temp_cast_22 = (input_VLitGouraudNL408_g1143).xxxx;
			float4 gouraud423_g1143 = temp_cast_22;
			float3 posWorld1_g1147 = ase_worldPos;
			float3 normalWorld1_g1147 = var_TexelSnappedWorldNormal549_g1145;
			float localLambertVertLitShadedNL1_g1147 = LambertVertLitShadedNL1_g1147( posWorld1_g1147 , normalWorld1_g1147 );
			float input_VLitTexelSnappedNL409_g1143 = localLambertVertLitShadedNL1_g1147;
			float4 temp_cast_23 = (input_VLitTexelSnappedNL409_g1143).xxxx;
			float4 pertexel423_g1143 = temp_cast_23;
			float4 localBaseVertexShadingType423_g1143 = BaseVertexShadingType423_g1143( lightType423_g1143 , lambert423_g1143 , dithLambertQuadSq423_g1143 , dithLambertOctSq423_g1143 , hLambert423_g1143 , dithHLambertQuadSq423_g1143 , dithHLambertOctSq423_g1143 , gouraud423_g1143 , pertexel423_g1143 );
			float4 shadedNL1_g1149 = localBaseVertexShadingType423_g1143;
			float3 localColorVertexLights1_g1149 = ColorVertexLights1_g1149( shadedNL1_g1149 );
			float3 var_FinalVertexLighting424_g1143 = localColorVertexLights1_g1149;
			float3 input_Albedo8_g1143 = var_AlbedoRGBA87.xyz;
			float prop_OcclusionOnAlbedo491 = _ApplyOcclusionOnAlbedo;
			float input_OcclusionOnAlbedo378_g1143 = prop_OcclusionOnAlbedo491;
			float prop_PerVertexSpecular290 = _PerVertexSpecular;
			int input_PerVertexSpecular317_g1143 = (int)prop_PerVertexSpecular290;
			float prop_SpecularType286 = _SpecularShading;
			int input_SpecularType206_g1143 = (int)prop_SpecularType286;
			int specularType208_g1143 = input_SpecularType206_g1143;
			float3 ase_worldViewDir = normalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float dotResult260_g1145 = dot( normalize( WorldReflectionVector( i , input_TangentNorm6_g1145 ) ) , ase_worldViewDir );
			float prop_SpecularGloss283 = _SpecularGloss;
			float input_SpecularGloss197_g1143 = prop_SpecularGloss283;
			float input_SpecularGloss194_g1145 = input_SpecularGloss197_g1143;
			float input_PhongSpecular220_g1143 = pow( max( dotResult260_g1145 , 0.0 ) , input_SpecularGloss194_g1145 );
			float phong208_g1143 = input_PhongSpecular220_g1143;
			float3 normalizeResult414_g1145 = normalize( ( ase_worldlightDir + ase_worldViewDir ) );
			float dotResult419_g1145 = dot( var_FinalWorldNormal393_g1145 , normalizeResult414_g1145 );
			float dot_NdotH422_g1145 = dotResult419_g1145;
			float prop_SpecularStrength282 = ( 1.0 - _SpecularStrength );
			float input_SpecularStrength196_g1143 = prop_SpecularStrength282;
			float input_SpecularStrength193_g1145 = input_SpecularStrength196_g1143;
			float input_BlinnPhongSpecular204_g1143 = pow( max( dot_NdotH422_g1145 , 0.0 ) , ( input_SpecularStrength193_g1145 * input_SpecularGloss194_g1145 ) );
			float blinnPhong208_g1143 = input_BlinnPhongSpecular204_g1143;
			float localSpecularType208_g1143 = SpecularType208_g1143( specularType208_g1143 , phong208_g1143 , blinnPhong208_g1143 );
			float var_SelectedSpecular212_g1143 = localSpecularType208_g1143;
			float input_GetAffinedUV4_g1198 = prop_AffineUVsToggle705;
			float2 uv_SpecGlossMap = i.uv_texcoord * _SpecGlossMap_ST.xy + _SpecGlossMap_ST.zw;
			float2 var_TexCoords53_g1198 = uv_SpecGlossMap;
			float4 break45_g1198 = i.vertexToFrag42_g1198;
			float2 appendResult46_g1198 = (float2(break45_g1198.x , break45_g1198.y));
			float input_AffineStrength15_g1198 = prop_AffineUVStrength711;
			float clampResult71_g1198 = clamp( ( break45_g1198.w * input_AffineStrength15_g1198 ) , 0.0 , 1.0 );
			float2 lerpResult43_g1198 = lerp( var_TexCoords53_g1198 , ( appendResult46_g1198 / break45_g1198.z ) , clampResult71_g1198);
			float2 var_UVAffined55_g1198 = lerpResult43_g1198;
			float4 tex2DNode265 = tex2D( _SpecGlossMap, ( input_GetAffinedUV4_g1198 == 1.0 ? var_UVAffined55_g1198 : var_TexCoords53_g1198 ) );
			float prop_InvertSpecularColor484 = _InvertSpecular;
			float4 lerpResult944 = lerp( tex2DNode265 , ( 1.0 - tex2DNode265 ) , prop_InvertSpecularColor484);
			float4 var_SpecularRGBA266 = ( lerpResult944 * _SpecularTint );
			float4 input_SpecularRGBA189_g1143 = var_SpecularRGBA266;
			float3 var_FinalSpecular294_g1143 = ( ( ( (float)input_PerVertexSpecular317_g1143 == 1.0 ? i.vertexToFrag313_g1143 : var_SelectedSpecular212_g1143 ) * (input_SpecularRGBA189_g1143).rgb * (input_SpecularRGBA189_g1143).a ) * ase_lightColor.rgb * var_SelectedBaseShading79_g1143 * var_LightAttenuation290_g1143 );
			float4 temp_output_213_0_g1143 = ( ( ( ( var_SelectedBaseShading79_g1143 * float4( ase_lightColor.rgb , 0.0 ) * var_FinalShadows557_g1143 ) + float4( var_FinalIndirectLighting108_g1143 , 0.0 ) + float4( var_FinalAmbientLighting110_g1143 , 0.0 ) + float4( var_FinalVertexLighting424_g1143 , 0.0 ) ) * float4( input_Albedo8_g1143 , 0.0 ) * ( input_OcclusionOnAlbedo378_g1143 == 1.0 ? input_OcclusionMap362_g1143 : 1.0 ) ) + float4( var_FinalSpecular294_g1143 , 0.0 ) );
			float prop_UnlitBrightness950 = _UnlitBrightness;
			float input_UnlitBrightness611_g1143 = prop_UnlitBrightness950;
			float4 ifLocalVar604_g1143 = 0;
			if( input_LightingType34_g1143 == 10.0 )
				ifLocalVar604_g1143 = float4( ( input_Albedo8_g1143 * input_UnlitBrightness611_g1143 ) , 0.0 );
			else
				ifLocalVar604_g1143 = temp_output_213_0_g1143;
			float4 var_FinalLighting520 = saturate( ifLocalVar604_g1143 );
			c.rgb = var_FinalLighting520.rgb;
			c.a = temp_output_495_3;
			clip( temp_output_495_3 - _Cutoff );
			return c;
		}

		inline void LightingStandardCustomLighting_GI( inout SurfaceOutputCustomLightingCustom s, UnityGIInput data, inout UnityGI gi )
		{
			s.GIData = data;
		}

		void surf( Input i , inout SurfaceOutputCustomLightingCustom o )
		{
			o.SurfInput = i;
			o.Normal = float3(0,0,1);
			float prop_AffineUVsToggle705 = _AffineUVsToggle;
			float input_GetAffinedUV4_g1193 = prop_AffineUVsToggle705;
			float2 uv_EmissionMap = i.uv_texcoord * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
			float2 var_TexCoords53_g1193 = uv_EmissionMap;
			float4 break45_g1193 = i.vertexToFrag42_g1193;
			float2 appendResult46_g1193 = (float2(break45_g1193.x , break45_g1193.y));
			float prop_AffineUVStrength711 = _PerspectiveShiftStrength;
			float input_AffineStrength15_g1193 = prop_AffineUVStrength711;
			float clampResult71_g1193 = clamp( ( break45_g1193.w * input_AffineStrength15_g1193 ) , 0.0 , 1.0 );
			float2 lerpResult43_g1193 = lerp( var_TexCoords53_g1193 , ( appendResult46_g1193 / break45_g1193.z ) , clampResult71_g1193);
			float2 var_UVAffined55_g1193 = lerpResult43_g1193;
			float2 temp_output_1012_0 = ( input_GetAffinedUV4_g1193 == 1.0 ? var_UVAffined55_g1193 : var_TexCoords53_g1193 );
			sampler2D tex132_g1200 = _EmissionMap;
			float2 input_UV9_g1200 = temp_output_1012_0;
			float2 uv132_g1200 = input_UV9_g1200;
			float4 input_TexelSize2_g1200 = _EmissionMap_TexelSize;
			float4 texelSize132_g1200 = input_TexelSize2_g1200;
			float4 localN64Filtering132_g1200 = N64Filtering132_g1200( tex132_g1200 , uv132_g1200 , texelSize132_g1200 );
			float4 FinalSampleRGBA138_g1200 = localN64Filtering132_g1200;
			float4 lerpResult1024 = lerp( tex2D( _EmissionMap, temp_output_1012_0 ) , FinalSampleRGBA138_g1200 , (float)_EmissiveTextureFiltering);
			float prop_EmissiveMult754 = _EmissiveStrength;
			float4 var_EmissiveRGB743 = ( ( lerpResult1024 * _EmissionColor ) * prop_EmissiveMult754 );
			float prop_EmissiveToggle756 = _EmissiveToggle;
			float4 lerpResult759 = lerp( float4( 0,0,0,0 ) , var_EmissiveRGB743 , prop_EmissiveToggle756);
			o.Emission = lerpResult759.xyz;
		}

		ENDCG
		CGPROGRAM
		#pragma surface surf StandardCustomLighting keepalpha fullforwardshadows vertex:vertexDataFunc 

		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			AlphaToMask Off
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 5.0
			#pragma multi_compile_shadowcaster
			#pragma multi_compile UNITY_PASS_SHADOWCASTER
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#include "HLSLSupport.cginc"
			#if ( SHADER_API_D3D11 || SHADER_API_GLCORE || SHADER_API_GLES || SHADER_API_GLES3 || SHADER_API_METAL || SHADER_API_VULKAN )
				#define CAN_SKIP_VPOS
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float3 customPack1 : TEXCOORD1;
				float4 customPack2 : TEXCOORD2;
				float4 customPack3 : TEXCOORD3;
				float4 customPack4 : TEXCOORD4;
				float4 customPack5 : TEXCOORD5;
				float3 customPack6 : TEXCOORD6;
				float4 customPack7 : TEXCOORD7;
				float4 customPack8 : TEXCOORD8;
				float4 tSpace0 : TEXCOORD9;
				float4 tSpace1 : TEXCOORD10;
				float4 tSpace2 : TEXCOORD11;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			v2f vert( appdata_full v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_OUTPUT( v2f, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				Input customInputData;
				vertexDataFunc( v, customInputData );
				float3 worldPos = mul( unity_ObjectToWorld, v.vertex ).xyz;
				half3 worldNormal = UnityObjectToWorldNormal( v.normal );
				half3 worldTangent = UnityObjectToWorldDir( v.tangent.xyz );
				half tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				half3 worldBinormal = cross( worldNormal, worldTangent ) * tangentSign;
				o.tSpace0 = float4( worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x );
				o.tSpace1 = float4( worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y );
				o.tSpace2 = float4( worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z );
				o.customPack1.xy = customInputData.uv_texcoord;
				o.customPack1.xy = v.texcoord;
				o.customPack2.xyzw = customInputData.vertexToFrag42_g1193;
				o.customPack3.xyzw = customInputData.vertexToFrag42_g1195;
				o.customPack4.xyzw = customInputData.vertexToFrag42_g1197;
				o.customPack5.xyzw = customInputData.screenPosition;
				o.customPack6.xyz = customInputData.vertexToFrag640_g1145;
				o.customPack7.xyzw = customInputData.vertexToFrag42_g1196;
				o.customPack1.z = customInputData.vertexToFrag313_g1143;
				o.customPack8.xyzw = customInputData.vertexToFrag42_g1198;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
				return o;
			}
			half4 frag( v2f IN
			#if !defined( CAN_SKIP_VPOS )
			, UNITY_VPOS_TYPE vpos : VPOS
			#endif
			) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				Input surfIN;
				UNITY_INITIALIZE_OUTPUT( Input, surfIN );
				surfIN.uv_texcoord = IN.customPack1.xy;
				surfIN.vertexToFrag42_g1193 = IN.customPack2.xyzw;
				surfIN.vertexToFrag42_g1195 = IN.customPack3.xyzw;
				surfIN.vertexToFrag42_g1197 = IN.customPack4.xyzw;
				surfIN.screenPosition = IN.customPack5.xyzw;
				surfIN.vertexToFrag640_g1145 = IN.customPack6.xyz;
				surfIN.vertexToFrag42_g1196 = IN.customPack7.xyzw;
				surfIN.vertexToFrag313_g1143 = IN.customPack1.z;
				surfIN.vertexToFrag42_g1198 = IN.customPack8.xyzw;
				float3 worldPos = float3( IN.tSpace0.w, IN.tSpace1.w, IN.tSpace2.w );
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.worldPos = worldPos;
				surfIN.worldNormal = float3( IN.tSpace0.z, IN.tSpace1.z, IN.tSpace2.z );
				surfIN.worldRefl = -worldViewDir;
				surfIN.internalSurfaceTtoW0 = IN.tSpace0.xyz;
				surfIN.internalSurfaceTtoW1 = IN.tSpace1.xyz;
				surfIN.internalSurfaceTtoW2 = IN.tSpace2.xyz;
				SurfaceOutputCustomLightingCustom o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputCustomLightingCustom, o )
				surf( surfIN, o );
				UnityGI gi;
				UNITY_INITIALIZE_OUTPUT( UnityGI, gi );
				o.Alpha = LightingStandardCustomLighting( o, worldViewDir, gi ).a;
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Standard (Specular setup)"
	CustomEditor "Thry.ShaderEditor"
}
/*ASEBEGIN
Version=19105
Node;AmplifyShaderEditor.CommentaryNode;874;616.8121,297.1261;Inherit;False;613.0267;1045.912;Main Textures (& Emissive);19;896;755;753;754;756;45;66;430;483;474;492;402;758;757;497;491;475;484;431;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;873;-3582.923,2261.03;Inherit;False;1194.876;1409.491;;21;954;485;892;200;893;499;476;213;361;378;279;278;277;520;199;287;112;111;110;109;966;Surface Lighting and Shadows;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;749;-3588.205,111.3781;Inherit;False;2179.826;1885.979;;58;743;761;752;741;883;1023;1024;60;59;1022;1021;875;467;1018;469;1011;272;945;946;944;266;271;265;262;721;720;1017;727;1013;718;717;76;88;80;1020;1019;1015;473;724;723;472;471;1016;1014;1012;267;52;744;748;726;716;715;47;746;745;268;87;1025;Texture Samplers;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;733;2852.7,297.2612;Inherit;False;623.155;410.5492;Vertex Position Rounding;7;541;542;543;545;550;537;547;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;732;2173.94,296.295;Inherit;False;623;525.5416;Affine UVs;9;968;1010;1009;710;711;704;705;706;703;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;549;-3582.519,3936.188;Inherit;False;1755.754;527.5496;vertex scrungling;11;529;530;531;532;533;534;538;544;539;536;548;Vertex Position Rounding (Snapping);1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;527;135.8538,299.1123;Inherit;False;398.4092;530.6663;ThryEditor stuff!;6;415;462;68;43;65;44;Properties (& ThryEditor stuff);1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;526;1285.696,297.2191;Inherit;False;832.8584;1799.6;Lighting Options;33;967;941;943;218;955;457;950;951;890;891;196;195;888;280;889;289;281;219;197;198;283;286;290;282;288;358;94;211;212;357;95;96;113;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;427;3548.182,297.426;Inherit;False;875.9476;1083.975;Advanced Options;26;395;394;410;411;416;417;404;405;403;408;407;406;409;397;400;401;418;419;421;422;420;424;423;425;426;734;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;194;-3579.084,-1301.57;Inherit;False;651.6054;1173.255;;8;36;74;245;465;466;248;51;740;Texture Inputs;1,1,1,1;0;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;-277.3446,296.4772;Float;False;True;-1;7;Thry.ShaderEditor;0;0;CustomLighting;Symm/Super Retro Shader/Super Retro Surface;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;True;_ZWrite;3;True;_ZTest;True;0;True;_OffsetFactor;0;True;_OffsetUnits;False;0;Custom;0.5;True;True;0;True;Opaque;;Geometry;All;12;all;True;True;True;True;0;True;_ColorMask;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassOp;0;True;_StencilFailOp;0;True;_StencilZFailOp;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;1;0;True;_SrcBlend;0;True;_DstBlend;1;0;True;_SrcBlendAlpha;0;True;_DstBlendAlpha;0;True;_BlendOp;0;True;_BlendOpAlpha;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;Standard (Specular setup);-1;-1;-1;-1;0;False;0;0;True;_Cull;-1;0;True;_Cutoff;0;0;0;False;0.1;False;;0;True;_AlphatoCoverage;False;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;51;-3198.006,-1248.57;Inherit;False;input_TexObjMainTex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;248;-3193.806,-823.5499;Inherit;False;input_TexObjSpecular;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;466;-3196.972,-599.4418;Inherit;False;input_TexObjOcclusion;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;87;-1880.192,272.0685;Inherit;False;var_AlbedoRGBA;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;268;-2022.588,277.3207;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;745;-3532.157,1681.091;Inherit;False;705;prop_AffineUVsToggle;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;746;-3533.205,1753.036;Inherit;False;711;prop_AffineUVStrength;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;47;-2915.29,161.3781;Inherit;True;Property;_MainTextureSampler;Main Texture Sampler;5;0;Create;True;0;0;0;False;0;False;36;f07ba8c2f4ff3934b905798ab4d956ec;f07ba8c2f4ff3934b905798ab4d956ec;True;0;False;white;Auto;False;Instance;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;715;-3524.572,239.8055;Inherit;False;705;prop_AffineUVsToggle;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;716;-3525.621,311.7505;Inherit;False;711;prop_AffineUVStrength;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;726;-3285.342,322.5723;Inherit;False;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.GetLocalVarNode;109;-3463.377,2311.03;Inherit;False;87;var_AlbedoRGBA;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;110;-3489.377,2382.03;Inherit;False;51;input_TexObjMainTex;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.GetLocalVarNode;111;-3451.513,2451.021;Inherit;False;88;var_NormalXYZ;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;112;-3509.114,2522.821;Inherit;False;113;prop_BaseSurfaceLighting;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;287;-3471.949,2592.377;Inherit;False;286;prop_SpecularType;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;199;-3498.792,2661.288;Inherit;False;197;prop_BakedLightSupport;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;520;-2635.188,2573.673;Inherit;False;var_FinalLighting;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;75;-3194.07,-1039.294;Inherit;False;input_TexObjNormalMap;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;739;-3199.91,-377.5107;Inherit;False;input_TexObjEmission;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.GetLocalVarNode;748;-3528.717,1606.677;Inherit;False;739;input_TexObjEmission;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.LerpOp;759;-708.976,223.0522;Inherit;False;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;738;-949.4918,230.668;Inherit;False;743;var_EmissiveRGB;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;760;-972.9728,301.2634;Inherit;False;756;prop_EmissiveToggle;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;44;186.5099,423.592;Inherit;False;Property;shader_master_label;Super Retro Shader;1;1;[HideInInspector];Create;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;65;188.0062,499.3123;Inherit;False;Property;_ShaderOptimizerEnabled;LockButton;2;0;Create;False;0;0;0;True;1;ThryShaderOptimizerLockButton;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;43;185.8538,349.1122;Inherit;False;Property;shader_is_using_thry_editor;shader_is_using_thry_editor;0;1;[HideInInspector];Create;False;0;0;0;True;0;False;0;69;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;68;188.4166,578.1112;Inherit;False;Property;_LockButtonHelpbox;Warning! Animating values will not work by default when the shader is Locked In! Right click a property to allow for animation at runtime.;3;0;Create;False;0;0;0;True;1;Helpbox;False;1;1;False;0;1;INT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;113;1642.935,480.2236;Inherit;False;prop_BaseSurfaceLighting;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;417;4015.156,644.3957;Inherit;False;Property;_OffsetUnits;Offset Units;64;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;404;3793.1,722.3719;Inherit;False;Property;_DstBlend;RGB Blend Destination;66;0;Create;False;0;0;0;True;1;Enum(UnityEngine.Rendering.BlendMode);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;405;4002.797,721.6437;Inherit;False;Property;_BlendOp;RGB Blend Op;67;0;Create;False;0;0;0;True;1;Enum(Thry.BlendOp);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;403;3608.098,722.3719;Inherit;False;Property;_SrcBlend;RGB Blend Source;65;0;Create;False;0;0;0;True;3;Space(8);ThryHeaderLabel(RGB Blending Options);Enum(UnityEngine.Rendering.BlendMode);False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;408;3792.639,803.4105;Inherit;False;Property;_DstBlendAlpha;Alpha Blend Destination;69;0;Create;False;0;0;0;True;1;Enum(UnityEngine.Rendering.BlendMode);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;409;3598.182,952.8303;Inherit;False;Property;_AlphatoCoverage;Alpha to Coverage;71;0;Create;True;0;0;0;True;2;Space(8);Toggle(_);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;397;3784.582,953.1365;Inherit;False;Property;_ColorMask;Color Mask;72;0;Create;False;0;7;Off;0;Alpha;1;Blue;2;Green;4;Red;8;RGB;14;RGBA;15;0;True;1;Enum(Thry.ColorMask);False;15;15;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;421;3864.13,1181.402;Inherit;False;Property;_StencilReadMask;Read Mask Value;76;1;[IntRange];Create;False;0;0;0;True;0;False;255;0;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;422;4124.134,1181.402;Inherit;False;Property;_StencilWriteMask;Write Mask Value;77;1;[IntRange];Create;False;0;0;0;True;0;False;255;0;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;420;3603.131,1181.402;Inherit;False;Property;_StencilReference;Reference Value;75;1;[IntRange];Create;False;0;0;0;True;0;False;0;0;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;424;3603.131,1265.402;Inherit;False;Property;_StencilComparison;Comparison;78;0;Create;False;0;0;0;True;1;Enum(UnityEngine.Rendering.CompareFunction);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;423;3755.131,1264.402;Inherit;False;Property;_StencilPassOp;Pass Front Operation;79;0;Create;False;0;0;0;True;1;Enum(UnityEngine.Rendering.StencilOp);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;425;3957.13,1265.402;Inherit;False;Property;_StencilFailOp;Fail Front Operation;80;0;Create;False;0;0;0;True;1;Enum(UnityEngine.Rendering.StencilOp);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;426;4153.133,1265.402;Inherit;False;Property;_StencilZFailOp;ZFail Front Operation;81;0;Create;False;0;0;0;True;1;Enum(UnityEngine.Rendering.StencilOp);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;411;3727.201,645.0906;Inherit;False;Property;_ZTest;ZTest;62;0;Create;False;0;0;0;True;1;Enum(UnityEngine.Rendering.CompareFunction);False;4;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;416;3856.155,645.3957;Inherit;False;Property;_OffsetFactor;Offset Factor;63;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;406;3598.636,806.4105;Inherit;False;Property;_SrcBlendAlpha;Alpha Blend Source;68;0;Create;False;0;0;0;True;3;Space(8);ThryHeaderLabel(Alpha Blending Options);Enum(UnityEngine.Rendering.BlendMode);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;407;4009.336,802.6821;Inherit;False;Property;_BlendOpAlpha;Alpha Blend Op;70;0;Create;False;0;0;0;True;1;Enum(Thry.BlendOp);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;394;3851.889,347.6992;Inherit;False;Property;m_end_AdvOp;Advanced Options (end);83;1;[HideInInspector];Create;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;419;3817.091,1104.923;Inherit;False;Property;m_end_StencilOps;Stencil Options (end);82;1;[HideInInspector];Create;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;395;3606.194,347.4258;Inherit;False;Property;m_start_AdvOp;Advanced Options;58;1;[HideInInspector];Create;False;0;0;0;True;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;418;3604.194,1105.249;Inherit;False;Property;m_start_StencilOps;Stencil Options;74;1;[HideInInspector];Create;False;0;0;0;True;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;410;3604.199,644.0906;Inherit;False;Property;_ZWrite;ZWrite;61;0;Create;False;0;0;1;;True;3;ThryHeaderLabel(Depth Options);Enum(Off,0, On,1);;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;543;2905.622,429.8929;Inherit;False;Property;_VertSnappingToggle;VertSnappingToggle;54;1;[HideInInspector];Create;True;0;0;0;True;1;ThryToggle(_VertSnappingToggle);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;545;3131.473,429.6508;Inherit;False;prop_VertSnappingToggle;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;537;2907.837,591.8103;Inherit;False;Property;_VertexRoundingAccuracy;Vertex Rounding Accuracy;56;1;[IntRange];Create;True;0;0;0;False;0;False;128;50;0;512;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;547;3178.855,590.9155;Inherit;False;prop_VertSnappingAccuracy;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;400;3611.198,443.1725;Inherit;False;Property;m_start_RenderingOps;Rendering Options;59;1;[HideInInspector];Create;False;0;0;0;True;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;401;3846.098,443.846;Inherit;False;Property;m_end_RenderingOps;Rendering Options (end);73;1;[HideInInspector];Create;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;96;1575.673,347.2191;Inherit;False;Property;m_end_Lighting;Surface Lighting (end);45;1;[HideInInspector];Create;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;95;1355.773,347.5457;Inherit;False;Property;m_start_Lighting;Surface Lighting;27;1;[HideInInspector];Create;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;703;2531.33,346.295;Inherit;False;Property;m_end_AffineUVs;Affine UVs (end);52;1;[HideInInspector];Create;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;431;927.6705,445.9598;Inherit;False;prop_NormalScale;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;475;934.812,653.9321;Inherit;False;prop_OcclusionStrength;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;491;941.839,731.3392;Inherit;False;prop_OcclusionOnAlbedo;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;757;981.5684,997.1943;Inherit;False;Property;m_end_Emissive;Emissive (end);24;1;[HideInInspector];Create;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;492;668.839,732.3392;Inherit;False;Property;_ApplyOcclusionOnAlbedo;Apply to Base Color?;17;0;Create;False;0;0;0;True;1;Toggle(_);False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;474;666.8121,655.9321;Inherit;False;Property;_OcclusionStrength;Occlusion Strength;16;0;Create;False;0;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;430;668.8906,447.2003;Inherit;False;Property;_BumpScale;Normal Scale;11;0;Create;False;0;0;0;True;0;False;1;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;66;878.7405,347.126;Inherit;False;Property;m_end_MainOps;Main Textures (end);26;1;[HideInInspector];Create;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;45;670.8411,351.4526;Inherit;False;Property;m_start_MainOps;Main Textures;6;1;[HideInInspector];Create;False;0;0;0;True;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;415;188.0869,730.434;Inherit;False;Property;_Cull;Face Culling Mode;5;0;Create;False;0;0;0;True;1;Enum(UnityEngine.Rendering.CullMode);False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;245;-3531.098,-826.0634;Inherit;True;Property;_SpecGlossMap;Specular Map (RBG);12;0;Create;False;0;0;0;False;1;ThryHeaderLabel(Specular);False;None;7ca2f867c49685d40b6a60435c5538e1;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;74;-3528.071,-1042.294;Inherit;True;Property;_BumpMap;Normal Map;10;0;Create;False;0;0;0;False;1;ThryHeaderLabel(Normals);False;None;36192a9c920334a438b3230bc0b15d8f;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;36;-3527.405,-1248.671;Inherit;True;Property;_MainTex;Albedo (RGBA);7;0;Create;False;1;Albedo;0;0;False;1;ThryHeaderLabel(Albedo);False;None;4e07d6f099e76f34d9af6878010ff8d4;False;white;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode;277;-3461.607,2937.033;Inherit;False;266;var_SpecularRGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;278;-3488.307,3005.133;Inherit;False;282;prop_SpecularStrength;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;279;-3471.408,3075.333;Inherit;False;283;prop_SpecularGloss;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;378;-3494.812,3144.296;Inherit;False;290;prop_PerVertexSpecular;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;361;-3534.281,3213.974;Inherit;False;357;prop_HalfLambertWrapStrength;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;213;-3489.918,3284.057;Inherit;False;212;prop_LightingTexelSize;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;476;-3459.887,3352.952;Inherit;False;472;var_OcclusionMap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;499;-3498.481,3422.062;Inherit;False;491;prop_OcclusionOnAlbedo;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;893;-3486.762,2729.525;Inherit;False;889;var_IndirectLightingStr;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;200;-3509.792,2798.564;Inherit;False;198;prop_AmbientLightSupport;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;892;-3498.837,2866.921;Inherit;False;890;prop_AmbientLightingStr;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;756;953.2423,1153.284;Inherit;False;prop_EmissiveToggle;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;754;969.3986,1234.038;Inherit;False;prop_EmissiveMult;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;465;-3526.972,-601.4418;Inherit;True;Property;_OcclusionMap;Occlusion Map (R);15;0;Create;False;0;0;0;False;1;ThryHeaderLabel(Occlusion);False;None;0c105cfe4ea5b2544bf627d1777025d0;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SamplerNode;744;-2931.208,1608.004;Inherit;True;Property;_EmissiveSampler;Emissive Sampler;5;0;Create;True;0;0;0;False;0;False;740;f07ba8c2f4ff3934b905798ab4d956ec;f07ba8c2f4ff3934b905798ab4d956ec;True;0;False;white;Auto;False;Instance;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;52;-3520.982,164.0223;Inherit;False;51;input_TexObjMainTex;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.GetLocalVarNode;485;-3501.246,3492.572;Inherit;False;943;prop_SurfaceShadowColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ObjectToWorldTransfNode;529;-3332.08,4168.83;Inherit;False;1;0;FLOAT4;0,0,0,1;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RoundOpNode;530;-2972.081,4167.83;Inherit;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;531;-3116.081,4168.83;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;100;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WorldToObjectTransfNode;532;-2714.08,4167.83;Inherit;False;1;0;FLOAT4;0,0,0,1;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PosVertexDataNode;533;-3532.519,4108.732;Inherit;False;1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;534;-2509.081,4082.827;Inherit;False;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;538;-2842.08,4167.83;Inherit;False;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;544;-2576.232,3986.188;Inherit;False;545;prop_VertSnappingToggle;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;539;-2297.517,4015.533;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT4;0,0,0,0;False;3;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;548;-3349.891,4347.74;Inherit;False;547;prop_VertSnappingAccuracy;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;536;-2137.768,4015.069;Inherit;False;var_FinalVertexRoundingOffset;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.TexturePropertyNode;740;-3528.309,-379.6117;Inherit;True;Property;_EmissionMap;Emissive Map (RGB);20;0;Create;False;0;0;0;False;1;ThryHeaderLabel(Emissive);False;None;4e07d6f099e76f34d9af6878010ff8d4;False;black;LockedToTexture2D;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;758;678.6696,998.5209;Inherit;False;Property;m_start_Emissive;Emissive--{reference_property:_EmissiveToggle};18;1;[HideInInspector];Create;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;734;3602.959,536.963;Inherit;False;Property;_AdvRenderingHelpbox;NOTE: You can use the ''Rendering Presets'' option at the top of the UI to quickly switch to different material types! Selecting a Rendering Preset option will automatically change these values as needed.;60;0;Create;False;0;0;0;True;1;Helpbox();False;1;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;706;2228.431,347.6216;Inherit;False;Property;m_start_AffineUVs;Affine UVs--{reference_property:_AffineUVsToggle};46;1;[HideInInspector];Create;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;542;2902.7,348.5878;Inherit;False;Property;m_start_VertSnapping;Vertex Snapping--{reference_property:_VertSnappingToggle};53;1;[HideInInspector];Create;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;541;3205.599,347.2612;Inherit;False;Property;m_end_VertSnapping;Vertex Snapping (end);57;1;[HideInInspector];Create;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;357;1637.543,558.7795;Inherit;False;prop_HalfLambertWrapStrength;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;212;1647.781,712.8065;Inherit;False;prop_LightingTexelSize;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;462;188.4335,654.8671;Inherit;False;Property;_Mode;Rendering Presets--{on_value_actions:[ 	{value:0,actions:[ 		{type:SET_PROPERTY,data:render_queue=2000}, 		{type:SET_PROPERTY,data:render_type=Opaque}, 		{type:SET_PROPERTY,data:_BlendOp=0}, 		{type:SET_PROPERTY,data:_BlendOpAlpha=0}, 		{type:SET_PROPERTY,data:_Cutoff=0}, 		{type:SET_PROPERTY,data:_SrcBlend=1}, 		{type:SET_PROPERTY,data:_DstBlend=0}, 		{type:SET_PROPERTY,data:_SrcBlendAlpha=1}, 		{type:SET_PROPERTY,data:_DstBlendAlpha=1}, 		{type:SET_PROPERTY,data:_AlphaToCoverage=0}, 		{type:SET_PROPERTY,data:_ZWrite=1}, 		{type:SET_PROPERTY,data:_ZTest=4}, 	]}, 	{value:1,actions:[ 		{type:SET_PROPERTY,data:render_queue=2450}, 		{type:SET_PROPERTY,data:render_type=TransparentCutout}, 		{type:SET_PROPERTY,data:_BlendOp=0}, 		{type:SET_PROPERTY,data:_BlendOpAlpha=4}, 		{type:SET_PROPERTY,data:_Cutoff=.5}, 		{type:SET_PROPERTY,data:_SrcBlend=1}, 		{type:SET_PROPERTY,data:_DstBlend=0}, 		{type:SET_PROPERTY,data:_SrcBlendAlpha=1}, 		{type:SET_PROPERTY,data:_DstBlendAlpha=1}, 		{type:SET_PROPERTY,data:_AlphaToCoverage=0}, 		{type:SET_PROPERTY,data:_ZWrite=1}, 		{type:SET_PROPERTY,data:_ZTest=4}, 	]}, 	{value:2,actions:[ 		{type:SET_PROPERTY,data:render_queue=3000}, 		{type:SET_PROPERTY,data:render_type=Transparent}, 		{type:SET_PROPERTY,data:_BlendOp=0}, 		{type:SET_PROPERTY,data:_BlendOpAlpha=4}, 		{type:SET_PROPERTY,data:_Cutoff=0}, 		{type:SET_PROPERTY,data:_SrcBlend=5}, 		{type:SET_PROPERTY,data:_DstBlend=10}, 		{type:SET_PROPERTY,data:_SrcBlendAlpha=1}, 		{type:SET_PROPERTY,data:_DstBlendAlpha=1}, 		{type:SET_PROPERTY,data:_AlphaToCoverage=0}, 		{type:SET_PROPERTY,data:_ZWrite=0}, 		{type:SET_PROPERTY,data:_ZTest=4}, 	]}, 	{value:3,actions:[ 		{type:SET_PROPERTY,data:render_queue=3000}, 		{type:SET_PROPERTY,data:render_type=Transparent}, 		{type:SET_PROPERTY,data:_BlendOp=0}, 		{type:SET_PROPERTY,data:_BlendOpAlpha=4}, 		{type:SET_PROPERTY,data:_Cutoff=0}, 		{type:SET_PROPERTY,data:_SrcBlend=1}, 		{type:SET_PROPERTY,data:_DstBlend=10}, 		{type:SET_PROPERTY,data:_SrcBlendAlpha=1}, 		{type:SET_PROPERTY,data:_DstBlendAlpha=1}, 		{type:SET_PROPERTY,data:_AlphaToCoverage=0}, 		{type:SET_PROPERTY,data:_ZWrite=0}, 		{type:SET_PROPERTY,data:_ZTest=4}, 	]}, 	{value:4,actions:[ 		{type:SET_PROPERTY,data:render_queue=3000}, 		{type:SET_PROPERTY,data:render_type=Transparent}, 		{type:SET_PROPERTY,data:_BlendOp=0}, 		{type:SET_PROPERTY,data:_BlendOpAlpha=4}, 		{type:SET_PROPERTY,data:_Cutoff=0}, 		{type:SET_PROPERTY,data:_SrcBlend=1}, 		{type:SET_PROPERTY,data:_DstBlend=1}, 		{type:SET_PROPERTY,data:_SrcBlendAlpha=1}, 		{type:SET_PROPERTY,data:_DstBlendAlpha=1}, 		{type:SET_PROPERTY,data:_AlphaToCoverage=0}, 		{type:SET_PROPERTY,data:_ZWrite=0}, 		{type:SET_PROPERTY,data:_ZTest=4}, 	]}, 	{value:5,actions:[ 		{type:SET_PROPERTY,data:render_queue=3000}, 		{type:SET_PROPERTY,data:render_type=Transparent}, 		{type:SET_PROPERTY,data:_BlendOp=0}, 		{type:SET_PROPERTY,data:_BlendOpAlpha=4}, 		{type:SET_PROPERTY,data:_Cutoff=0}, 		{type:SET_PROPERTY,data:_SrcBlend=4}, 		{type:SET_PROPERTY,data:_DstBlend=1}, 		{type:SET_PROPERTY,data:_SrcBlendAlpha=1}, 		{type:SET_PROPERTY,data:_DstBlendAlpha=1}, 		{type:SET_PROPERTY,data:_AlphaToCoverage=0}, 		{type:SET_PROPERTY,data:_ZWrite=0}, 		{type:SET_PROPERTY,data:_ZTest=4}, 	]}, 	{value:6,actions:[ 		{type:SET_PROPERTY,data:render_queue=3000}, 		{type:SET_PROPERTY,data:render_type=Transparent}, 		{type:SET_PROPERTY,data:_BlendOp=0}, 		{type:SET_PROPERTY,data:_BlendOpAlpha=4}, 		{type:SET_PROPERTY,data:_Cutoff=0}, 		{type:SET_PROPERTY,data:_SrcBlend=2}, 		{type:SET_PROPERTY,data:_DstBlend=0}, 		{type:SET_PROPERTY,data:_SrcBlendAlpha=1}, 		{type:SET_PROPERTY,data:_DstBlendAlpha=1}, 		{type:SET_PROPERTY,data:_AlphaToCoverage=0}, 		{type:SET_PROPERTY,data:_ZWrite=0}, 		{type:SET_PROPERTY,data:_ZTest=4}, 	]}, 	{value:7,actions:[ 		{type:SET_PROPERTY,data:render_queue=3000}, 		{type:SET_PROPERTY,data:render_type=Transparent}, 		{type:SET_PROPERTY,data:_BlendOp=0}, 		{type:SET_PROPERTY,data:_BlendOpAlpha=4}, 		{type:SET_PROPERTY,data:_Cutoff=0}, 		{type:SET_PROPERTY,data:_SrcBlend=2}, 		{type:SET_PROPERTY,data:_DstBlend=3}, 		{type:SET_PROPERTY,data:_SrcBlendAlpha=1}, 		{type:SET_PROPERTY,data:_DstBlendAlpha=1}, 		{type:SET_PROPERTY,data:_AlphaToCoverage=0}, 		{type:SET_PROPERTY,data:_ZWrite=0}, 		{type:SET_PROPERTY,data:_ZTest=4}, 	]}, 	{value:9,actions:[ 		{type:SET_PROPERTY,data:render_queue=2450}, 		{type:SET_PROPERTY,data:render_type=TransparentCutout}, 		{type:SET_PROPERTY,data:_BlendOp=0}, 		{type:SET_PROPERTY,data:_BlendOpAlpha=4}, 		{type:SET_PROPERTY,data:_Cutoff=0}, 		{type:SET_PROPERTY,data:_SrcBlend=5}, 		{type:SET_PROPERTY,data:_DstBlend=10}, 		{type:SET_PROPERTY,data:_SrcBlendAlpha=1}, 		{type:SET_PROPERTY,data:_DstBlendAlpha=1}, 		{type:SET_PROPERTY,data:_AlphaToCoverage=0}, 		{type:SET_PROPERTY,data:_ZWrite=1}, 		{type:SET_PROPERTY,data:_ZTest=4}, 	]} ]};4;0;Create;False;0;0;0;True;2;ThryWideEnum(Opaque,0, Transparent,3, TransCutout,1, TransClipping,9, Fade,2,  Additive,4, Soft Additive,5, Multiplicative,6, 2x Multiplicative,7);Space(8);False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;211;1347.411,714.5119;Inherit;False;Property;_LightingTexelSize;Lighting Texel Size--{condition_showS:(_SurfaceShadingModel==3)};31;0;Create;False;0;8;Main Texture Resolution;0;8x8;8;16x16;16;32x32;32;64x64;64;128x128;128;256x256;256;512x512;512;0;False;1;ThryWideEnum(Match Main Texture Resolution,0, 8x8,8, 16x16,16, 32x32,32, 64x64,64, 128x128,128, 256x256,256, 512x512,512, 1024x1024,1024);False;0;128;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;94;1348.658,479.128;Inherit;False;Property;_SurfaceShadingModel;Surface Shading Model;28;0;Create;False;0;4;Lambert;0;Half Lambert;1;Gouraud;2;Per Texel;3;0;True;2;ThryHeaderLabel(Base Surface Shading Settings);ThryWideEnum(Lambert,0, Half Lambert,1, Gouraud,2, Per Texel,3, Flat Lambert,4, Flat Half Lambert,5, Dithered Lambert 4x4,6, Dithered Lambert 8x8,7, Dithered Half Lambert 4x4,8, Dithered Half Lambert 8x8,9, Unlit,10);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;358;1337.173,560.485;Inherit;False;Property;_HalfLambertWrapStrength;Half Lambert Wrap Strength--{condition_showS:(_SurfaceShadingModel==1||_SurfaceShadingModel==5||_SurfaceShadingModel==8||_SurfaceShadingModel==9)};29;0;Create;False;0;8;Main Texture Resolution;0;8x8;8;16x16;16;32x32;32;64x64;64;128x128;128;256x256;256;512x512;512;0;False;0;False;0.5;128;0.5;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;896;679.4332,1075.236;Inherit;False;Property;_EmissiveHelpbox;NOTE: You can either use a grayscale image as your Emissive and tint with color, or use a full color Emissive and set the Tint to pure white!;19;0;Create;False;0;0;0;True;1;Helpbox();False;1;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RangedFloatNode;755;679.3901,1157.526;Inherit;False;Property;_EmissiveToggle;EmissiveToggle;48;1;[HideInInspector];Create;False;0;0;0;True;1;ThryToggle(_EmissiveToggle);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;753;678.3986,1238.038;Inherit;False;Property;_EmissiveStrength;Emissive Strength;22;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;954;-3470.162,3561.551;Inherit;False;950;prop_UnlitBrightness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;288;1660.221,1486.166;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;282;1834.411,1482.193;Inherit;False;prop_SpecularStrength;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;290;1666.168,1656.051;Inherit;False;prop_PerVertexSpecular;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;286;1641.898,1337.729;Inherit;False;prop_SpecularType;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;283;1645.41,1563.194;Inherit;False;prop_SpecularGloss;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;198;1642.022,1094.99;Inherit;False;prop_AmbientLightSupport;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;197;1633.022,948.9907;Inherit;False;prop_BakedLightSupport;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;219;1359.224,1337.094;Inherit;False;Property;_SpecularShading;Specular Model--{condition_showS:(_SurfaceShadingModel!=10)};38;1;[Enum];Create;False;0;3;None;0;Phong;1;BlinnPhong;2;0;True;2;Space(8);ThryHeaderLabel(Specular Settings);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;281;1358.081,1563.762;Inherit;False;Property;_SpecularGloss;Specular Gloss--{condition_showS:(_SurfaceShadingModel!=10&&_SpecularShading!=0&&_SpecularShading!=3)};41;0;Create;False;0;0;0;False;0;False;32;128;0.01;128;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;889;1637.277,1023.318;Inherit;False;var_IndirectLightingStr;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;280;1358.081,1483.761;Inherit;False;Property;_SpecularStrength;Specular Strength--{condition_showS:(_SurfaceShadingModel!=10&&_SpecularShading==2)};40;0;Create;False;0;0;0;False;0;False;0.1;0.1;0.01;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;888;1339.277,1024.318;Inherit;False;Property;_IndirectLightingStrength;Indirect Lighting Strength--{condition_showS:(_SurfaceShadingModel!=10&&_IndirectLightingSupport==1)};35;0;Create;False;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;195;1344.38,949.5327;Inherit;False;Property;_IndirectLightingSupport;Indirect/Baked Lighting--{condition_showS:(_SurfaceShadingModel!=10)};34;0;Create;False;0;0;0;False;1;Toggle(_);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;196;1339.957,1096.433;Inherit;False;Property;_AmbientSHLighting;Ambient SH Lighting--{condition_showS:(_SurfaceShadingModel!=10)};36;0;Create;False;0;0;0;False;1;Toggle(_);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;891;1340.277,1170.318;Inherit;False;Property;_AmbientLightingStrength;Ambient Lighting Strength--{condition_showS:(_SurfaceShadingModel!=10&&_AmbientSHLighting==1)};37;0;Create;False;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;890;1643.277,1171.318;Inherit;False;prop_AmbientLightingStr;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;951;1346.619,868.4537;Inherit;False;Property;_UnlitBrightness;Unlit Surface Brightness--{condition_showS:(_SurfaceShadingModel==10)};33;0;Create;False;0;0;0;False;0;False;1;1;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;950;1642.619,868.4537;Inherit;False;prop_UnlitBrightness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;966;-3089.512,2575.076;Inherit;False;Symm's Retro Base Lighting;-1;;1143;a9ac1fcb59dbe324099da4926e1306bc;0;19;13;FLOAT3;1,1,1;False;58;SAMPLER2D;1,1,1;False;7;FLOAT3;0,0,1;False;33;INT;0;False;207;INT;0;False;26;INT;0;False;537;FLOAT;1;False;25;INT;0;False;538;FLOAT;1;False;187;COLOR;0.39,0.39,0.39,1;False;198;FLOAT;0.1;False;199;FLOAT;128;False;316;INT;0;False;275;FLOAT;0.5;False;146;FLOAT;0;False;361;FLOAT;1;False;377;FLOAT;1;False;370;COLOR;0,0,0,1;False;610;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.IntNode;457;1358.71,1410.401;Inherit;False;Property;_PhongFlatWarning;NOTE: Phong Specular is not technically compatible with ''Flat'' shading types, and will not show Specular per-face.--{condition_showS:(_SurfaceShadingModel!=1&&_SurfaceShadingModel!=2&&_SurfaceShadingModel!=3&&_SurfaceShadingModel!=6&&_SurfaceShadingModel!=7&&_SurfaceShadingModel!=8&&_SurfaceShadingModel!=9&&_SurfaceShadingModel!=10&&_SpecularShading==1)};39;0;Create;False;0;0;0;True;1;Helpbox(1);False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;955;1348.04,791.4335;Inherit;False;Property;_UnlitNote;NOTE: Unlit Shading does not make use of the Normal, Specular, or Occlusion Maps. If you do not plan on using any other Surface Shading Model and are using any of those textures on this material, remove them to save on VRAM usage!--{condition_showS:(_SurfaceShadingModel==10)};32;0;Create;False;0;0;0;True;1;Helpbox(1);False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;218;1340.959,639.1199;Inherit;False;Property;_PerTexelHelpbox;NOTE: Per-Texel Shading technically supports Normals! However, this has two caveats. The lower the Normal Map texture size, the more important it becomes to use a slightly higher resolution Texel density. The camera will also start showing minor artifacting when you start zooming in close enough to a surface with a Normal Map.--{condition_showS:(_SurfaceShadingModel==3)};30;0;Create;False;0;0;0;True;1;Helpbox(1);False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;943;1656.987,1893.471;Inherit;False;prop_SurfaceShadowColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;289;1357.524,1657.593;Inherit;False;Property;_PerVertexSpecular;Per-Vertex Specular--{condition_showS:(_SurfaceShadingModel!=10&&_SpecularShading!=0)};42;0;Create;False;0;0;0;False;1;Toggle(_);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;941;1349.438,1892.256;Inherit;False;Property;_ShadowColor;Surface Shadow Color--{condition_showS:(_SurfaceShadingModel!=10),tooltip:''Only works with Realtime Directional lights!''};44;0;Create;False;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.IntNode;967;1350.26,1821.567;Inherit;False;Property;_ShadowColorHelpbox;NOTE: Shadow Color only effects Realtime Pixel/Important Directional Lights for technical (BiRP) reasons!--{condition_showS:(_SurfaceShadingModel!=10)};43;0;Create;False;0;0;0;True;3;Space(8);ThryHeaderLabel(Shadow Settings);Helpbox(1);False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.ColorNode;267;-2229.588,363.3207;Inherit;False;Property;_Color;Albedo Tint;8;0;Create;False;0;0;0;False;0;False;1,1,1,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;522;-756.3821,620.5798;Inherit;False;520;var_FinalLighting;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;497;959.9553,850.6313;Inherit;False;prop_Cutoff;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;493;-880.7393,402.3166;Inherit;False;87;var_AlbedoRGBA;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.BreakToComponentsNode;495;-678.739,406.3166;Inherit;False;FLOAT4;1;0;FLOAT4;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.RangedFloatNode;402;675.1327,849.9487;Inherit;False;Property;_Cutoff;Alpha Cutoff Value;25;0;Create;False;0;0;0;True;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;546;-833.0834,695.9506;Inherit;False;536;var_FinalVertexRoundingOffset;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;705;2456.204,443.6846;Inherit;False;prop_AffineUVsToggle;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;704;2230.353,443.9267;Inherit;False;Property;_AffineUVsToggle;AffineUVsToggle;47;1;[HideInInspector];Create;False;0;0;0;True;1;ThryToggle(_AffineUVsToggle);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;711;2503.94,529.8365;Inherit;False;prop_AffineUVStrength;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;710;2229.94,529.8365;Inherit;False;Property;_PerspectiveShiftStrength;Perspective Shift Strength;49;0;Create;False;0;0;0;False;0;False;1;1;0.01;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1009;2231.379,616.9274;Inherit;False;Property;_AffineCameraClipBias;Affine Camera Clip Bias;50;0;Create;False;0;0;0;False;0;False;-1;-1;-5;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1010;2506.379,616.9274;Inherit;False;prop_AffineCameraClipBias;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1012;-3274.527,1665.003;Inherit;False;Symm's Retro UV Calc;-1;;1193;cc0290cdeb18eae47ad0f6e76f0d3bad;0;4;1;SAMPLER2D;0;False;2;FLOAT;0;False;14;FLOAT;0;False;76;FLOAT;-1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;1014;-3268.243,218.5166;Inherit;False;Symm's Retro UV Calc;-1;;1195;cc0290cdeb18eae47ad0f6e76f0d3bad;0;4;1;SAMPLER2D;0;False;2;FLOAT;0;False;14;FLOAT;0;False;76;FLOAT;-1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1016;-3545.661,382.1295;Inherit;False;1010;prop_AffineCameraClipBias;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;471;-2566.362,1364.275;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;472;-2399.833,1360.079;Inherit;False;var_OcclusionMap;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;723;-3506.193,1346.592;Inherit;False;705;prop_AffineUVsToggle;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;724;-3507.241,1418.537;Inherit;False;711;prop_AffineUVStrength;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;473;-2884.709,1469.326;Inherit;False;475;prop_OcclusionStrength;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1015;-3249.863,1334.404;Inherit;False;Symm's Retro UV Calc;-1;;1196;cc0290cdeb18eae47ad0f6e76f0d3bad;0;4;1;SAMPLER2D;0;False;2;FLOAT;0;False;14;FLOAT;0;False;76;FLOAT;-1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1019;-3526.036,1488.943;Inherit;False;1010;prop_AffineCameraClipBias;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1020;-3553.036,1822.943;Inherit;False;1010;prop_AffineCameraClipBias;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;968;2232.379,710.9274;Inherit;False;Property;_AffineUVsWarningHelpbox;WARNING: Higher Perspective Shift Strength values with a low (> -0.8) Affine Camera Clip Bias will result in visual artifacting and UV popping!--{condition_showS:(_AffineUVsToggle==1&&_PerspectiveShiftStrength>=0.5&&_AffineCameraClipBias>-1)};51;0;Create;False;0;0;0;True;1;Helpbox(1);False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.SamplerNode;80;-2917.036,578.0524;Inherit;True;Property;_NormalMapSampler;Normal Map Sampler;10;0;Create;True;0;0;0;False;0;False;74;None;None;True;0;False;white;Auto;True;Instance;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;88;-2572.582,584.8154;Inherit;False;var_NormalXYZ;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;76;-3520.911,576.2473;Inherit;False;75;input_TexObjNormalMap;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.GetLocalVarNode;717;-3509.491,656.0031;Inherit;False;705;prop_AffineUVsToggle;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;718;-3510.539,727.9484;Inherit;False;711;prop_AffineUVStrength;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1013;-3253.161,634.7144;Inherit;False;Symm's Retro UV Calc;-1;;1197;cc0290cdeb18eae47ad0f6e76f0d3bad;0;4;1;SAMPLER2D;0;False;2;FLOAT;0;False;14;FLOAT;0;False;76;FLOAT;-1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;727;-3150.118,776.4617;Inherit;False;431;prop_NormalScale;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1017;-3530.436,795.8278;Inherit;False;1010;prop_AffineCameraClipBias;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;720;-3503.179,978.9468;Inherit;False;705;prop_AffineUVsToggle;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;721;-3503.179,1042.947;Inherit;False;711;prop_AffineUVStrength;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;262;-3503.179,898.9468;Inherit;False;248;input_TexObjSpecular;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.SamplerNode;265;-2911.179,898.9468;Inherit;True;Property;_SpecularSampler;Specular Sampler;5;0;Create;True;0;0;0;False;0;False;245;f07ba8c2f4ff3934b905798ab4d956ec;f07ba8c2f4ff3934b905798ab4d956ec;True;0;False;white;Auto;False;Instance;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;271;-2031.177,914.9468;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;266;-1855.177,914.9468;Inherit;False;var_SpecularRGBA;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;944;-2303.179,914.9468;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.NegateNode;946;-2527.179,962.9468;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;272;-2239.179,1026.947;Inherit;False;Property;_SpecularTint;Specular Tint;13;0;Create;True;0;0;0;False;0;False;1,1,1,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;1011;-3247.179,962.9468;Inherit;False;Symm's Retro UV Calc;-1;;1198;cc0290cdeb18eae47ad0f6e76f0d3bad;0;4;1;SAMPLER2D;0;False;2;FLOAT;0;False;14;FLOAT;0;False;76;FLOAT;-1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;469;-3508.607,1274.474;Inherit;False;466;input_TexObjOcclusion;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.GetLocalVarNode;1018;-3519.179,1122.947;Inherit;False;1010;prop_AffineCameraClipBias;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;467;-2896.652,1274.45;Inherit;True;Property;_OcclusionSampler;Occlusion Sampler;55;0;Create;True;0;0;0;False;0;False;465;None;None;True;0;False;white;Auto;False;Instance;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CustomExpressionNode;369;-256.8751,211.2123;Inherit;False;// All code not attributed to sources written by Symmasolan (Symm#8218)$// Please don't randomly friend request me  without talking to me first somehow :($// I'd love to see what you make with this shader though!$// Tag me on Twitter! (Symmasolan);1;Create;0;Shader by Symmasolan;False;True;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;550;2906.904,510.5748;Inherit;False;Property;_VertSnappingHelpbox;WARNING: Vertex Snapping can cause significant flickering and visual artifacts in surface shadows on non-static objects with ''Flat'' or ''Half Lambert'' shading types. Combination of the styles are up to user discretion.--{condition_showS:(_SurfaceShadingModel==1||_SurfaceShadingModel==4||_SurfaceShadingModel==5||_SurfaceShadingModel==8||_SurfaceShadingModel==9)};55;0;Create;False;0;0;0;True;1;Helpbox();False;1;0;False;0;1;INT;0
Node;AmplifyShaderEditor.FunctionNode;875;-2895.163,359.5532;Inherit;False;N64 Filtering Sampler;-1;;1199;605fec3807174d94abad2b2290916646;0;2;3;SAMPLER2D;0;False;7;FLOAT2;0,0;False;5;FLOAT4;0;FLOAT;142;FLOAT;145;FLOAT;146;FLOAT;147
Node;AmplifyShaderEditor.FunctionNode;1021;-2907.618,1803.443;Inherit;False;N64 Filtering Sampler;-1;;1200;605fec3807174d94abad2b2290916646;0;2;3;SAMPLER2D;0;False;7;FLOAT2;0,0;False;5;FLOAT4;0;FLOAT;142;FLOAT;145;FLOAT;146;FLOAT;147
Node;AmplifyShaderEditor.WireNode;1022;-3287.979,1800.114;Inherit;False;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.IntNode;59;-2598.502,410.8227;Inherit;False;Property;_MainTextureFiltering;Albedo Filtering;9;1;[Enum];Create;False;0;2;Texture Driven;0;N64 Bilinear;1;0;False;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.LerpOp;60;-2377.803,276.8226;Inherit;False;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp;1024;-2419.85,1678.517;Inherit;False;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ColorNode;883;-2283.03,1745.407;Inherit;False;Property;_EmissionColor;Emission Tint;21;1;[HDR];Create;False;0;0;0;False;0;False;2,2,2,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;741;-2054.502,1679.165;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;752;-1784.935,1679.553;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;761;-1999.217,1777.366;Inherit;False;754;prop_EmissiveMult;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;743;-1635.99,1678.362;Inherit;False;var_EmissiveRGB;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.IntNode;1023;-2614.497,1794.753;Inherit;False;Property;_EmissiveTextureFiltering;Emissive Filtering;23;1;[Enum];Create;False;0;2;Texture Driven;0;N64 Bilinear;1;0;False;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.GetLocalVarNode;945;-2607.179,1042.947;Inherit;False;484;prop_InvertSpecularColor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;483;668.0289,548.1865;Inherit;False;Property;_InvertSpecular;Invert Specular Map Color;14;0;Create;False;0;0;0;True;1;Toggle(_);False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;484;929.0291,547.1865;Inherit;False;prop_InvertSpecularColor;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1025;-2541.414,844.8531;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
WireConnection;0;2;759;0
WireConnection;0;9;495;3
WireConnection;0;10;495;3
WireConnection;0;13;522;0
WireConnection;0;11;546;0
WireConnection;51;0;36;0
WireConnection;248;0;245;0
WireConnection;466;0;465;0
WireConnection;87;0;268;0
WireConnection;268;0;60;0
WireConnection;268;1;267;0
WireConnection;47;0;52;0
WireConnection;47;1;1014;0
WireConnection;726;0;52;0
WireConnection;520;0;966;0
WireConnection;75;0;74;0
WireConnection;739;0;740;0
WireConnection;759;1;738;0
WireConnection;759;2;760;0
WireConnection;113;0;94;0
WireConnection;545;0;543;0
WireConnection;547;0;537;0
WireConnection;431;0;430;0
WireConnection;475;0;474;0
WireConnection;491;0;492;0
WireConnection;756;0;755;0
WireConnection;754;0;753;0
WireConnection;744;0;748;0
WireConnection;744;1;1012;0
WireConnection;529;0;533;0
WireConnection;530;0;531;0
WireConnection;531;0;529;0
WireConnection;531;1;548;0
WireConnection;532;0;538;0
WireConnection;534;0;532;0
WireConnection;534;1;533;0
WireConnection;538;0;530;0
WireConnection;538;1;548;0
WireConnection;539;0;544;0
WireConnection;539;2;534;0
WireConnection;536;0;539;0
WireConnection;357;0;358;0
WireConnection;212;0;211;0
WireConnection;288;0;280;0
WireConnection;282;0;288;0
WireConnection;290;0;289;0
WireConnection;286;0;219;0
WireConnection;283;0;281;0
WireConnection;198;0;196;0
WireConnection;197;0;195;0
WireConnection;889;0;888;0
WireConnection;890;0;891;0
WireConnection;950;0;951;0
WireConnection;966;13;109;0
WireConnection;966;58;110;0
WireConnection;966;7;111;0
WireConnection;966;33;112;0
WireConnection;966;207;287;0
WireConnection;966;26;199;0
WireConnection;966;537;893;0
WireConnection;966;25;200;0
WireConnection;966;538;892;0
WireConnection;966;187;277;0
WireConnection;966;198;278;0
WireConnection;966;199;279;0
WireConnection;966;316;378;0
WireConnection;966;275;361;0
WireConnection;966;146;213;0
WireConnection;966;361;476;0
WireConnection;966;377;499;0
WireConnection;966;370;485;0
WireConnection;966;610;954;0
WireConnection;943;0;941;0
WireConnection;497;0;402;0
WireConnection;495;0;493;0
WireConnection;705;0;704;0
WireConnection;711;0;710;0
WireConnection;1010;0;1009;0
WireConnection;1012;1;748;0
WireConnection;1012;2;745;0
WireConnection;1012;14;746;0
WireConnection;1012;76;1020;0
WireConnection;1014;1;52;0
WireConnection;1014;2;715;0
WireConnection;1014;14;716;0
WireConnection;1014;76;1016;0
WireConnection;471;0;467;1
WireConnection;471;1;473;0
WireConnection;472;0;471;0
WireConnection;1015;1;469;0
WireConnection;1015;2;723;0
WireConnection;1015;14;724;0
WireConnection;1015;76;1019;0
WireConnection;80;0;76;0
WireConnection;80;1;1013;0
WireConnection;80;5;727;0
WireConnection;88;0;80;0
WireConnection;1013;1;76;0
WireConnection;1013;2;717;0
WireConnection;1013;14;718;0
WireConnection;1013;76;1017;0
WireConnection;265;0;262;0
WireConnection;265;1;1011;0
WireConnection;271;0;944;0
WireConnection;271;1;272;0
WireConnection;266;0;271;0
WireConnection;944;0;265;0
WireConnection;944;1;1025;0
WireConnection;944;2;945;0
WireConnection;946;0;265;0
WireConnection;1011;1;262;0
WireConnection;1011;2;720;0
WireConnection;1011;14;721;0
WireConnection;1011;76;1018;0
WireConnection;467;0;469;0
WireConnection;467;1;1015;0
WireConnection;875;3;726;0
WireConnection;875;7;1014;0
WireConnection;1021;3;1022;0
WireConnection;1021;7;1012;0
WireConnection;1022;0;748;0
WireConnection;60;0;47;0
WireConnection;60;1;875;0
WireConnection;60;2;59;0
WireConnection;1024;0;744;0
WireConnection;1024;1;1021;0
WireConnection;1024;2;1023;0
WireConnection;741;0;1024;0
WireConnection;741;1;883;0
WireConnection;752;0;741;0
WireConnection;752;1;761;0
WireConnection;743;0;752;0
WireConnection;484;0;483;0
WireConnection;1025;0;265;0
ASEEND*/
//CHKSM=FCAB367F0C9850602C0BC82D9436D7719B73590F