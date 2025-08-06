#!/bin/sh
mkdir -p build
cd build
cmake .. -G Ninja -DDYNARMIC_ENABLE_TESTS=OFF -DDYNARMIC_ENABLE_CPU_FEATURE_DETECTION=OFF -DCMAKE_BUILD_TYPE=Debug
ninja
for i in `find . -name \*.a`; do mv $i .; done
