# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.5.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.5.0/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Jinhong/mydots/.tmux/vendor/tmux-mem-cpu-load

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Jinhong/mydots/.tmux/vendor/tmux-mem-cpu-load

# Utility rule file for ExperimentalMemCheck.

# Include the progress variables for this target.
include CMakeFiles/ExperimentalMemCheck.dir/progress.make

CMakeFiles/ExperimentalMemCheck:
	/usr/local/Cellar/cmake/3.5.0/bin/ctest -D ExperimentalMemCheck

ExperimentalMemCheck: CMakeFiles/ExperimentalMemCheck
ExperimentalMemCheck: CMakeFiles/ExperimentalMemCheck.dir/build.make

.PHONY : ExperimentalMemCheck

# Rule to build all files generated by this target.
CMakeFiles/ExperimentalMemCheck.dir/build: ExperimentalMemCheck

.PHONY : CMakeFiles/ExperimentalMemCheck.dir/build

CMakeFiles/ExperimentalMemCheck.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ExperimentalMemCheck.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ExperimentalMemCheck.dir/clean

CMakeFiles/ExperimentalMemCheck.dir/depend:
	cd /Users/Jinhong/mydots/.tmux/vendor/tmux-mem-cpu-load && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Jinhong/mydots/.tmux/vendor/tmux-mem-cpu-load /Users/Jinhong/mydots/.tmux/vendor/tmux-mem-cpu-load /Users/Jinhong/mydots/.tmux/vendor/tmux-mem-cpu-load /Users/Jinhong/mydots/.tmux/vendor/tmux-mem-cpu-load /Users/Jinhong/mydots/.tmux/vendor/tmux-mem-cpu-load/CMakeFiles/ExperimentalMemCheck.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ExperimentalMemCheck.dir/depend

