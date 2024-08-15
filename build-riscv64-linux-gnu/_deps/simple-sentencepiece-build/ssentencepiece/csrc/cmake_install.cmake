# Install script for directory: /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/simple-sentencepiece-src/ssentencepiece/csrc

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
  if(EXISTS "$ENV{DESTDIR}/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/install/libssentencepiece_core.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/install/libssentencepiece_core.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/install/libssentencepiece_core.so"
         RPATH "$ORIGIN")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/install/libssentencepiece_core.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/install" TYPE SHARED_LIBRARY FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib/libssentencepiece_core.so")
  if(EXISTS "$ENV{DESTDIR}/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/install/libssentencepiece_core.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/install/libssentencepiece_core.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/install/libssentencepiece_core.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/install/libssentencepiece_core.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

