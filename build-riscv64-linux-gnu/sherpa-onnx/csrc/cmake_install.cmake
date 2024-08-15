# Install script for directory: /workspace/TTS_workspace/tts-deploy/sherpa-onnx/csrc

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-core.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-core.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-core.so"
         RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib/libsherpa-onnx-core.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-core.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-core.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-core.so"
         OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/onnxruntime-src/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib:"
         NEW_RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-core.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx"
         RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/bin/sherpa-onnx")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx"
         OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/onnxruntime-src/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib:"
         NEW_RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-keyword-spotter" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-keyword-spotter")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-keyword-spotter"
         RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/bin/sherpa-onnx-keyword-spotter")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-keyword-spotter" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-keyword-spotter")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-keyword-spotter"
         OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/onnxruntime-src/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib:"
         NEW_RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-keyword-spotter")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline"
         RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/bin/sherpa-onnx-offline")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline"
         OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/onnxruntime-src/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib:"
         NEW_RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-audio-tagging" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-audio-tagging")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-audio-tagging"
         RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/bin/sherpa-onnx-offline-audio-tagging")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-audio-tagging" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-audio-tagging")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-audio-tagging"
         OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/onnxruntime-src/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib:"
         NEW_RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-audio-tagging")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-language-identification" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-language-identification")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-language-identification"
         RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/bin/sherpa-onnx-offline-language-identification")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-language-identification" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-language-identification")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-language-identification"
         OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/onnxruntime-src/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib:"
         NEW_RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-language-identification")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-parallel" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-parallel")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-parallel"
         RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/bin/sherpa-onnx-offline-parallel")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-parallel" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-parallel")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-parallel"
         OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/onnxruntime-src/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib:"
         NEW_RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-parallel")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-punctuation" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-punctuation")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-punctuation"
         RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/bin/sherpa-onnx-offline-punctuation")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-punctuation" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-punctuation")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-punctuation"
         OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/onnxruntime-src/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib:"
         NEW_RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-punctuation")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-tts" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-tts")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-tts"
         RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/bin/sherpa-onnx-offline-tts")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-tts" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-tts")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-tts"
         OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/onnxruntime-src/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib:"
         NEW_RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-tts")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa"
         RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/bin/sherpa-onnx-alsa")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa"
         OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/onnxruntime-src/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib:"
         NEW_RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa-offline" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa-offline")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa-offline"
         RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/bin/sherpa-onnx-alsa-offline")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa-offline" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa-offline")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa-offline"
         OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/onnxruntime-src/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib:"
         NEW_RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa-offline")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa-offline-speaker-identification" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa-offline-speaker-identification")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa-offline-speaker-identification"
         RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/bin/sherpa-onnx-alsa-offline-speaker-identification")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa-offline-speaker-identification" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa-offline-speaker-identification")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa-offline-speaker-identification"
         OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/onnxruntime-src/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib:"
         NEW_RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa-offline-speaker-identification")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-keyword-spotter-alsa" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-keyword-spotter-alsa")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-keyword-spotter-alsa"
         RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/bin/sherpa-onnx-keyword-spotter-alsa")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-keyword-spotter-alsa" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-keyword-spotter-alsa")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-keyword-spotter-alsa"
         OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/onnxruntime-src/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib:"
         NEW_RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-keyword-spotter-alsa")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-vad-alsa" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-vad-alsa")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-vad-alsa"
         RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/bin/sherpa-onnx-vad-alsa")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-vad-alsa" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-vad-alsa")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-vad-alsa"
         OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/onnxruntime-src/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib:"
         NEW_RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-vad-alsa")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa-offline-audio-tagging" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa-offline-audio-tagging")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa-offline-audio-tagging"
         RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/bin/sherpa-onnx-alsa-offline-audio-tagging")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa-offline-audio-tagging" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa-offline-audio-tagging")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa-offline-audio-tagging"
         OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/onnxruntime-src/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib:"
         NEW_RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-alsa-offline-audio-tagging")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-tts-play-alsa" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-tts-play-alsa")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-tts-play-alsa"
         RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/bin/sherpa-onnx-offline-tts-play-alsa")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-tts-play-alsa" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-tts-play-alsa")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-tts-play-alsa"
         OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/onnxruntime-src/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib:"
         NEW_RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sherpa-onnx-offline-tts-play-alsa")
    endif()
  endif()
endif()

