# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/qlc/learning/OpenCV/Learning-OpenCV-3_examples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/qlc/learning/OpenCV/Learning-OpenCV-3_examples/build

# Include any dependencies generated for this target.
include CMakeFiles/example_04-04.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/example_04-04.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/example_04-04.dir/flags.make

CMakeFiles/example_04-04.dir/example_04-04.cpp.o: CMakeFiles/example_04-04.dir/flags.make
CMakeFiles/example_04-04.dir/example_04-04.cpp.o: ../example_04-04.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qlc/learning/OpenCV/Learning-OpenCV-3_examples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/example_04-04.dir/example_04-04.cpp.o"
	/usr/bin/x86_64-linux-gnu-g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_04-04.dir/example_04-04.cpp.o -c /home/qlc/learning/OpenCV/Learning-OpenCV-3_examples/example_04-04.cpp

CMakeFiles/example_04-04.dir/example_04-04.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_04-04.dir/example_04-04.cpp.i"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qlc/learning/OpenCV/Learning-OpenCV-3_examples/example_04-04.cpp > CMakeFiles/example_04-04.dir/example_04-04.cpp.i

CMakeFiles/example_04-04.dir/example_04-04.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_04-04.dir/example_04-04.cpp.s"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qlc/learning/OpenCV/Learning-OpenCV-3_examples/example_04-04.cpp -o CMakeFiles/example_04-04.dir/example_04-04.cpp.s

CMakeFiles/example_04-04.dir/example_04-04.cpp.o.requires:

.PHONY : CMakeFiles/example_04-04.dir/example_04-04.cpp.o.requires

CMakeFiles/example_04-04.dir/example_04-04.cpp.o.provides: CMakeFiles/example_04-04.dir/example_04-04.cpp.o.requires
	$(MAKE) -f CMakeFiles/example_04-04.dir/build.make CMakeFiles/example_04-04.dir/example_04-04.cpp.o.provides.build
.PHONY : CMakeFiles/example_04-04.dir/example_04-04.cpp.o.provides

CMakeFiles/example_04-04.dir/example_04-04.cpp.o.provides.build: CMakeFiles/example_04-04.dir/example_04-04.cpp.o


# Object files for target example_04-04
example_04__04_OBJECTS = \
"CMakeFiles/example_04-04.dir/example_04-04.cpp.o"

# External object files for target example_04-04
example_04__04_EXTERNAL_OBJECTS =

example_04-04: CMakeFiles/example_04-04.dir/example_04-04.cpp.o
example_04-04: CMakeFiles/example_04-04.dir/build.make
example_04-04: /usr/local/lib/libopencv_gapi.so.4.0.0
example_04-04: /usr/local/lib/libopencv_stitching.so.4.0.0
example_04-04: /usr/local/lib/libopencv_aruco.so.4.0.0
example_04-04: /usr/local/lib/libopencv_bgsegm.so.4.0.0
example_04-04: /usr/local/lib/libopencv_bioinspired.so.4.0.0
example_04-04: /usr/local/lib/libopencv_ccalib.so.4.0.0
example_04-04: /usr/local/lib/libopencv_dnn_objdetect.so.4.0.0
example_04-04: /usr/local/lib/libopencv_dpm.so.4.0.0
example_04-04: /usr/local/lib/libopencv_face.so.4.0.0
example_04-04: /usr/local/lib/libopencv_freetype.so.4.0.0
example_04-04: /usr/local/lib/libopencv_fuzzy.so.4.0.0
example_04-04: /usr/local/lib/libopencv_hdf.so.4.0.0
example_04-04: /usr/local/lib/libopencv_hfs.so.4.0.0
example_04-04: /usr/local/lib/libopencv_img_hash.so.4.0.0
example_04-04: /usr/local/lib/libopencv_line_descriptor.so.4.0.0
example_04-04: /usr/local/lib/libopencv_reg.so.4.0.0
example_04-04: /usr/local/lib/libopencv_rgbd.so.4.0.0
example_04-04: /usr/local/lib/libopencv_saliency.so.4.0.0
example_04-04: /usr/local/lib/libopencv_stereo.so.4.0.0
example_04-04: /usr/local/lib/libopencv_structured_light.so.4.0.0
example_04-04: /usr/local/lib/libopencv_superres.so.4.0.0
example_04-04: /usr/local/lib/libopencv_surface_matching.so.4.0.0
example_04-04: /usr/local/lib/libopencv_tracking.so.4.0.0
example_04-04: /usr/local/lib/libopencv_videostab.so.4.0.0
example_04-04: /usr/local/lib/libopencv_xfeatures2d.so.4.0.0
example_04-04: /usr/local/lib/libopencv_xobjdetect.so.4.0.0
example_04-04: /usr/local/lib/libopencv_xphoto.so.4.0.0
example_04-04: /usr/local/lib/libopencv_shape.so.4.0.0
example_04-04: /usr/local/lib/libopencv_phase_unwrapping.so.4.0.0
example_04-04: /usr/local/lib/libopencv_optflow.so.4.0.0
example_04-04: /usr/local/lib/libopencv_ximgproc.so.4.0.0
example_04-04: /usr/local/lib/libopencv_datasets.so.4.0.0
example_04-04: /usr/local/lib/libopencv_plot.so.4.0.0
example_04-04: /usr/local/lib/libopencv_text.so.4.0.0
example_04-04: /usr/local/lib/libopencv_dnn.so.4.0.0
example_04-04: /usr/local/lib/libopencv_ml.so.4.0.0
example_04-04: /usr/local/lib/libopencv_photo.so.4.0.0
example_04-04: /usr/local/lib/libopencv_video.so.4.0.0
example_04-04: /usr/local/lib/libopencv_objdetect.so.4.0.0
example_04-04: /usr/local/lib/libopencv_calib3d.so.4.0.0
example_04-04: /usr/local/lib/libopencv_features2d.so.4.0.0
example_04-04: /usr/local/lib/libopencv_flann.so.4.0.0
example_04-04: /usr/local/lib/libopencv_highgui.so.4.0.0
example_04-04: /usr/local/lib/libopencv_videoio.so.4.0.0
example_04-04: /usr/local/lib/libopencv_imgcodecs.so.4.0.0
example_04-04: /usr/local/lib/libopencv_imgproc.so.4.0.0
example_04-04: /usr/local/lib/libopencv_core.so.4.0.0
example_04-04: CMakeFiles/example_04-04.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/qlc/learning/OpenCV/Learning-OpenCV-3_examples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable example_04-04"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_04-04.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/example_04-04.dir/build: example_04-04

.PHONY : CMakeFiles/example_04-04.dir/build

CMakeFiles/example_04-04.dir/requires: CMakeFiles/example_04-04.dir/example_04-04.cpp.o.requires

.PHONY : CMakeFiles/example_04-04.dir/requires

CMakeFiles/example_04-04.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/example_04-04.dir/cmake_clean.cmake
.PHONY : CMakeFiles/example_04-04.dir/clean

CMakeFiles/example_04-04.dir/depend:
	cd /home/qlc/learning/OpenCV/Learning-OpenCV-3_examples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/qlc/learning/OpenCV/Learning-OpenCV-3_examples /home/qlc/learning/OpenCV/Learning-OpenCV-3_examples /home/qlc/learning/OpenCV/Learning-OpenCV-3_examples/build /home/qlc/learning/OpenCV/Learning-OpenCV-3_examples/build /home/qlc/learning/OpenCV/Learning-OpenCV-3_examples/build/CMakeFiles/example_04-04.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/example_04-04.dir/depend

