# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

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
CMAKE_COMMAND = /opt/cmake-3.11.0-rc1-Linux-x86_64/bin/cmake

# The command to remove a file.
RM = /opt/cmake-3.11.0-rc1-Linux-x86_64/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dev/git/bitgrinder_v2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dev/git/bitgrinder_v2/build

# Include any dependencies generated for this target.
include src/testing/CMakeFiles/testing.dir/depend.make

# Include the progress variables for this target.
include src/testing/CMakeFiles/testing.dir/progress.make

# Include the compile flags for this target's objects.
include src/testing/CMakeFiles/testing.dir/flags.make

src/testing/CMakeFiles/testing.dir/testing.cpp.o: src/testing/CMakeFiles/testing.dir/flags.make
src/testing/CMakeFiles/testing.dir/testing.cpp.o: ../src/testing/testing.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dev/git/bitgrinder_v2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/testing/CMakeFiles/testing.dir/testing.cpp.o"
	cd /home/dev/git/bitgrinder_v2/build/src/testing && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testing.dir/testing.cpp.o -c /home/dev/git/bitgrinder_v2/src/testing/testing.cpp

src/testing/CMakeFiles/testing.dir/testing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testing.dir/testing.cpp.i"
	cd /home/dev/git/bitgrinder_v2/build/src/testing && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dev/git/bitgrinder_v2/src/testing/testing.cpp > CMakeFiles/testing.dir/testing.cpp.i

src/testing/CMakeFiles/testing.dir/testing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testing.dir/testing.cpp.s"
	cd /home/dev/git/bitgrinder_v2/build/src/testing && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dev/git/bitgrinder_v2/src/testing/testing.cpp -o CMakeFiles/testing.dir/testing.cpp.s

# Object files for target testing
testing_OBJECTS = \
"CMakeFiles/testing.dir/testing.cpp.o"

# External object files for target testing
testing_EXTERNAL_OBJECTS =

src/testing/testing: src/testing/CMakeFiles/testing.dir/testing.cpp.o
src/testing/testing: src/testing/CMakeFiles/testing.dir/build.make
src/testing/testing: src/testing/CMakeFiles/testing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dev/git/bitgrinder_v2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testing"
	cd /home/dev/git/bitgrinder_v2/build/src/testing && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/testing/CMakeFiles/testing.dir/build: src/testing/testing

.PHONY : src/testing/CMakeFiles/testing.dir/build

src/testing/CMakeFiles/testing.dir/clean:
	cd /home/dev/git/bitgrinder_v2/build/src/testing && $(CMAKE_COMMAND) -P CMakeFiles/testing.dir/cmake_clean.cmake
.PHONY : src/testing/CMakeFiles/testing.dir/clean

src/testing/CMakeFiles/testing.dir/depend:
	cd /home/dev/git/bitgrinder_v2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dev/git/bitgrinder_v2 /home/dev/git/bitgrinder_v2/src/testing /home/dev/git/bitgrinder_v2/build /home/dev/git/bitgrinder_v2/build/src/testing /home/dev/git/bitgrinder_v2/build/src/testing/CMakeFiles/testing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/testing/CMakeFiles/testing.dir/depend

