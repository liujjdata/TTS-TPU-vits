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

# Include any dependencies generated for this target.
include _deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/flags.make

_deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.o: _deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/flags.make
_deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.o: _deps/eigen-src/bench/spbench/spbenchsolver.cpp
_deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.o: _deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.o"
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-build/bench/spbench && /workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.o -MF CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.o.d -o CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.o -c /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/bench/spbench/spbenchsolver.cpp

_deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.i"
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-build/bench/spbench && /workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/bench/spbench/spbenchsolver.cpp > CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.i

_deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.s"
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-build/bench/spbench && /workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/bench/spbench/spbenchsolver.cpp -o CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.s

# Object files for target spbenchsolver
spbenchsolver_OBJECTS = \
"CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.o"

# External object files for target spbenchsolver
spbenchsolver_EXTERNAL_OBJECTS =

bin/spbenchsolver: _deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.o
bin/spbenchsolver: _deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/build.make
bin/spbenchsolver: _deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../bin/spbenchsolver"
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-build/bench/spbench && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/spbenchsolver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/build: bin/spbenchsolver
.PHONY : _deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/build

_deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/clean:
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-build/bench/spbench && $(CMAKE_COMMAND) -P CMakeFiles/spbenchsolver.dir/cmake_clean.cmake
.PHONY : _deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/clean

_deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/depend:
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspace/TTS_workspace/tts-deploy /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/bench/spbench /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-build/bench/spbench /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/depend

