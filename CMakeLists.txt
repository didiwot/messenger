cmake_minimum_required (VERSION 3.7)
project (messenger VERSION 0.01 LANGUAGES CXX)

get_directory_property(IS_SUBPROJECT PARENT_DIRECTORY)

SET(Boost_INCLUDE_DIR /home/didiwot/doc_libs/boost_1_82_0/boost)
SET(Boost_LIBRARIES /home/didiwot/doc_libs/boost_1_82_0/libs)

find_package()( Boost COMPONENTS program_options REQUIRED )
include_directories( ${Boost_INCLUDE_DIR} )

add_executable( messenger client.cpp)
add_executable(messenger server.cpp)

target_link_libraries( messenger LINK_PUBLIC ${Boost_LIBRARIES} )