#!/bin/bash

# Building
cmake -DCMAKE_INSTALL_PREFIX=../bin ../ && make

# Testing
# make test
# ctest --output-on-failure

# Building to a different root directory
# cmake -DCMAKE_INSTALL_PREFIX=/opt/mypackage ../src
