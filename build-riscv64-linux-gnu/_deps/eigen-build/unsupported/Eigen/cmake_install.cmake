# Install script for directory: /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE FILE FILES
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen/AdolcForward"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen/AlignedVector3"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen/ArpackSupport"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen/AutoDiff"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen/BVH"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen/EulerAngles"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen/FFT"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen/IterativeSolvers"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen/KroneckerProduct"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen/LevenbergMarquardt"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen/MatrixFunctions"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen/MoreVectorization"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen/MPRealSupport"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen/NonLinearOptimization"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen/NumericalDiff"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen/OpenGLSupport"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen/Polynomials"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen/Skyline"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen/SparseExtra"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen/SpecialFunctions"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen/Splines"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE DIRECTORY FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/unsupported/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-build/unsupported/Eigen/CXX11/cmake_install.cmake")

endif()

