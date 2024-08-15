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
include sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/compiler_depend.make

# Include the progress variables for this target.
include sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/progress.make

# Include the compile flags for this target's objects.
include sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/flags.make

sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/sherpa-onnx-alsa-offline-audio-tagging.cc.o: sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/flags.make
sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/sherpa-onnx-alsa-offline-audio-tagging.cc.o: /workspace/TTS_workspace/tts-deploy/sherpa-onnx/csrc/sherpa-onnx-alsa-offline-audio-tagging.cc
sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/sherpa-onnx-alsa-offline-audio-tagging.cc.o: sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/sherpa-onnx-alsa-offline-audio-tagging.cc.o"
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/sherpa-onnx/csrc && /workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/sherpa-onnx-alsa-offline-audio-tagging.cc.o -MF CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/sherpa-onnx-alsa-offline-audio-tagging.cc.o.d -o CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/sherpa-onnx-alsa-offline-audio-tagging.cc.o -c /workspace/TTS_workspace/tts-deploy/sherpa-onnx/csrc/sherpa-onnx-alsa-offline-audio-tagging.cc

sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/sherpa-onnx-alsa-offline-audio-tagging.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/sherpa-onnx-alsa-offline-audio-tagging.cc.i"
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/sherpa-onnx/csrc && /workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspace/TTS_workspace/tts-deploy/sherpa-onnx/csrc/sherpa-onnx-alsa-offline-audio-tagging.cc > CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/sherpa-onnx-alsa-offline-audio-tagging.cc.i

sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/sherpa-onnx-alsa-offline-audio-tagging.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/sherpa-onnx-alsa-offline-audio-tagging.cc.s"
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/sherpa-onnx/csrc && /workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspace/TTS_workspace/tts-deploy/sherpa-onnx/csrc/sherpa-onnx-alsa-offline-audio-tagging.cc -o CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/sherpa-onnx-alsa-offline-audio-tagging.cc.s

sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/alsa.cc.o: sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/flags.make
sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/alsa.cc.o: /workspace/TTS_workspace/tts-deploy/sherpa-onnx/csrc/alsa.cc
sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/alsa.cc.o: sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/alsa.cc.o"
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/sherpa-onnx/csrc && /workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/alsa.cc.o -MF CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/alsa.cc.o.d -o CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/alsa.cc.o -c /workspace/TTS_workspace/tts-deploy/sherpa-onnx/csrc/alsa.cc

sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/alsa.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/alsa.cc.i"
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/sherpa-onnx/csrc && /workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspace/TTS_workspace/tts-deploy/sherpa-onnx/csrc/alsa.cc > CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/alsa.cc.i

sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/alsa.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/alsa.cc.s"
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/sherpa-onnx/csrc && /workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspace/TTS_workspace/tts-deploy/sherpa-onnx/csrc/alsa.cc -o CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/alsa.cc.s

# Object files for target sherpa-onnx-alsa-offline-audio-tagging
sherpa__onnx__alsa__offline__audio__tagging_OBJECTS = \
"CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/sherpa-onnx-alsa-offline-audio-tagging.cc.o" \
"CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/alsa.cc.o"

# External object files for target sherpa-onnx-alsa-offline-audio-tagging
sherpa__onnx__alsa__offline__audio__tagging_EXTERNAL_OBJECTS =

bin/sherpa-onnx-alsa-offline-audio-tagging: sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/sherpa-onnx-alsa-offline-audio-tagging.cc.o
bin/sherpa-onnx-alsa-offline-audio-tagging: sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/alsa.cc.o
bin/sherpa-onnx-alsa-offline-audio-tagging: sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/build.make
bin/sherpa-onnx-alsa-offline-audio-tagging: lib/libsherpa-onnx-core.so
bin/sherpa-onnx-alsa-offline-audio-tagging: lib/libkaldi-native-fbank-core.so
bin/sherpa-onnx-alsa-offline-audio-tagging: lib/libkaldi-decoder-core.so
bin/sherpa-onnx-alsa-offline-audio-tagging: lib/libsherpa-onnx-kaldifst-core.so
bin/sherpa-onnx-alsa-offline-audio-tagging: lib/libssentencepiece_core.so
bin/sherpa-onnx-alsa-offline-audio-tagging: lib/libpiper_phonemize.so.1.2.0
bin/sherpa-onnx-alsa-offline-audio-tagging: _deps/onnxruntime-src/lib/libonnxruntime.so
bin/sherpa-onnx-alsa-offline-audio-tagging: lib/libespeak-ng.so
bin/sherpa-onnx-alsa-offline-audio-tagging: lib/libucd.so
bin/sherpa-onnx-alsa-offline-audio-tagging: lib/libsherpa-onnx-fstfar.so
bin/sherpa-onnx-alsa-offline-audio-tagging: lib/libsherpa-onnx-fst.so
bin/sherpa-onnx-alsa-offline-audio-tagging: sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../bin/sherpa-onnx-alsa-offline-audio-tagging"
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/sherpa-onnx/csrc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/build: bin/sherpa-onnx-alsa-offline-audio-tagging
.PHONY : sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/build

sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/clean:
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/sherpa-onnx/csrc && $(CMAKE_COMMAND) -P CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/cmake_clean.cmake
.PHONY : sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/clean

sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/depend:
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspace/TTS_workspace/tts-deploy /workspace/TTS_workspace/tts-deploy/sherpa-onnx/csrc /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/sherpa-onnx/csrc /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sherpa-onnx/csrc/CMakeFiles/sherpa-onnx-alsa-offline-audio-tagging.dir/depend

