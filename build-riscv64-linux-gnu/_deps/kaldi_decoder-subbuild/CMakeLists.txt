# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.25.3)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(kaldi_decoder-populate NONE)



include(ExternalProject)
ExternalProject_Add(kaldi_decoder-populate
                     "UPDATE_DISCONNECTED" "False" "DOWNLOAD_EXTRACT_TIMESTAMP" "FALSE" "URL" "https://github.com/k2-fsa/kaldi-decoder/archive/refs/tags/v0.2.6.tar.gz" "https://hub.nuaa.cf/k2-fsa/kaldi-decoder/archive/refs/tags/v0.2.6.tar.gz" "URL_HASH" "SHA256=b13c78b37495cafc6ef3f8a7b661b349c55a51abbd7f7f42f389408dcf86a463"
                    SOURCE_DIR          "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldi_decoder-src"
                    BINARY_DIR          "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/kaldi_decoder-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
                    USES_TERMINAL_PATCH     YES
)


