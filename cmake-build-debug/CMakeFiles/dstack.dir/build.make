# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/suxiaolin/Dropbox/CLionProjects/mydatastructure

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/suxiaolin/Dropbox/CLionProjects/mydatastructure/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/dstack.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/dstack.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dstack.dir/flags.make

CMakeFiles/dstack.dir/dstack.cpp.o: CMakeFiles/dstack.dir/flags.make
CMakeFiles/dstack.dir/dstack.cpp.o: ../dstack.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/suxiaolin/Dropbox/CLionProjects/mydatastructure/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dstack.dir/dstack.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dstack.dir/dstack.cpp.o -c /Users/suxiaolin/Dropbox/CLionProjects/mydatastructure/dstack.cpp

CMakeFiles/dstack.dir/dstack.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dstack.dir/dstack.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/suxiaolin/Dropbox/CLionProjects/mydatastructure/dstack.cpp > CMakeFiles/dstack.dir/dstack.cpp.i

CMakeFiles/dstack.dir/dstack.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dstack.dir/dstack.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/suxiaolin/Dropbox/CLionProjects/mydatastructure/dstack.cpp -o CMakeFiles/dstack.dir/dstack.cpp.s

# Object files for target dstack
dstack_OBJECTS = \
"CMakeFiles/dstack.dir/dstack.cpp.o"

# External object files for target dstack
dstack_EXTERNAL_OBJECTS =

dstack: CMakeFiles/dstack.dir/dstack.cpp.o
dstack: CMakeFiles/dstack.dir/build.make
dstack: CMakeFiles/dstack.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/suxiaolin/Dropbox/CLionProjects/mydatastructure/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable dstack"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dstack.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dstack.dir/build: dstack

.PHONY : CMakeFiles/dstack.dir/build

CMakeFiles/dstack.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dstack.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dstack.dir/clean

CMakeFiles/dstack.dir/depend:
	cd /Users/suxiaolin/Dropbox/CLionProjects/mydatastructure/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/suxiaolin/Dropbox/CLionProjects/mydatastructure /Users/suxiaolin/Dropbox/CLionProjects/mydatastructure /Users/suxiaolin/Dropbox/CLionProjects/mydatastructure/cmake-build-debug /Users/suxiaolin/Dropbox/CLionProjects/mydatastructure/cmake-build-debug /Users/suxiaolin/Dropbox/CLionProjects/mydatastructure/cmake-build-debug/CMakeFiles/dstack.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dstack.dir/depend
