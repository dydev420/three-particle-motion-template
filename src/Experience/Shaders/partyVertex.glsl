uniform float uTime;
uniform float uSize;

// attribute float aScale;
// attribute vec3 aRandomness;

varying vec3 vColor;

void main () {
  vec4 modelPosition = modelMatrix * vec4(position, 1.0);
  vec4 viewPosition = viewMatrix * modelPosition;
  vec4 projectedPosition = projectionMatrix * viewPosition;
  gl_Position = projectedPosition;

  /**
  * Size
  */
  gl_PointSize = uSize;
  gl_PointSize *= (1.0 / - viewPosition.z);

 /**
  * Varying
  */
  vColor = color;
}