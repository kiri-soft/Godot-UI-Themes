shader_type canvas_item;

uniform float fade_size : hint_range(0.0, 0.5) = 0.18;
uniform float opacity = 0.6;

void fragment() {
	vec4 col = COLOR;
	float left = smoothstep(0.0, fade_size, UV.x);
	float right = smoothstep(0.0, fade_size, 1.0 - UV.x);
	float fade = min(left, right);

	col.a *= fade * opacity;
	COLOR = col;
}
