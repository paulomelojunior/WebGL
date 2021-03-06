
/*
Copyright (c) 2019 The Khronos Group Inc.
Use of this source code is governed by an MIT-style license that can be
found in the LICENSE.txt file.
*/


#ifdef GL_ES
precision mediump float;
#endif
varying vec4 color;

void main (void)
{
	// This test verifies that gl_MaxFragmentUniformVectors is set and that its
	// value is greater than or equal to the minimum value.
	// Values greater than 16.0 will get clamped to 1.0 or white.
	gl_FragColor = vec4(float(gl_MaxFragmentUniformVectors) / 16.0);
}
