# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.25.3)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(onnxruntime-populate NONE)



include(ExternalProject)
ExternalProject_Add(onnxruntime-populate
                     "UPDATE_DISCONNECTED" "False" "DOWNLOAD_EXTRACT_TIMESTAMP" "FALSE" "URL" "https://github.com/csukuangfj/onnxruntime-libs/releases/download/v1.14.1/onnxruntime-linux-riscv64-glibc2_17-Release-1.14.1.zip" "https://hub.nuaa.cf/csukuangfj/onnxruntime-libs/releases/download/v1.14.1/onnxruntime-linux-riscv64-glibc2_17-Release-1.14.1.zip" "URL_HASH" "SHA256=c2cbc5af081ff82f46640befd85433811486daaf28e702163c6e4e75020fde81"
                    SOURCE_DIR          "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/onnxruntime-src"
                    BINARY_DIR          "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/onnxruntime-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
                    USES_TERMINAL_PATCH     YES
)


