#version 440 core
layout(location = 0) in vec3 attr_position;

layout(location = 0) uniform mat4 uniform_m;
layout(location = 1) uniform mat4 uniform_v;
layout(location = 2) uniform mat4 uniform_p;
void main()
{
    gl_Position = uniform_p * uniform_v * uniform_m * vec4(attr_position, 1.0f);
}