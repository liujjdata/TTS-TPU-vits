# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /workspace/TTS_workspace/tts-deploy

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu

# Utility rule file for ContinuousConfigure.

# Include any custom commands dependencies for this target.
include _deps/openfst-build/CMakeFiles/ContinuousConfigure.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/openfst-build/CMakeFiles/ContinuousConfigure.dir/progress.make

_deps/openfst-build/CMakeFiles/ContinuousConfigure:
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/openfst-build && /usr/local/bin/ctest -D ContinuousConfigure

ContinuousConfigure: _deps/openfst-build/CMakeFiles/ContinuousConfigure
ContinuousConfigure: _deps/openfst-build/CMakeFiles/ContinuousConfigure.dir/build.make
.PHONY : ContinuousConfigure

# Rule to build all files generated by this target.
_deps/openfst-build/CMakeFiles/ContinuousConfigure.dir/build: ContinuousConfigure
.PHONY : _deps/openfst-build/CMakeFiles/ContinuousConfigure.dir/build

_deps/openfst-build/CMakeFiles/ContinuousConfigure.dir/clean:
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/openfst-build && $(CMAKE_COMMAND) -P CMakeFiles/ContinuousConfigure.dir/cmake_clean.cmake
.PHONY : _deps/openfst-build/CMakeFiles/ContinuousConfigure.dir/clean

_deps/openfst-build/CMakeFiles/ContinuousConfigure.dir/depend:
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspace/TTS_workspace/tts-deploy /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/openfst-src /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/openfst-build /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/openfst-build/CMakeFiles/ContinuousConfigure.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/openfst-build/CMakeFiles/ContinuousConfigure.dir/depend

