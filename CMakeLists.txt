cmake_minimum_required(VERSION 3.14)
project(mydatastructure)

set(CMAKE_CXX_STANDARD 14)

add_executable(mydatastructure main.cpp)

add_executable(dqueue dqueue.cpp)

add_executable(dstack dstack.cpp)
