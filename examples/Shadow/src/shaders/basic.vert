// basic.vert

#define SHADER_NAME BASIC_VERTEX

precision highp float;
attribute vec3 aVertexPosition;
attribute vec2 aTextureCoord;
attribute vec3 aNormal;

uniform mat4 uModelMatrix;
uniform mat4 uViewMatrix;
uniform mat4 uProjectionMatrix;
uniform mat3 uNormalMatrix;

uniform vec3 position;

varying vec2 vTextureCoord;
varying vec3 vNormal;

void main(void) {
	vec3 pos = aVertexPosition + position;
    gl_Position = uProjectionMatrix * uViewMatrix * uModelMatrix * vec4(pos, 1.0);
    vTextureCoord = aTextureCoord;

    vNormal = normalize(uNormalMatrix * aNormal);
}