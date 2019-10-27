
add_executable (fooConfigureMain IMPORTED)
set_target_properties(fooConfigureMain PROPERTIES IMPORTED_LOCATION "${CMAKE_CURRENT_SOURCE_DIR}/configure.py")
set_target_properties(fooConfigureMain PROPERTIES CROSSCOMPILING_EMULATOR "/usr/bin/python")
