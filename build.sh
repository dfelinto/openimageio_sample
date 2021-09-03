#!/bin/bash

LIBS="/home/dfelinto/src/blender/lib/linux_x86_64"

OIIO_LIB="$LIBS/openimageio/lib"
OIIO_INCLUDE="$LIBS/openimageio/include"
OPENEXR_LIB="$LIBS/openexr/lib"
OPENEXR_INCLUDE="$LIBS/openexr/include"
OPENJPEG_LIB="$LIBS/openjpeg/lib"
JPEG_LIB="$LIBS/jpeg/lib"
ZLIB_LIB="$LIBS/zlib/lib"
XML2_LIB="$LIBS/xml2/lib"
PUGIXML_LIB="$LIBS/pugixml/lib"
PNG_LIB="$LIBS/png/lib"
TIFF_LIB="$LIBS/tiff/lib"
BOOST_LIB="$LIBS/boost/lib"

g++ \
	-pthread \
	-I "$OPENEXR_INCLUDE" \
	-I "$OIIO_INCLUDE" \
	-L "$OIIO_LIB" \
	-L "$OPENEXR_LIB" \
	-L "$OPENJPEG_LIB" \
	-L "$JPEG_LIB" \
	-L "$ZLIB_LIB" \
	-L "$PUGIXML_LIB" \
	-L "$PNG_LIB" \
	-L "$TIFF_LIB" \
	-L "$BOOST_LIB" \
	main.cpp \
	-l:libOpenImageIO.a \
	-l:libOpenImageIO_Util.a \
	-l:libIexMath.a \
	-l:libIlmImfUtil.a \
	-l:libImath.a \
	-l:libHalf.a \
	-l:libIlmImf.a \
	-l:libIlmThread.a \
	-l:libIex.a \
	-l:libopenjp2.a \
	-l:libjpeg.a \
	-l:libpng.a \
	-l:libtiff.a \
	-l:libpugixml.a \
	-l:libboost_atomic.a \
	-l:libboost_chrono.a \
	-l:libboost_date_time.a \
	-l:libboost_filesystem.a \
	-l:libboost_iostreams.a \
	-l:libboost_locale.a \
	-l:libboost_program_options.a \
	-l:libboost_regex.a \
	-l:libboost_serialization.a \
	-l:libboost_system.a \
	-l:libboost_thread.a \
	-l:libboost_wave.a \
	-l:libboost_wserialization.a \
	-l:libz.a \
	-ldl \
	-o main
