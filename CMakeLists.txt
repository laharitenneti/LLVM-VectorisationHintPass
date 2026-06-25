cmake_minimum_required(VERSION 3.15)
project(MyVectorPass)

find_package(LLVM REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

include_directories(${LLVM_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})
separate_arguments(LLVM_DEFINITIONS_LIST NATIVE_COMMAND "${LLVM_DEFINITIONS}")
add_definitions(${LLVM_DEFINITIONS_LIST})

add_library(MyPass MODULE MyPass.cpp)

if(APPLE)
    target_link_options(MyPass PRIVATE "-undefined" "dynamic_lookup")
endif()

target_compile_features(MyPass PRIVATE cxx_std_17)
