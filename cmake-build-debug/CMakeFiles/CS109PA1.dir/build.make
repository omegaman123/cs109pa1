# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/mark/Downloads/clion-2019.1/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/mark/Downloads/clion-2019.1/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mark/mac/Desktop/CMPS109/CS109PA1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mark/mac/Desktop/CMPS109/CS109PA1/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CS109PA1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CS109PA1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CS109PA1.dir/flags.make

CMakeFiles/CS109PA1.dir/bigint.cpp.o: CMakeFiles/CS109PA1.dir/flags.make
CMakeFiles/CS109PA1.dir/bigint.cpp.o: ../bigint.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mark/mac/Desktop/CMPS109/CS109PA1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CS109PA1.dir/bigint.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CS109PA1.dir/bigint.cpp.o -c /home/mark/mac/Desktop/CMPS109/CS109PA1/bigint.cpp

CMakeFiles/CS109PA1.dir/bigint.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CS109PA1.dir/bigint.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mark/mac/Desktop/CMPS109/CS109PA1/bigint.cpp > CMakeFiles/CS109PA1.dir/bigint.cpp.i

CMakeFiles/CS109PA1.dir/bigint.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CS109PA1.dir/bigint.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mark/mac/Desktop/CMPS109/CS109PA1/bigint.cpp -o CMakeFiles/CS109PA1.dir/bigint.cpp.s

CMakeFiles/CS109PA1.dir/debug.cpp.o: CMakeFiles/CS109PA1.dir/flags.make
CMakeFiles/CS109PA1.dir/debug.cpp.o: ../debug.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mark/mac/Desktop/CMPS109/CS109PA1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CS109PA1.dir/debug.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CS109PA1.dir/debug.cpp.o -c /home/mark/mac/Desktop/CMPS109/CS109PA1/debug.cpp

CMakeFiles/CS109PA1.dir/debug.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CS109PA1.dir/debug.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mark/mac/Desktop/CMPS109/CS109PA1/debug.cpp > CMakeFiles/CS109PA1.dir/debug.cpp.i

CMakeFiles/CS109PA1.dir/debug.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CS109PA1.dir/debug.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mark/mac/Desktop/CMPS109/CS109PA1/debug.cpp -o CMakeFiles/CS109PA1.dir/debug.cpp.s

CMakeFiles/CS109PA1.dir/libfns.cpp.o: CMakeFiles/CS109PA1.dir/flags.make
CMakeFiles/CS109PA1.dir/libfns.cpp.o: ../libfns.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mark/mac/Desktop/CMPS109/CS109PA1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/CS109PA1.dir/libfns.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CS109PA1.dir/libfns.cpp.o -c /home/mark/mac/Desktop/CMPS109/CS109PA1/libfns.cpp

CMakeFiles/CS109PA1.dir/libfns.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CS109PA1.dir/libfns.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mark/mac/Desktop/CMPS109/CS109PA1/libfns.cpp > CMakeFiles/CS109PA1.dir/libfns.cpp.i

CMakeFiles/CS109PA1.dir/libfns.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CS109PA1.dir/libfns.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mark/mac/Desktop/CMPS109/CS109PA1/libfns.cpp -o CMakeFiles/CS109PA1.dir/libfns.cpp.s

CMakeFiles/CS109PA1.dir/main.cpp.o: CMakeFiles/CS109PA1.dir/flags.make
CMakeFiles/CS109PA1.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mark/mac/Desktop/CMPS109/CS109PA1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/CS109PA1.dir/main.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CS109PA1.dir/main.cpp.o -c /home/mark/mac/Desktop/CMPS109/CS109PA1/main.cpp

CMakeFiles/CS109PA1.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CS109PA1.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mark/mac/Desktop/CMPS109/CS109PA1/main.cpp > CMakeFiles/CS109PA1.dir/main.cpp.i

CMakeFiles/CS109PA1.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CS109PA1.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mark/mac/Desktop/CMPS109/CS109PA1/main.cpp -o CMakeFiles/CS109PA1.dir/main.cpp.s

CMakeFiles/CS109PA1.dir/scanner.cpp.o: CMakeFiles/CS109PA1.dir/flags.make
CMakeFiles/CS109PA1.dir/scanner.cpp.o: ../scanner.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mark/mac/Desktop/CMPS109/CS109PA1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/CS109PA1.dir/scanner.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CS109PA1.dir/scanner.cpp.o -c /home/mark/mac/Desktop/CMPS109/CS109PA1/scanner.cpp

CMakeFiles/CS109PA1.dir/scanner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CS109PA1.dir/scanner.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mark/mac/Desktop/CMPS109/CS109PA1/scanner.cpp > CMakeFiles/CS109PA1.dir/scanner.cpp.i

CMakeFiles/CS109PA1.dir/scanner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CS109PA1.dir/scanner.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mark/mac/Desktop/CMPS109/CS109PA1/scanner.cpp -o CMakeFiles/CS109PA1.dir/scanner.cpp.s

CMakeFiles/CS109PA1.dir/ubigint.cpp.o: CMakeFiles/CS109PA1.dir/flags.make
CMakeFiles/CS109PA1.dir/ubigint.cpp.o: ../ubigint.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mark/mac/Desktop/CMPS109/CS109PA1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/CS109PA1.dir/ubigint.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CS109PA1.dir/ubigint.cpp.o -c /home/mark/mac/Desktop/CMPS109/CS109PA1/ubigint.cpp

CMakeFiles/CS109PA1.dir/ubigint.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CS109PA1.dir/ubigint.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mark/mac/Desktop/CMPS109/CS109PA1/ubigint.cpp > CMakeFiles/CS109PA1.dir/ubigint.cpp.i

CMakeFiles/CS109PA1.dir/ubigint.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CS109PA1.dir/ubigint.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mark/mac/Desktop/CMPS109/CS109PA1/ubigint.cpp -o CMakeFiles/CS109PA1.dir/ubigint.cpp.s

CMakeFiles/CS109PA1.dir/util.cpp.o: CMakeFiles/CS109PA1.dir/flags.make
CMakeFiles/CS109PA1.dir/util.cpp.o: ../util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mark/mac/Desktop/CMPS109/CS109PA1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/CS109PA1.dir/util.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CS109PA1.dir/util.cpp.o -c /home/mark/mac/Desktop/CMPS109/CS109PA1/util.cpp

CMakeFiles/CS109PA1.dir/util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CS109PA1.dir/util.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mark/mac/Desktop/CMPS109/CS109PA1/util.cpp > CMakeFiles/CS109PA1.dir/util.cpp.i

CMakeFiles/CS109PA1.dir/util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CS109PA1.dir/util.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mark/mac/Desktop/CMPS109/CS109PA1/util.cpp -o CMakeFiles/CS109PA1.dir/util.cpp.s

# Object files for target CS109PA1
CS109PA1_OBJECTS = \
"CMakeFiles/CS109PA1.dir/bigint.cpp.o" \
"CMakeFiles/CS109PA1.dir/debug.cpp.o" \
"CMakeFiles/CS109PA1.dir/libfns.cpp.o" \
"CMakeFiles/CS109PA1.dir/main.cpp.o" \
"CMakeFiles/CS109PA1.dir/scanner.cpp.o" \
"CMakeFiles/CS109PA1.dir/ubigint.cpp.o" \
"CMakeFiles/CS109PA1.dir/util.cpp.o"

# External object files for target CS109PA1
CS109PA1_EXTERNAL_OBJECTS =

CS109PA1: CMakeFiles/CS109PA1.dir/bigint.cpp.o
CS109PA1: CMakeFiles/CS109PA1.dir/debug.cpp.o
CS109PA1: CMakeFiles/CS109PA1.dir/libfns.cpp.o
CS109PA1: CMakeFiles/CS109PA1.dir/main.cpp.o
CS109PA1: CMakeFiles/CS109PA1.dir/scanner.cpp.o
CS109PA1: CMakeFiles/CS109PA1.dir/ubigint.cpp.o
CS109PA1: CMakeFiles/CS109PA1.dir/util.cpp.o
CS109PA1: CMakeFiles/CS109PA1.dir/build.make
CS109PA1: CMakeFiles/CS109PA1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mark/mac/Desktop/CMPS109/CS109PA1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable CS109PA1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CS109PA1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CS109PA1.dir/build: CS109PA1

.PHONY : CMakeFiles/CS109PA1.dir/build

CMakeFiles/CS109PA1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CS109PA1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CS109PA1.dir/clean

CMakeFiles/CS109PA1.dir/depend:
	cd /home/mark/mac/Desktop/CMPS109/CS109PA1/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mark/mac/Desktop/CMPS109/CS109PA1 /home/mark/mac/Desktop/CMPS109/CS109PA1 /home/mark/mac/Desktop/CMPS109/CS109PA1/cmake-build-debug /home/mark/mac/Desktop/CMPS109/CS109PA1/cmake-build-debug /home/mark/mac/Desktop/CMPS109/CS109PA1/cmake-build-debug/CMakeFiles/CS109PA1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CS109PA1.dir/depend

