cmake_minimum_required(VERSION 3.5)
project(SCLib)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.cpp main.def)
add_library(SCLib SHARED ${SOURCE_FILES})
add_definitions(-DHAVE_STDINT_H -D__need_size_t -DLINUX)