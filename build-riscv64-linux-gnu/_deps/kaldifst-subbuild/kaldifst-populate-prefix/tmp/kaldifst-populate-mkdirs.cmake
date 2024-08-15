# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldifst-src"
  "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldifst-build"
  "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldifst-subbuild/kaldifst-populate-prefix"
  "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldifst-subbuild/kaldifst-populate-prefix/tmp"
  "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldifst-subbuild/kaldifst-populate-prefix/src/kaldifst-populate-stamp"
  "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldifst-subbuild/kaldifst-populate-prefix/src"
  "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldifst-subbuild/kaldifst-populate-prefix/src/kaldifst-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldifst-subbuild/kaldifst-populate-prefix/src/kaldifst-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldifst-subbuild/kaldifst-populate-prefix/src/kaldifst-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
