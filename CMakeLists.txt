cmake_minimum_required(VERSION 3.7)
project(sampPluginScLib)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.cpp)
add_library(sampPluginScLib SHARED ${SOURCE_FILES})