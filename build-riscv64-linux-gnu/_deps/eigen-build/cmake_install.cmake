# Install script for directory: /workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3" TYPE FILE FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/signature_of_eigen3_matrix_library")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pkgconfig" TYPE FILE FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-build/eigen3.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3" TYPE DIRECTORY FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/Eigen")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/eigen3/cmake/Eigen3Targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/eigen3/cmake/Eigen3Targets.cmake"
         "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-build/CMakeFiles/Export/7133a8d9e99559a5f47e78feaceaec8e/Eigen3Targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/eigen3/cmake/Eigen3Targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/eigen3/cmake/Eigen3Targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/eigen3/cmake" TYPE FILE FILES "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-build/CMakeFiles/Export/7133a8d9e99559a5f47e78feaceaec8e/Eigen3Targets.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/eigen3/cmake" TYPE FILE FILES
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-src/cmake/UseEigen3.cmake"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-build/Eigen3Config.cmake"
    "/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-build/Eigen3ConfigVersion.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/workspace/TTS_workspace/tts-deploy/build-riscv64-linux-gnu/_deps/eigen-build/unsupported/cmake_install.cmake")

endif()

