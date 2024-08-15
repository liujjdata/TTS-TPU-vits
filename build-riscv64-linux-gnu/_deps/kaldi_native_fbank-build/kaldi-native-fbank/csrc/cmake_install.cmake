# Install script for directory: /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldi_native_fbank-src/kaldi-native-fbank/csrc

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkaldi-native-fbank-core.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkaldi-native-fbank-core.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkaldi-native-fbank-core.so"
         RPATH "$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib/libkaldi-native-fbank-core.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkaldi-native-fbank-core.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkaldi-native-fbank-core.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkaldi-native-fbank-core.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkaldi-native-fbank-core.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/kaldi-native-fbank/csrc" TYPE FILE FILES
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldi_native_fbank-src/kaldi-native-fbank/csrc/feature-fbank.h"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldi_native_fbank-src/kaldi-native-fbank/csrc/feature-functions.h"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldi_native_fbank-src/kaldi-native-fbank/csrc/feature-mfcc.h"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldi_native_fbank-src/kaldi-native-fbank/csrc/feature-window.h"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldi_native_fbank-src/kaldi-native-fbank/csrc/kaldi-math.h"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldi_native_fbank-src/kaldi-native-fbank/csrc/log.h"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldi_native_fbank-src/kaldi-native-fbank/csrc/mel-computations.h"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldi_native_fbank-src/kaldi-native-fbank/csrc/online-feature.h"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldi_native_fbank-src/kaldi-native-fbank/csrc/rfft.h"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldi_native_fbank-src/kaldi-native-fbank/csrc/whisper-feature.h"
    )
endif()

