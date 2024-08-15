# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.25.3)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(simple-sentencepiece-populate NONE)



include(ExternalProject)
ExternalProject_Add(simple-sentencepiece-populate
                     "UPDATE_DISCONNECTED" "False" "DOWNLOAD_EXTRACT_TIMESTAMP" "FALSE" "URL" "https://github.com/pkufool/simple-sentencepiece/archive/refs/tags/v0.7.tar.gz" "https://hub.nuaa.cf/pkufool/simple-sentencepiece/archive/refs/tags/v0.7.tar.gz" "URL_HASH" "SHA256=1748a822060a35baa9f6609f84efc8eb54dc0e74b9ece3d82367b7119fdc75af"
                    SOURCE_DIR          "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/simple-sentencepiece-src"
                    BINARY_DIR          "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/simple-sentencepiece-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
                    USES_TERMINAL_PATCH     YES
)


