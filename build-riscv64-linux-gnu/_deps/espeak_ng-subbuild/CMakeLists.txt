# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.25.3)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(espeak_ng-populate NONE)



include(ExternalProject)
ExternalProject_Add(espeak_ng-populate
                     "UPDATE_DISCONNECTED" "False" "DOWNLOAD_EXTRACT_TIMESTAMP" "FALSE" "URL" "https://github.com/csukuangfj/espeak-ng/archive/69bf6927964fb042aeb827cfdf6082a30f5802eb.zip" "https://hub.nuaa.cf/csukuangfj/espeak-ng/archive/69bf6927964fb042aeb827cfdf6082a30f5802eb.zip" "URL_HASH" "SHA256=745e35b21ece6804b4a1839722f9e625ac909380c8f85873ad71bf145877075a"
                    SOURCE_DIR          "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/espeak_ng-src"
                    BINARY_DIR          "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/espeak_ng-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
                    USES_TERMINAL_PATCH     YES
)


