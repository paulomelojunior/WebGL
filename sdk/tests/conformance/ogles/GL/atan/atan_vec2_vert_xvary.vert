
/*
Copyright (c) 2019 The Khronos Group Inc.
Use of this source code is governed by an MIT-style license that can be
found in the LICENSE.txt file.
*/


attribute vec4 gtf_Vertex;
attribute vec4 gtf_Color;
uniform mat4 gtf_ModelViewProjectionMatrix;
varying vec4 color;

void main (void)
{
	const float M_PI = 3.14159265358979323846;
	vec2 c = 4.0 * 2.0 * (gtf_Color.rg - 0.5);
	color = vec4(atan(c) / M_PI + 0.5, 0.0, 1.0);
	gl_Position = gtf_ModelViewProjectionMatrix * gtf_Vertex;
}
