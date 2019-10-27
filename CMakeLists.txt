cmake_minimum_required (VERSION 2.8)

project (Bar)

add_executable (fooConfigureMain IMPORTED)
set_target_properties(fooConfigureMain PROPERTIES IMPORTED_LOCATION "${CMAKE_CURRENT_SOURCE_DIR}/configure.py")
set_target_properties(fooConfigureMain PROPERTIES CROSSCOMPILING_EMULATOR "/usr/bin/python")

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
