#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform float u_time;

vec3 colorA = vec3(0.7765, 0.3569, 0.0157);
vec3 colorB = vec3(0.1294, 0.6745, 0.1686);

void main() {
  // 単色グラデーション
  // float a = gl_FragCoord.x / 512.0; // 0-1
  // float b = gl_FragCoord.y / 512.0; // 0-1
  
  // gl_FragColor = vec4(vec3(a * b), 1.0); // = vec4(vec3(a * b, a * b, a * b), 1.0)
  
  // 時間経過で色が変化するグラデーション
  float pct = abs(sin(u_time));
  vec3 color = mix(colorA, colorB, pct);
  
  gl_FragColor = vec4(color, 1.0);
}
