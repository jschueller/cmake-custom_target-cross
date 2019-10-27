cmake_minimum_required (VERSION 2.8)

project (Bar)

set (FOOCompileTools_DIR ${CMAKE_CURRENT_SOURCE_DIR})
find_package (FOOCompileTools NO_MODULE REQUIRED)

message (STATUS "CMAKE_CROSSCOMPILING=${CMAKE_CROSSCOMPILING}")

if (TARGET fooConfigureMain)
  get_target_property(_CROSS fooConfigureMain CROSSCOMPILING_EMULATOR)
  message(STATUS "fooConfigureMain.CROSSCOMPILING_EMULATOR=${_CROSS}")
endif ()

add_custom_command(
      OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/main.cxx
      DEPENDS main.cxx.in fooConfigureMain
      COMMAND fooConfigureMain ${CMAKE_CURRENT_SOURCE_DIR}/main.cxx.in ${CMAKE_CURRENT_BINARY_DIR}/main.cxx
      )

add_executable (foo ${CMAKE_CURRENT_BINARY_DIR}/main.cxx)
