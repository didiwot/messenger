# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/didiwot/projects/C++/messenger

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/didiwot/projects/C++/messenger/build

# Include any dependencies generated for this target.
include CMakeFiles/libserver.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/libserver.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/libserver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/libserver.dir/flags.make

CMakeFiles/libserver.dir/src/TcpServer.cpp.o: CMakeFiles/libserver.dir/flags.make
CMakeFiles/libserver.dir/src/TcpServer.cpp.o: ../src/TcpServer.cpp
CMakeFiles/libserver.dir/src/TcpServer.cpp.o: CMakeFiles/libserver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/didiwot/projects/C++/messenger/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/libserver.dir/src/TcpServer.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/libserver.dir/src/TcpServer.cpp.o -MF CMakeFiles/libserver.dir/src/TcpServer.cpp.o.d -o CMakeFiles/libserver.dir/src/TcpServer.cpp.o -c /home/didiwot/projects/C++/messenger/src/TcpServer.cpp

CMakeFiles/libserver.dir/src/TcpServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libserver.dir/src/TcpServer.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/didiwot/projects/C++/messenger/src/TcpServer.cpp > CMakeFiles/libserver.dir/src/TcpServer.cpp.i

CMakeFiles/libserver.dir/src/TcpServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libserver.dir/src/TcpServer.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/didiwot/projects/C++/messenger/src/TcpServer.cpp -o CMakeFiles/libserver.dir/src/TcpServer.cpp.s

# Object files for target libserver
libserver_OBJECTS = \
"CMakeFiles/libserver.dir/src/TcpServer.cpp.o"

# External object files for target libserver
libserver_EXTERNAL_OBJECTS =

liblibserver.a: CMakeFiles/libserver.dir/src/TcpServer.cpp.o
liblibserver.a: CMakeFiles/libserver.dir/build.make
liblibserver.a: CMakeFiles/libserver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/didiwot/projects/C++/messenger/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library liblibserver.a"
	$(CMAKE_COMMAND) -P CMakeFiles/libserver.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libserver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/libserver.dir/build: liblibserver.a
.PHONY : CMakeFiles/libserver.dir/build

CMakeFiles/libserver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/libserver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/libserver.dir/clean

CMakeFiles/libserver.dir/depend:
	cd /home/didiwot/projects/C++/messenger/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/didiwot/projects/C++/messenger /home/didiwot/projects/C++/messenger /home/didiwot/projects/C++/messenger/build /home/didiwot/projects/C++/messenger/build /home/didiwot/projects/C++/messenger/build/CMakeFiles/libserver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/libserver.dir/depend

