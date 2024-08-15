# Install script for directory: /workspace/TTS_workspace/tts-deploy

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkaldi-decoder-core.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkaldi-decoder-core.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkaldi-decoder-core.so"
         RPATH "$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib/libkaldi-decoder-core.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkaldi-decoder-core.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkaldi-decoder-core.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkaldi-decoder-core.so"
         OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib:"
         NEW_RPATH "$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkaldi-decoder-core.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-kaldifst-core.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-kaldifst-core.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-kaldifst-core.so"
         RPATH "$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib/libsherpa-onnx-kaldifst-core.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-kaldifst-core.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-kaldifst-core.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-kaldifst-core.so"
         OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib:"
         NEW_RPATH "$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-kaldifst-core.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-fst.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-fst.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-fst.so"
         RPATH "$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib/libsherpa-onnx-fst.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-fst.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-fst.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-fst.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-fst.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-fstfar.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-fstfar.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-fstfar.so"
         RPATH "$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib/libsherpa-onnx-fstfar.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-fstfar.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-fstfar.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-fstfar.so"
         OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib:"
         NEW_RPATH "$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsherpa-onnx-fstfar.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/onnxruntime-src/lib/libonnxruntime.so"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/onnxruntime-src/lib/libonnxruntime.so.1.14.1"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libssentencepiece_core.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libssentencepiece_core.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libssentencepiece_core.so"
         RPATH "$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib/libssentencepiece_core.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libssentencepiece_core.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libssentencepiece_core.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libssentencepiece_core.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libssentencepiece_core.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libespeak-ng.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libespeak-ng.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libespeak-ng.so"
         RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib/libespeak-ng.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libespeak-ng.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libespeak-ng.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libespeak-ng.so"
         OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib:"
         NEW_RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libespeak-ng.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libucd.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libucd.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libucd.so"
         RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib/libucd.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libucd.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libucd.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libucd.so"
         OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib:"
         NEW_RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libucd.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpiper_phonemize.so.1.2.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpiper_phonemize.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib/libpiper_phonemize.so.1.2.0"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib/libpiper_phonemize.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpiper_phonemize.so.1.2.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpiper_phonemize.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/onnxruntime-src/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib:"
           NEW_RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpiper_phonemize.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpiper_phonemize.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpiper_phonemize.so"
         RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib/libpiper_phonemize.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpiper_phonemize.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpiper_phonemize.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpiper_phonemize.so"
         OLD_RPATH "\$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/onnxruntime-src/lib:/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/lib:"
         NEW_RPATH "$ORIGIN:/workspace/TTS_workspace/cvitek_tpu_sdk/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/workspace/TTS_workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin/riscv64-unknown-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpiper_phonemize.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/sherpa-onnx.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/espeak_ng-build/cmake_install.cmake")
  include("/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/sherpa-onnx/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
