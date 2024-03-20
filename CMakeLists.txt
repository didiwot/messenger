cmake_minimum_required (VERSION 3.7)
project (messenger VERSION 0.01 LANGUAGES CXX)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -Wall")

get_directory_property(IS_SUBPROJECT PARENT_DIRECTORY)

SET(Boost_USE_STATIC_LIBS OFF)
SET(Boost_USE_MULTITHREAD ON)
FIND_PACKAGE(Boost 1.42.0 REQUIRED COMPONENTS system thread regex)
IF(Boost_FOUND)
  INCLUDE_DIRECTORIES(${Boost_INCLUDE_DIRS})
  LINK_DIRECTORIES(${Boost_LIBRARY_DIRS})
ENDIF(Boost_FOUND)

SET(USED_LIBS ${Boost_SYSTEM_LIBRARY} ${Boost_THREAD_LIBRARY} ${Boost_REGEX_LIBRARY})

add_library(libclient STATIC src/TcpClient.cpp src/headers/TcpClient.h)
add_library(libserver STATIC src/TcpServer.cpp src/headers/TcpServer.h)

add_executable(client src/client.cpp)
add_executable(server src/server.cpp) 

target_link_libraries(client LINK_PUBLIC ${USED_LIBS} )
target_link_libraries(server LINK_PUBLIC ${USED_LIBS} )

