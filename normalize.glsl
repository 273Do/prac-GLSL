#ifdef GL_ES
precision mediump float;
#endif

uniform float u_time;
uniform vec2 u_resolution;

void main() {
  vec2 r = u_resolution;
  vec2 n = (gl_FragCoord.xy * 2.0 - r) / max(r.x, r.y);
  
  float length = 0.1 / length(n);
  
  gl_FragColor = vec4(vec3(length), 1.0);
}