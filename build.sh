#!/bin/bash

# Building
# cmake ../ && make
cd build
cmake ../CMakeLists.txt

# Testing
# make test
# ctest --output-on-failure

# Building to a different root directory
# cmake -DCMAKE_INSTALL_PREFIX=/opt/mypackage ../src
