// unfinished
float rainHeightNoise(in vec2 uv) {
    float size = 0.2;
    float noise = smoothstep(0.5, 0.7, 1.0 - cellular2x2(uv * 10.0).x);
    noise = fract(noise + (fmn_time));
    float r = (smoothstep(sin(0.2 + fmn_time), sin(0.4 + fmn_time), noise) - smoothstep(sin(0.6 + fmn_time), sin(0.4 + fmn_time), noise)) * 0.15;
    r = smoothstep(0.2, 0.4, noise) - smoothstep(0.4, 0.6, noise);
    return r * 0.15;
}
