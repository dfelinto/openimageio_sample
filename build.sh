#!/bin/bash

LIBS="/home/dfelinto/src/blender/lib/linux_x86_64"

OIIO_LIB="$LIBS/openimageio/lib"
OIIO_INCLUDE="$LIBS/openimageio/include"
OPENEXR_LIB="$LIBS/openexr/lib"
OPENEXR_INCLUDE="$LIBS/openexr/include"
OPENJPEG_LIB="$LIBS/openjpeg/lib"
JPEG_LIB="$LIBS/jpeg/lib"

g++ \
	-pthread \
	-I "$OPENEXR_INCLUDE" \
	-I "$OIIO_INCLUDE" \
	-L "$OIIO_LIB" \
	-L "$OPENEXR_LIB" \
	-L "$OPENJPEG_LIB" \
	-L "$JPEG_LIB" \
	main.cpp \
	-l:libOpenImageIO.a \
	-l:libOpenImageIO_Util.a \
	-l:libHalf.a \
	-l:libIex.a \
	-l:libIexMath.a \
	-l:libIlmImf.a \
	-l:libIlmImfUtil.a \
	-l:libIlmThread.a \
	-l:libImath.a \
	-l:libopenjp2.a \
	-l:libjpeg.a \
	-o main
