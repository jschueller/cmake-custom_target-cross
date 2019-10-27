set (CMAKE_SYSTEM_NAME Linux)

# specify the cross compiler
set (CMAKE_C_COMPILER gcc)
set (CMAKE_CXX_COMPILER g++)

# where is the target environment
set (CMAKE_FIND_ROOT_PATH /usr/foo)

# search for programs in the build host directories
set (CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
set (CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set (CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set (CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)


