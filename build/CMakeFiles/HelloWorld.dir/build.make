# CMAKE generated file: DO NOT EDIT!
# Generated by "MSYS Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /C/dev/msys64/mingw64/bin/cmake.exe

# The command to remove a file.
RM = /C/dev/msys64/mingw64/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /C/projects/HelloWorld/HelloWorld-src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /C/projects/HelloWorld/HelloWorld-src/build

# Include any dependencies generated for this target.
include CMakeFiles/HelloWorld.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/HelloWorld.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HelloWorld.dir/flags.make

CMakeFiles/HelloWorld.dir/src/Source.cpp.obj: CMakeFiles/HelloWorld.dir/flags.make
CMakeFiles/HelloWorld.dir/src/Source.cpp.obj: ../src/Source.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/C/projects/HelloWorld/HelloWorld-src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/HelloWorld.dir/src/Source.cpp.obj"
	/C/dev/msys64/mingw64/bin/g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HelloWorld.dir/src/Source.cpp.obj -c /C/projects/HelloWorld/HelloWorld-src/src/Source.cpp

CMakeFiles/HelloWorld.dir/src/Source.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HelloWorld.dir/src/Source.cpp.i"
	/C/dev/msys64/mingw64/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /C/projects/HelloWorld/HelloWorld-src/src/Source.cpp > CMakeFiles/HelloWorld.dir/src/Source.cpp.i

CMakeFiles/HelloWorld.dir/src/Source.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HelloWorld.dir/src/Source.cpp.s"
	/C/dev/msys64/mingw64/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /C/projects/HelloWorld/HelloWorld-src/src/Source.cpp -o CMakeFiles/HelloWorld.dir/src/Source.cpp.s

# Object files for target HelloWorld
HelloWorld_OBJECTS = \
"CMakeFiles/HelloWorld.dir/src/Source.cpp.obj"

# External object files for target HelloWorld
HelloWorld_EXTERNAL_OBJECTS =

C:/projects/HelloWorld/HelloWorld.exe: CMakeFiles/HelloWorld.dir/src/Source.cpp.obj
C:/projects/HelloWorld/HelloWorld.exe: CMakeFiles/HelloWorld.dir/build.make
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/C/projects/HelloWorld/HelloWorld-src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /C/projects/HelloWorld/HelloWorld.exe"
	/C/dev/msys64/mingw64/bin/cmake.exe -E remove -f CMakeFiles/HelloWorld.dir/objects.a
	/C/dev/msys64/mingw64/bin/ar.exe cr CMakeFiles/HelloWorld.dir/objects.a $(HelloWorld_OBJECTS) $(HelloWorld_EXTERNAL_OBJECTS)
	/C/dev/msys64/mingw64/bin/g++.exe -Ofast -fopenmp -pthread -flto -mtune=native -march=native -ftree-vectorize -mfpmath=both -fexcess-precision=fast -O3 -DNDEBUG   -Wl,--whole-archive CMakeFiles/HelloWorld.dir/objects.a -Wl,--no-whole-archive  -o /C/projects/HelloWorld/HelloWorld.exe -Wl,--major-image-version,0,--minor-image-version,0  -lkernel32 -luser32 -lgdi32 -lwinspool -lshell32 -lole32 -loleaut32 -luuid -lcomdlg32 -ladvapi32 

# Rule to build all files generated by this target.
CMakeFiles/HelloWorld.dir/build: C:/projects/HelloWorld/HelloWorld.exe

.PHONY : CMakeFiles/HelloWorld.dir/build

CMakeFiles/HelloWorld.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/HelloWorld.dir/cmake_clean.cmake
.PHONY : CMakeFiles/HelloWorld.dir/clean

CMakeFiles/HelloWorld.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MSYS Makefiles" /C/projects/HelloWorld/HelloWorld-src /C/projects/HelloWorld/HelloWorld-src /C/projects/HelloWorld/HelloWorld-src/build /C/projects/HelloWorld/HelloWorld-src/build /C/projects/HelloWorld/HelloWorld-src/build/CMakeFiles/HelloWorld.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/HelloWorld.dir/depend
