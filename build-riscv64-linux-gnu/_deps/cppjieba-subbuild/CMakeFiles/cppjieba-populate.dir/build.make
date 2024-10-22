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
CMAKE_SOURCE_DIR = /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild

# Utility rule file for cppjieba-populate.

# Include any custom commands dependencies for this target.
include CMakeFiles/cppjieba-populate.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cppjieba-populate.dir/progress.make

CMakeFiles/cppjieba-populate: CMakeFiles/cppjieba-populate-complete

CMakeFiles/cppjieba-populate-complete: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-install
CMakeFiles/cppjieba-populate-complete: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-mkdir
CMakeFiles/cppjieba-populate-complete: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-download
CMakeFiles/cppjieba-populate-complete: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-update
CMakeFiles/cppjieba-populate-complete: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-patch
CMakeFiles/cppjieba-populate-complete: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-configure
CMakeFiles/cppjieba-populate-complete: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-build
CMakeFiles/cppjieba-populate-complete: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-install
CMakeFiles/cppjieba-populate-complete: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'cppjieba-populate'"
	/usr/local/bin/cmake -E make_directory /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/CMakeFiles
	/usr/local/bin/cmake -E touch /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/CMakeFiles/cppjieba-populate-complete
	/usr/local/bin/cmake -E touch /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-done

cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-build: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No build step for 'cppjieba-populate'"
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-build && /usr/local/bin/cmake -E echo_append
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-build && /usr/local/bin/cmake -E touch /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-build

cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-configure: cppjieba-populate-prefix/tmp/cppjieba-populate-cfgcmd.txt
cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-configure: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "No configure step for 'cppjieba-populate'"
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-build && /usr/local/bin/cmake -E echo_append
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-build && /usr/local/bin/cmake -E touch /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-configure

cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-download: cppjieba-populate-prefix/src/cppjieba-populate-stamp/download-cppjieba-populate.cmake
cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-download: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-urlinfo.txt
cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-download: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (download, verify and extract) for 'cppjieba-populate'"
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps && /usr/local/bin/cmake -P /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/cppjieba-populate-prefix/src/cppjieba-populate-stamp/download-cppjieba-populate.cmake
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps && /usr/local/bin/cmake -P /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/cppjieba-populate-prefix/src/cppjieba-populate-stamp/verify-cppjieba-populate.cmake
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps && /usr/local/bin/cmake -P /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/cppjieba-populate-prefix/src/cppjieba-populate-stamp/extract-cppjieba-populate.cmake
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps && /usr/local/bin/cmake -E touch /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-download

cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-install: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'cppjieba-populate'"
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-build && /usr/local/bin/cmake -E echo_append
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-build && /usr/local/bin/cmake -E touch /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-install

cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'cppjieba-populate'"
	/usr/local/bin/cmake -Dcfgdir= -P /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/cppjieba-populate-prefix/tmp/cppjieba-populate-mkdirs.cmake
	/usr/local/bin/cmake -E touch /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-mkdir

cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-patch: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'cppjieba-populate'"
	/usr/local/bin/cmake -E echo_append
	/usr/local/bin/cmake -E touch /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-patch

cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-test: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No test step for 'cppjieba-populate'"
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-build && /usr/local/bin/cmake -E echo_append
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-build && /usr/local/bin/cmake -E touch /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-test

cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-update: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "No update step for 'cppjieba-populate'"
	/usr/local/bin/cmake -E echo_append
	/usr/local/bin/cmake -E touch /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-update

cppjieba-populate: CMakeFiles/cppjieba-populate
cppjieba-populate: CMakeFiles/cppjieba-populate-complete
cppjieba-populate: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-build
cppjieba-populate: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-configure
cppjieba-populate: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-download
cppjieba-populate: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-install
cppjieba-populate: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-mkdir
cppjieba-populate: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-patch
cppjieba-populate: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-test
cppjieba-populate: cppjieba-populate-prefix/src/cppjieba-populate-stamp/cppjieba-populate-update
cppjieba-populate: CMakeFiles/cppjieba-populate.dir/build.make
.PHONY : cppjieba-populate

# Rule to build all files generated by this target.
CMakeFiles/cppjieba-populate.dir/build: cppjieba-populate
.PHONY : CMakeFiles/cppjieba-populate.dir/build

CMakeFiles/cppjieba-populate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cppjieba-populate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cppjieba-populate.dir/clean

CMakeFiles/cppjieba-populate.dir/depend:
	cd /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-subbuild/CMakeFiles/cppjieba-populate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cppjieba-populate.dir/depend

