# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/kyleje/Desktop/CLionProjects/project-5 (not git)/project-5-git"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/kyleje/Desktop/CLionProjects/project-5 (not git)/project-5-git/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/project-2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/project-2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/project-2.dir/flags.make

CMakeFiles/project-2.dir/main.cpp.o: CMakeFiles/project-2.dir/flags.make
CMakeFiles/project-2.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/kyleje/Desktop/CLionProjects/project-5 (not git)/project-5-git/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/project-2.dir/main.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/project-2.dir/main.cpp.o -c "/Users/kyleje/Desktop/CLionProjects/project-5 (not git)/project-5-git/main.cpp"

CMakeFiles/project-2.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/project-2.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/kyleje/Desktop/CLionProjects/project-5 (not git)/project-5-git/main.cpp" > CMakeFiles/project-2.dir/main.cpp.i

CMakeFiles/project-2.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/project-2.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/kyleje/Desktop/CLionProjects/project-5 (not git)/project-5-git/main.cpp" -o CMakeFiles/project-2.dir/main.cpp.s

# Object files for target project-2
project__2_OBJECTS = \
"CMakeFiles/project-2.dir/main.cpp.o"

# External object files for target project-2
project__2_EXTERNAL_OBJECTS =

project-2: CMakeFiles/project-2.dir/main.cpp.o
project-2: CMakeFiles/project-2.dir/build.make
project-2: CMakeFiles/project-2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/kyleje/Desktop/CLionProjects/project-5 (not git)/project-5-git/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable project-2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/project-2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/project-2.dir/build: project-2

.PHONY : CMakeFiles/project-2.dir/build

CMakeFiles/project-2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/project-2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/project-2.dir/clean

CMakeFiles/project-2.dir/depend:
	cd "/Users/kyleje/Desktop/CLionProjects/project-5 (not git)/project-5-git/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/kyleje/Desktop/CLionProjects/project-5 (not git)/project-5-git" "/Users/kyleje/Desktop/CLionProjects/project-5 (not git)/project-5-git" "/Users/kyleje/Desktop/CLionProjects/project-5 (not git)/project-5-git/cmake-build-debug" "/Users/kyleje/Desktop/CLionProjects/project-5 (not git)/project-5-git/cmake-build-debug" "/Users/kyleje/Desktop/CLionProjects/project-5 (not git)/project-5-git/cmake-build-debug/CMakeFiles/project-2.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/project-2.dir/depend

