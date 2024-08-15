# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.25.3)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(piper_phonemize-populate NONE)



include(ExternalProject)
ExternalProject_Add(piper_phonemize-populate
                     "UPDATE_DISCONNECTED" "False" "DOWNLOAD_EXTRACT_TIMESTAMP" "FALSE" "URL" "https://github.com/csukuangfj/piper-phonemize/archive/dc6b5f4441bffe521047086930b0fc12686acd56.zip" "https://hub.nuaa.cf/csukuangfj/piper-phonemize/archive/dc6b5f4441bffe521047086930b0fc12686acd56.zip" "URL_HASH" "SHA256=b9faa04204b1756fa455a962abb1f037041c040133d55be58d11f11ab9b3ce14"
                    SOURCE_DIR          "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/piper_phonemize-src"
                    BINARY_DIR          "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/piper_phonemize-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
                    USES_TERMINAL_PATCH     YES
)


