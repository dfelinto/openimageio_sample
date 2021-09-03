OpenImageIO Sampler
===================

I want to implement something for OpenImageIO. For that I first neeed a way to get
the basic running.


Notes:

Libraries that I had to install in Ubuntu 20.04.3 LTS to run `make deps` from Blender:
* libwayland-dev
* flex
* libxcb-randr0-dev
* libcurses-ocaml-dev

Patch to prevent audio depedencies to build:
```
diff --git a/build_files/build_environment/CMakeLists.txt b/build_files/build_environment/CMakeLists.txt
index af1653de59a..ed7121fb8cf 100644
--- a/build_files/build_environment/CMakeLists.txt
+++ b/build_files/build_environment/CMakeLists.txt
@@ -57,7 +57,7 @@ endif()
	 
	 include(cmake/zlib.cmake)
	 include(cmake/zstd.cmake)
	-include(cmake/openal.cmake)
	+#include(cmake/openal.cmake)
	 include(cmake/png.cmake)
	 include(cmake/jpeg.cmake)
	 include(cmake/blosc.cmake)
```
