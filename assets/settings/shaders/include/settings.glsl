#ifndef _SETTINGS_GLSL
#define _SETTINGS_GLSL

#extension GL_MC_moj_import : enable
#moj_import <settings:definitions.glsl>

// ========<  SHADOWS  >======== //

#define SUN_PATH_ROTATION_X 30.0
#define SUN_PATH_ROTATION_Y 5.0

#define SHADOW_VIEW_FRUSTUM_X vec2(-256.0, 256.0)
#define SHADOW_VIEW_FRUSTUM_Y vec2(-256.0, 256.0)
#define SHADOW_VIEW_FRUSTUM_Z vec2(0.05, 512.0)

#define SHADOW_MAP_UPDATE_PERIOD 24


// ========<  WATER  >======== //

#define WATER_ABSORPTION vec3(1.82, 0.63, 0.28)
#define WATER_COLOR vec3(0.01, 0.06, 0.05)
#define WATER_F0 0.02
#define WATER_F90 0.7

#define ENABLE_WATER_WAVES yes
#define WATER_WAVE_SPEED 1.0
#define WATER_WAVE_ITERATIONS 24
#define WATER_WAVE_DEPTH 1.2
#define WATER_WAVE_SCALE 1.5

#define ENABLE_TRANSLUCENT_SSR yes
#define TRANSLUCENT_SSR_STRIDE 24
#define TRANSLUCENT_SSR_STEPS 48

// ========<  BLOCK REFLECTIONS  >======== //

#define ENABLE_BLOCK_REFLECTIONS yes

#define SMOOTH_BLOCK_REFLECTION_STRIDE 15
#define SMOOTH_BLOCK_REFLECTION_STEPS 64
#define ROUGH_BLOCK_REFLECTION_STRIDE 30
#define ROUGH_BLOCK_REFLECTION_STEPS 16

#define DENOISE_BLOCK_REFLECTIONS yes


// ========<  LIGHTING  >======== //

#define LIGHT_COLOR_MULTIPLIER 1.0
#define BLOCKLIGHT_COLOR vec3(2.50, 1.73, 0.98)

#define ENABLE_DIRECTIONAL_LIGHTMAP no
#define DIRECTIONAL_LIGHTMAP_HEIGHT 1.0

#define ENABLE_SUBSURFACE_SCATTERING yes
#define SUBSURFACE_SCATTERING_SAMPLES 10
#define SUBSURFACE_SAMPLE_RADIUS 0.15
#define SUBSURFACE_DISTANCE_MULTIPLIER 1.0

#define USE_AREA_LIGHT_SPECULAR_APPROXIMATION yes

#define ENABLE_AERIAL_PERSPECTIVE yes
#define ENABLE_VOLUMETRIC_SHADOWS yes
#define VOLUMETRIC_SHADOW_SAMPLES 12

#define ENABLE_SSAO yes
#define SSAO_SAMPLES 16

#define ENABLE_SHADOWS yes
#define SHADOW_SAMPLES 6
#define PENUMBRA_SAMPLES 16


// ========< POST-PROCESS >======== //

#define BLOOM_STRENGTH 0.06


// ========<  ATMOSPHERE  >======== //

#define CAMERA_HEIGHT 1.0
#define SUN_INTENSITY 6.0

#define EARTH_RADIUS 6371.0e3
#define ATMOSPHERE_RADIUS 6471.0e3

#define RAYLEIGH_SCATTERING_BETA vec3(5.802e-6, 13.558e-6, 33.1e-6)
#define RAYLEIGH_DENSITY_PROFILE vec4(1.0, 0.7 / 8.0e3, 0.0, 0.0)

#define MIE_SCATTERING_BETA 1.4e-5
#define MIE_DENSITY_PROFILE vec4(1.0, 1.0 / 2.2e3, 0.0, 0.0)
#define MIE_ABSORPTION_BASE 4.4e-7
#define MIE_ANISOTROPY_FACTOR 0.8

#define OZONE_ABSORPTION vec3(0.650e-6, 1.881e-6, 0.085e-6)
#define OZONE_DENSITY_PROFILE vec4(0.0, 0.0, -25.0, 15.0)

#define EARTH_ALBEDO vec3(0.2)

#define AERIAL_PERSPECTIVE_SCALE 35.0

#define ATMOSPHERE_TRANSMITTANCE_SAMPLES 40
#define ATMOSPHERE_RAYMARCH_SAMPLES 20
#define ATMOSPHERE_MS_SAMPLES ivec2(8, 20)

#define ENABLE_DISTANT_FOG yes

// ========<  END  >======== //

#endif // _SETTINGS_GLSL
