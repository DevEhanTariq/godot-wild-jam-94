shader_type canvas_item;

uniform vec4 tint_color : source_color = vec4(0.0, 0.0, 0.0, 1.0);

void fragment() {
    vec4 tex = texture(TEXTURE, UV);

    float mask = tex.a;

    vec3 colored = tex.rgb * tint_color.rgb;

    COLOR = vec4(colored, mask);
}