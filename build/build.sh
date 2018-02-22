#!/bin/bash

# Building
cmake ../ && make

# Testing
make test
ctest --output-on-failure

# Building to a different root directory
cmake -DCMAKE_INSTALL_PREFIX=/opt/mypackage ../src