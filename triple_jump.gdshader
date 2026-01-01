shader_type canvas_item;

uniform float speed = 0.3;       // animation speed
uniform float saturation = 1.0;  // color intensity
uniform float value = 1.0;       // brightness

vec3 hsv_to_rgb(vec3 c) {
    vec4 K = vec4(1.0, 2.0/3.0, 1.0/3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

void fragment() {
    vec4 text = texture(TEXTURE, UV);

    // Horizontal + animated rainbow
    float hue = fract(UV.x + TIME * speed);
    vec3 rainbow = hsv_to_rgb(vec3(hue, saturation, value));

    COLOR = vec4(rainbow, text.a);
}
