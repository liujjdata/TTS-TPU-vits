# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.25.3)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(cppjieba-populate NONE)



include(ExternalProject)
ExternalProject_Add(cppjieba-populate
                     "UPDATE_DISCONNECTED" "False" "DOWNLOAD_EXTRACT_TIMESTAMP" "FALSE" "URL" "https://github.com/csukuangfj/cppjieba/archive/refs/tags/sherpa-onnx-2024-04-19.tar.gz" "https://hub.nuaa.cf/csukuangfj/cppjieba/archive/refs/tags/sherpa-onnx-2024-04-19.tar.gz" "URL_HASH" "SHA256=03e5264687f0efaef05487a07d49c3f4c0f743347bfbf825df4b30cc75ac5288"
                    SOURCE_DIR          "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-src"
                    BINARY_DIR          "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/cppjieba-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
                    USES_TERMINAL_PATCH     YES
)


