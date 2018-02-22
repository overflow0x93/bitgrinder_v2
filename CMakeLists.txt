cmake_minimum_required(VERSION 3.2)
project(bitgrinder_v2 VERSION 0.1 LANGUAGES CXX)
# set(CMAKE_CXX_STANDARD 11)
include(GNUInstallDirs)


# Include Boost as an imported target
#find_package(Boost REQUIRED)
find_package(Boost)
IF (Boost_FOUND)
    #include_directories(${Boost_INCLUDE_DIR})
    add_library(boost INTERFACE IMPORTED)
    set_property(TARGET boost PROPERTY
            INTERFACE_INCLUDE_DIRECTORIES ${Boost_INCLUDE_DIR})
endif ()
IF (NOT Boost_FOUND)
    message(WARNING "Boost not found.")
endif ()

find_package(CURL)
if (NOT ${CURL_FOUND})
    message(WARNING "libcURL not found.")
endif ()
IF (CURL_FOUND)
    include_directories(${CURL_INCLUDE_DIR})
endif ()

# Some other library that we import that was also built using CMake
# and has an exported target.
# find_package(MyOtherLibrary REQUIRED)

# Targets that we develop here
enable_testing()
add_subdirectory(src/bitgrinder)
#add_subdirectory(app)

