#!/bin/bash

set -e

rm -rf build
mkdir build

conan install . --output-folder=build --build=missing -s build_type=Release

cd build
cmake .. -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake

cmake --build .