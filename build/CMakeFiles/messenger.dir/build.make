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
include CMakeFiles/messenger.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/messenger.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/messenger.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/messenger.dir/flags.make

CMakeFiles/messenger.dir/client.cpp.o: CMakeFiles/messenger.dir/flags.make
CMakeFiles/messenger.dir/client.cpp.o: ../client.cpp
CMakeFiles/messenger.dir/client.cpp.o: CMakeFiles/messenger.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/didiwot/projects/C++/messenger/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/messenger.dir/client.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/messenger.dir/client.cpp.o -MF CMakeFiles/messenger.dir/client.cpp.o.d -o CMakeFiles/messenger.dir/client.cpp.o -c /home/didiwot/projects/C++/messenger/client.cpp

CMakeFiles/messenger.dir/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/messenger.dir/client.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/didiwot/projects/C++/messenger/client.cpp > CMakeFiles/messenger.dir/client.cpp.i

CMakeFiles/messenger.dir/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/messenger.dir/client.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/didiwot/projects/C++/messenger/client.cpp -o CMakeFiles/messenger.dir/client.cpp.s

# Object files for target messenger
messenger_OBJECTS = \
"CMakeFiles/messenger.dir/client.cpp.o"

# External object files for target messenger
messenger_EXTERNAL_OBJECTS =

messenger: CMakeFiles/messenger.dir/client.cpp.o
messenger: CMakeFiles/messenger.dir/build.make
messenger: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.74.0
messenger: CMakeFiles/messenger.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/didiwot/projects/C++/messenger/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable messenger"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/messenger.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/messenger.dir/build: messenger
.PHONY : CMakeFiles/messenger.dir/build

CMakeFiles/messenger.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/messenger.dir/cmake_clean.cmake
.PHONY : CMakeFiles/messenger.dir/clean

CMakeFiles/messenger.dir/depend:
	cd /home/didiwot/projects/C++/messenger/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/didiwot/projects/C++/messenger /home/didiwot/projects/C++/messenger /home/didiwot/projects/C++/messenger/build /home/didiwot/projects/C++/messenger/build /home/didiwot/projects/C++/messenger/build/CMakeFiles/messenger.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/messenger.dir/depend

