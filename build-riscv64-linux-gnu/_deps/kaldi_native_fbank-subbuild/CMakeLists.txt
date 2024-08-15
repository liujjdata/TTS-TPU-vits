# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.25.3)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(kaldi_native_fbank-populate NONE)



include(ExternalProject)
ExternalProject_Add(kaldi_native_fbank-populate
                     "UPDATE_DISCONNECTED" "False" "DOWNLOAD_EXTRACT_TIMESTAMP" "FALSE" "URL" "https://github.com/csukuangfj/kaldi-native-fbank/archive/refs/tags/v1.19.3.tar.gz" "https://hub.nuaa.cf/csukuangfj/kaldi-native-fbank/archive/refs/tags/v1.19.3.tar.gz" "URL_HASH" "SHA256=335fe1daf1b9bfb2a7b6bf03b64c4c4686c39077c57fb8058c02611981676638"
                    SOURCE_DIR          "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldi_native_fbank-src"
                    BINARY_DIR          "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldi_native_fbank-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
                    USES_TERMINAL_PATCH     YES
)


