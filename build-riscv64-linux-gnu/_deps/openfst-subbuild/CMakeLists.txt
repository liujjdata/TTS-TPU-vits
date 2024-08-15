# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.25.3)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(openfst-populate NONE)



include(ExternalProject)
ExternalProject_Add(openfst-populate
                     "UPDATE_DISCONNECTED" "False" "DOWNLOAD_EXTRACT_TIMESTAMP" "FALSE" "URL" "https://github.com/csukuangfj/openfst/archive/refs/tags/sherpa-onnx-2024-06-13.tar.gz" "https://hub.nuaa.cf/csukuangfj/openfst/archive/refs/tags/sherpa-onnx-2024-06-13.tar.gz" "URL_HASH" "SHA256=f10a71c6b64d89eabdc316d372b956c30c825c7c298e2f20c780320e8181ffb6" "PATCH_COMMAND" "sed" "-i.bak" "s/enable_testing()//g" "src/CMakeLists.txt" "&&" "sed" "-i.bak" "s/add_subdirectory(test)//g" "src/CMakeLists.txt" "&&" "sed" "-i.bak" "/message/d" "src/script/CMakeLists.txt"
                    SOURCE_DIR          "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/openfst-src"
                    BINARY_DIR          "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/openfst-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
                    USES_TERMINAL_PATCH     YES
)


