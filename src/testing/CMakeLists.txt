set(CMAKE_CXX_STANDARD 11)

add_executable(testing
        testing.cpp
        include/testing.hpp
        include/system/json.hpp
        include/system/strtk.hpp
        include/system/systatus.hpp
        include/system/testing/catch.hpp)

add_executable(benchmark
        benchmark.cpp
        include/benchmark.hpp
        include/system/json.hpp
        include/system/strtk.hpp
        include/system/systatus.hpp
        include/system/testing/catch.hpp)

# Define the libraries this project depends upon
target_link_libraries(testing boost "-fopenmp -lpthread -lcurl -lcrypto")
target_link_libraries(benchmark boost "-fopenmp -lpthread -lcurl -lcrypto")

set_target_properties(testing
        PROPERTIES
        ARCHIVE_OUTPUT_DIRECTORY_DEBUG "${CMAKE_BINARY_DIR}/../bin/testing/debug/lib"
        ARCHIVE_OUTPUT_DIRECTORY_RELEASE "${CMAKE_BINARY_DIR}/../bin/testing/release/lib"
        ARCHIVE_OUTPUT_DIRECTORY_MinSizeRel "${CMAKE_BINARY_DIR}/../bin/testing/MinSizeRel/lib"
        ARCHIVE_OUTPUT_DIRECTORY_RelWithDebInfo "${CMAKE_BINARY_DIR}/../bin/testing/rRelWithDebInfo/lib"
        LIBRARY_OUTPUT_DIRECTORY_DEBUG "${CMAKE_BINARY_DIR}/../bin/testing/debug/lib"
        LIBRARY_OUTPUT_DIRECTORY_RELEASE "${CMAKE_BINARY_DIR}/../bin/testing/release/lib"
        LIBRARY_OUTPUT_DIRECTORY_MinSizeRel "${CMAKE_BINARY_DIR}/../bin/testing/MinSizeRel/lib"
        LIBRARY_OUTPUT_DIRECTORY_RelWithDebInfo "${CMAKE_BINARY_DIR}/../bin/testing/RelWithDebInfo/lib"
        RUNTIME_OUTPUT_DIRECTORY_DEBUG "${CMAKE_BINARY_DIR}/../bin/testing/debug"
        RUNTIME_OUTPUT_DIRECTORY_RELEASE "${CMAKE_BINARY_DIR}/../bin/testing/release"
        RUNTIME_OUTPUT_DIRECTORY_MinSizeRel "${CMAKE_BINARY_DIR}/../bin/testing/MinSizeRel"
        RUNTIME_OUTPUT_DIRECTORY_RelWithDebInfo "${CMAKE_BINARY_DIR}/../bin/testing/RelWithDebInfo"
        )

set_target_properties(benchmark
        PROPERTIES
        ARCHIVE_OUTPUT_DIRECTORY_DEBUG "${CMAKE_BINARY_DIR}/../bin/benchmark/debug/lib"
        ARCHIVE_OUTPUT_DIRECTORY_RELEASE "${CMAKE_BINARY_DIR}/../bin/benchmark/release/lib"
        ARCHIVE_OUTPUT_DIRECTORY_MinSizeRel "${CMAKE_BINARY_DIR}/../bin/benchmark/MinSizeRel/lib"
        ARCHIVE_OUTPUT_DIRECTORY_RelWithDebInfo "${CMAKE_BINARY_DIR}/../bin/benchmark/rRelWithDebInfo/lib"
        LIBRARY_OUTPUT_DIRECTORY_DEBUG "${CMAKE_BINARY_DIR}/../bin/benchmark/debug/lib"
        LIBRARY_OUTPUT_DIRECTORY_RELEASE "${CMAKE_BINARY_DIR}/../bin/benchmark/release/lib"
        LIBRARY_OUTPUT_DIRECTORY_MinSizeRel "${CMAKE_BINARY_DIR}/../bin/benchmark/MinSizeRel/lib"
        LIBRARY_OUTPUT_DIRECTORY_RelWithDebInfo "${CMAKE_BINARY_DIR}/../bin/benchmark/RelWithDebInfo/lib"
        RUNTIME_OUTPUT_DIRECTORY_DEBUG "${CMAKE_BINARY_DIR}/../bin/benchmark/debug"
        RUNTIME_OUTPUT_DIRECTORY_RELEASE "${CMAKE_BINARY_DIR}/../bin/benchmark/release"
        RUNTIME_OUTPUT_DIRECTORY_MinSizeRel "${CMAKE_BINARY_DIR}/../bin/benchmark/MinSizeRel"
        RUNTIME_OUTPUT_DIRECTORY_RelWithDebInfo "${CMAKE_BINARY_DIR}/../bin/benchmark/RelWithDebInfo"
        )
