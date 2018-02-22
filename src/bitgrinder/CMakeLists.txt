# set(CMAKE_CXX_STANDARD 11)

add_executable(bitgrinder
        bitgrinder.cpp
        include/bitgrinder.hpp
        include/system/json.hpp
        include/system/strtk.hpp
        include/system/systatus.hpp
        include/system/testing/catch.hpp)

add_executable(btgtest
        system/testing/btgtest.cpp
        include/system/testing/btgtest.hpp)

# Define the libraries this project depends upon
target_link_libraries(bitgrinder boost "-fopenmp -lpthread -lcurl -lcrypto")
target_link_libraries(btgtest boost "-fopenmp -lpthread -lcurl -lcrypto")
# target_Link_Libraries(bitgrinder "-fopenmp -lcrypto -lcurl -lstdc++ -lpthread -lboost_program_options -lboost_filesystem -lboost_system -lboost_system")
# target_Link_Libraries(bitgrinderv2 "-fopenmp -lcrypto -lcurl -lstdc++ -lpthread -lboost_program_options -lboost_filesystem -lboost_system -lboost_system")
# target_Link_Libraries(console "-lcrypto -lcurl -lstdc++ -lpthread -lboost_program_options -lboost_filesystem -lboost_system -lboost_system")

set_target_properties(btgtest
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

set_target_properties(bitgrinder
        PROPERTIES
        ARCHIVE_OUTPUT_DIRECTORY_DEBUG "${CMAKE_BINARY_DIR}/../bin/bitgrinder/debug/lib"
        ARCHIVE_OUTPUT_DIRECTORY_RELEASE "${CMAKE_BINARY_DIR}/../bin/bitgrinder/release/lib"
        ARCHIVE_OUTPUT_DIRECTORY_MinSizeRel "${CMAKE_BINARY_DIR}/../bin/bitgrinder/MinSizeRel/lib"
        ARCHIVE_OUTPUT_DIRECTORY_RelWithDebInfo "${CMAKE_BINARY_DIR}/../bin/bitgrinder/rRelWithDebInfo/lib"
        LIBRARY_OUTPUT_DIRECTORY_DEBUG "${CMAKE_BINARY_DIR}/../bin/bitgrinder/debug/lib"
        LIBRARY_OUTPUT_DIRECTORY_RELEASE "${CMAKE_BINARY_DIR}/../bin/bitgrinder/release/lib"
        LIBRARY_OUTPUT_DIRECTORY_MinSizeRel "${CMAKE_BINARY_DIR}/../bin/bitgrinder/MinSizeRel/lib"
        LIBRARY_OUTPUT_DIRECTORY_RelWithDebInfo "${CMAKE_BINARY_DIR}/../bin/bitgrinder/RelWithDebInfo/lib"
        RUNTIME_OUTPUT_DIRECTORY_DEBUG "${CMAKE_BINARY_DIR}/../bin/bitgrinder/debug"
        RUNTIME_OUTPUT_DIRECTORY_RELEASE "${CMAKE_BINARY_DIR}/../bin/bitgrinder/release"
        RUNTIME_OUTPUT_DIRECTORY_MinSizeRel "${CMAKE_BINARY_DIR}/../bin/bitgrinder/MinSizeRel"
        RUNTIME_OUTPUT_DIRECTORY_RelWithDebInfo "${CMAKE_BINARY_DIR}/../bin/bitgrinder/RelWithDebInfo"
        )