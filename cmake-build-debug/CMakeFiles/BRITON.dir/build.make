# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /snap/clion/81/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/81/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/brianton/Desktop/Chess-Engine-Cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/BRITON.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/BRITON.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BRITON.dir/flags.make

CMakeFiles/BRITON.dir/attack.cpp.o: CMakeFiles/BRITON.dir/flags.make
CMakeFiles/BRITON.dir/attack.cpp.o: ../attack.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/BRITON.dir/attack.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BRITON.dir/attack.cpp.o -c /home/brianton/Desktop/Chess-Engine-Cpp/attack.cpp

CMakeFiles/BRITON.dir/attack.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BRITON.dir/attack.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/brianton/Desktop/Chess-Engine-Cpp/attack.cpp > CMakeFiles/BRITON.dir/attack.cpp.i

CMakeFiles/BRITON.dir/attack.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BRITON.dir/attack.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/brianton/Desktop/Chess-Engine-Cpp/attack.cpp -o CMakeFiles/BRITON.dir/attack.cpp.s

CMakeFiles/BRITON.dir/bitboards.cpp.o: CMakeFiles/BRITON.dir/flags.make
CMakeFiles/BRITON.dir/bitboards.cpp.o: ../bitboards.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/BRITON.dir/bitboards.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BRITON.dir/bitboards.cpp.o -c /home/brianton/Desktop/Chess-Engine-Cpp/bitboards.cpp

CMakeFiles/BRITON.dir/bitboards.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BRITON.dir/bitboards.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/brianton/Desktop/Chess-Engine-Cpp/bitboards.cpp > CMakeFiles/BRITON.dir/bitboards.cpp.i

CMakeFiles/BRITON.dir/bitboards.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BRITON.dir/bitboards.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/brianton/Desktop/Chess-Engine-Cpp/bitboards.cpp -o CMakeFiles/BRITON.dir/bitboards.cpp.s

CMakeFiles/BRITON.dir/board.cpp.o: CMakeFiles/BRITON.dir/flags.make
CMakeFiles/BRITON.dir/board.cpp.o: ../board.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/BRITON.dir/board.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BRITON.dir/board.cpp.o -c /home/brianton/Desktop/Chess-Engine-Cpp/board.cpp

CMakeFiles/BRITON.dir/board.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BRITON.dir/board.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/brianton/Desktop/Chess-Engine-Cpp/board.cpp > CMakeFiles/BRITON.dir/board.cpp.i

CMakeFiles/BRITON.dir/board.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BRITON.dir/board.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/brianton/Desktop/Chess-Engine-Cpp/board.cpp -o CMakeFiles/BRITON.dir/board.cpp.s

CMakeFiles/BRITON.dir/evaluate.cpp.o: CMakeFiles/BRITON.dir/flags.make
CMakeFiles/BRITON.dir/evaluate.cpp.o: ../evaluate.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/BRITON.dir/evaluate.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BRITON.dir/evaluate.cpp.o -c /home/brianton/Desktop/Chess-Engine-Cpp/evaluate.cpp

CMakeFiles/BRITON.dir/evaluate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BRITON.dir/evaluate.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/brianton/Desktop/Chess-Engine-Cpp/evaluate.cpp > CMakeFiles/BRITON.dir/evaluate.cpp.i

CMakeFiles/BRITON.dir/evaluate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BRITON.dir/evaluate.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/brianton/Desktop/Chess-Engine-Cpp/evaluate.cpp -o CMakeFiles/BRITON.dir/evaluate.cpp.s

CMakeFiles/BRITON.dir/hashkey.cpp.o: CMakeFiles/BRITON.dir/flags.make
CMakeFiles/BRITON.dir/hashkey.cpp.o: ../hashkey.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/BRITON.dir/hashkey.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BRITON.dir/hashkey.cpp.o -c /home/brianton/Desktop/Chess-Engine-Cpp/hashkey.cpp

CMakeFiles/BRITON.dir/hashkey.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BRITON.dir/hashkey.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/brianton/Desktop/Chess-Engine-Cpp/hashkey.cpp > CMakeFiles/BRITON.dir/hashkey.cpp.i

CMakeFiles/BRITON.dir/hashkey.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BRITON.dir/hashkey.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/brianton/Desktop/Chess-Engine-Cpp/hashkey.cpp -o CMakeFiles/BRITON.dir/hashkey.cpp.s

CMakeFiles/BRITON.dir/init.cpp.o: CMakeFiles/BRITON.dir/flags.make
CMakeFiles/BRITON.dir/init.cpp.o: ../init.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/BRITON.dir/init.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BRITON.dir/init.cpp.o -c /home/brianton/Desktop/Chess-Engine-Cpp/init.cpp

CMakeFiles/BRITON.dir/init.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BRITON.dir/init.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/brianton/Desktop/Chess-Engine-Cpp/init.cpp > CMakeFiles/BRITON.dir/init.cpp.i

CMakeFiles/BRITON.dir/init.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BRITON.dir/init.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/brianton/Desktop/Chess-Engine-Cpp/init.cpp -o CMakeFiles/BRITON.dir/init.cpp.s

CMakeFiles/BRITON.dir/io.cpp.o: CMakeFiles/BRITON.dir/flags.make
CMakeFiles/BRITON.dir/io.cpp.o: ../io.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/BRITON.dir/io.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BRITON.dir/io.cpp.o -c /home/brianton/Desktop/Chess-Engine-Cpp/io.cpp

CMakeFiles/BRITON.dir/io.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BRITON.dir/io.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/brianton/Desktop/Chess-Engine-Cpp/io.cpp > CMakeFiles/BRITON.dir/io.cpp.i

CMakeFiles/BRITON.dir/io.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BRITON.dir/io.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/brianton/Desktop/Chess-Engine-Cpp/io.cpp -o CMakeFiles/BRITON.dir/io.cpp.s

CMakeFiles/BRITON.dir/main.cpp.o: CMakeFiles/BRITON.dir/flags.make
CMakeFiles/BRITON.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/BRITON.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BRITON.dir/main.cpp.o -c /home/brianton/Desktop/Chess-Engine-Cpp/main.cpp

CMakeFiles/BRITON.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BRITON.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/brianton/Desktop/Chess-Engine-Cpp/main.cpp > CMakeFiles/BRITON.dir/main.cpp.i

CMakeFiles/BRITON.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BRITON.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/brianton/Desktop/Chess-Engine-Cpp/main.cpp -o CMakeFiles/BRITON.dir/main.cpp.s

CMakeFiles/BRITON.dir/makemove.cpp.o: CMakeFiles/BRITON.dir/flags.make
CMakeFiles/BRITON.dir/makemove.cpp.o: ../makemove.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/BRITON.dir/makemove.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BRITON.dir/makemove.cpp.o -c /home/brianton/Desktop/Chess-Engine-Cpp/makemove.cpp

CMakeFiles/BRITON.dir/makemove.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BRITON.dir/makemove.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/brianton/Desktop/Chess-Engine-Cpp/makemove.cpp > CMakeFiles/BRITON.dir/makemove.cpp.i

CMakeFiles/BRITON.dir/makemove.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BRITON.dir/makemove.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/brianton/Desktop/Chess-Engine-Cpp/makemove.cpp -o CMakeFiles/BRITON.dir/makemove.cpp.s

CMakeFiles/BRITON.dir/misc.cpp.o: CMakeFiles/BRITON.dir/flags.make
CMakeFiles/BRITON.dir/misc.cpp.o: ../misc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/BRITON.dir/misc.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BRITON.dir/misc.cpp.o -c /home/brianton/Desktop/Chess-Engine-Cpp/misc.cpp

CMakeFiles/BRITON.dir/misc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BRITON.dir/misc.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/brianton/Desktop/Chess-Engine-Cpp/misc.cpp > CMakeFiles/BRITON.dir/misc.cpp.i

CMakeFiles/BRITON.dir/misc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BRITON.dir/misc.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/brianton/Desktop/Chess-Engine-Cpp/misc.cpp -o CMakeFiles/BRITON.dir/misc.cpp.s

CMakeFiles/BRITON.dir/move.cpp.o: CMakeFiles/BRITON.dir/flags.make
CMakeFiles/BRITON.dir/move.cpp.o: ../move.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/BRITON.dir/move.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BRITON.dir/move.cpp.o -c /home/brianton/Desktop/Chess-Engine-Cpp/move.cpp

CMakeFiles/BRITON.dir/move.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BRITON.dir/move.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/brianton/Desktop/Chess-Engine-Cpp/move.cpp > CMakeFiles/BRITON.dir/move.cpp.i

CMakeFiles/BRITON.dir/move.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BRITON.dir/move.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/brianton/Desktop/Chess-Engine-Cpp/move.cpp -o CMakeFiles/BRITON.dir/move.cpp.s

CMakeFiles/BRITON.dir/movegen.cpp.o: CMakeFiles/BRITON.dir/flags.make
CMakeFiles/BRITON.dir/movegen.cpp.o: ../movegen.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/BRITON.dir/movegen.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BRITON.dir/movegen.cpp.o -c /home/brianton/Desktop/Chess-Engine-Cpp/movegen.cpp

CMakeFiles/BRITON.dir/movegen.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BRITON.dir/movegen.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/brianton/Desktop/Chess-Engine-Cpp/movegen.cpp > CMakeFiles/BRITON.dir/movegen.cpp.i

CMakeFiles/BRITON.dir/movegen.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BRITON.dir/movegen.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/brianton/Desktop/Chess-Engine-Cpp/movegen.cpp -o CMakeFiles/BRITON.dir/movegen.cpp.s

CMakeFiles/BRITON.dir/perft.cpp.o: CMakeFiles/BRITON.dir/flags.make
CMakeFiles/BRITON.dir/perft.cpp.o: ../perft.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/BRITON.dir/perft.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BRITON.dir/perft.cpp.o -c /home/brianton/Desktop/Chess-Engine-Cpp/perft.cpp

CMakeFiles/BRITON.dir/perft.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BRITON.dir/perft.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/brianton/Desktop/Chess-Engine-Cpp/perft.cpp > CMakeFiles/BRITON.dir/perft.cpp.i

CMakeFiles/BRITON.dir/perft.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BRITON.dir/perft.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/brianton/Desktop/Chess-Engine-Cpp/perft.cpp -o CMakeFiles/BRITON.dir/perft.cpp.s

CMakeFiles/BRITON.dir/pvtable.cpp.o: CMakeFiles/BRITON.dir/flags.make
CMakeFiles/BRITON.dir/pvtable.cpp.o: ../pvtable.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/BRITON.dir/pvtable.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BRITON.dir/pvtable.cpp.o -c /home/brianton/Desktop/Chess-Engine-Cpp/pvtable.cpp

CMakeFiles/BRITON.dir/pvtable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BRITON.dir/pvtable.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/brianton/Desktop/Chess-Engine-Cpp/pvtable.cpp > CMakeFiles/BRITON.dir/pvtable.cpp.i

CMakeFiles/BRITON.dir/pvtable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BRITON.dir/pvtable.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/brianton/Desktop/Chess-Engine-Cpp/pvtable.cpp -o CMakeFiles/BRITON.dir/pvtable.cpp.s

CMakeFiles/BRITON.dir/search.cpp.o: CMakeFiles/BRITON.dir/flags.make
CMakeFiles/BRITON.dir/search.cpp.o: ../search.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/BRITON.dir/search.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BRITON.dir/search.cpp.o -c /home/brianton/Desktop/Chess-Engine-Cpp/search.cpp

CMakeFiles/BRITON.dir/search.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BRITON.dir/search.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/brianton/Desktop/Chess-Engine-Cpp/search.cpp > CMakeFiles/BRITON.dir/search.cpp.i

CMakeFiles/BRITON.dir/search.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BRITON.dir/search.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/brianton/Desktop/Chess-Engine-Cpp/search.cpp -o CMakeFiles/BRITON.dir/search.cpp.s

CMakeFiles/BRITON.dir/validate.cpp.o: CMakeFiles/BRITON.dir/flags.make
CMakeFiles/BRITON.dir/validate.cpp.o: ../validate.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/BRITON.dir/validate.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BRITON.dir/validate.cpp.o -c /home/brianton/Desktop/Chess-Engine-Cpp/validate.cpp

CMakeFiles/BRITON.dir/validate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BRITON.dir/validate.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/brianton/Desktop/Chess-Engine-Cpp/validate.cpp > CMakeFiles/BRITON.dir/validate.cpp.i

CMakeFiles/BRITON.dir/validate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BRITON.dir/validate.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/brianton/Desktop/Chess-Engine-Cpp/validate.cpp -o CMakeFiles/BRITON.dir/validate.cpp.s

CMakeFiles/BRITON.dir/uci.cpp.o: CMakeFiles/BRITON.dir/flags.make
CMakeFiles/BRITON.dir/uci.cpp.o: ../uci.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/BRITON.dir/uci.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BRITON.dir/uci.cpp.o -c /home/brianton/Desktop/Chess-Engine-Cpp/uci.cpp

CMakeFiles/BRITON.dir/uci.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BRITON.dir/uci.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/brianton/Desktop/Chess-Engine-Cpp/uci.cpp > CMakeFiles/BRITON.dir/uci.cpp.i

CMakeFiles/BRITON.dir/uci.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BRITON.dir/uci.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/brianton/Desktop/Chess-Engine-Cpp/uci.cpp -o CMakeFiles/BRITON.dir/uci.cpp.s

# Object files for target BRITON
BRITON_OBJECTS = \
"CMakeFiles/BRITON.dir/attack.cpp.o" \
"CMakeFiles/BRITON.dir/bitboards.cpp.o" \
"CMakeFiles/BRITON.dir/board.cpp.o" \
"CMakeFiles/BRITON.dir/evaluate.cpp.o" \
"CMakeFiles/BRITON.dir/hashkey.cpp.o" \
"CMakeFiles/BRITON.dir/init.cpp.o" \
"CMakeFiles/BRITON.dir/io.cpp.o" \
"CMakeFiles/BRITON.dir/main.cpp.o" \
"CMakeFiles/BRITON.dir/makemove.cpp.o" \
"CMakeFiles/BRITON.dir/misc.cpp.o" \
"CMakeFiles/BRITON.dir/move.cpp.o" \
"CMakeFiles/BRITON.dir/movegen.cpp.o" \
"CMakeFiles/BRITON.dir/perft.cpp.o" \
"CMakeFiles/BRITON.dir/pvtable.cpp.o" \
"CMakeFiles/BRITON.dir/search.cpp.o" \
"CMakeFiles/BRITON.dir/validate.cpp.o" \
"CMakeFiles/BRITON.dir/uci.cpp.o"

# External object files for target BRITON
BRITON_EXTERNAL_OBJECTS =

BRITON: CMakeFiles/BRITON.dir/attack.cpp.o
BRITON: CMakeFiles/BRITON.dir/bitboards.cpp.o
BRITON: CMakeFiles/BRITON.dir/board.cpp.o
BRITON: CMakeFiles/BRITON.dir/evaluate.cpp.o
BRITON: CMakeFiles/BRITON.dir/hashkey.cpp.o
BRITON: CMakeFiles/BRITON.dir/init.cpp.o
BRITON: CMakeFiles/BRITON.dir/io.cpp.o
BRITON: CMakeFiles/BRITON.dir/main.cpp.o
BRITON: CMakeFiles/BRITON.dir/makemove.cpp.o
BRITON: CMakeFiles/BRITON.dir/misc.cpp.o
BRITON: CMakeFiles/BRITON.dir/move.cpp.o
BRITON: CMakeFiles/BRITON.dir/movegen.cpp.o
BRITON: CMakeFiles/BRITON.dir/perft.cpp.o
BRITON: CMakeFiles/BRITON.dir/pvtable.cpp.o
BRITON: CMakeFiles/BRITON.dir/search.cpp.o
BRITON: CMakeFiles/BRITON.dir/validate.cpp.o
BRITON: CMakeFiles/BRITON.dir/uci.cpp.o
BRITON: CMakeFiles/BRITON.dir/build.make
BRITON: CMakeFiles/BRITON.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Linking CXX executable BRITON"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BRITON.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BRITON.dir/build: BRITON

.PHONY : CMakeFiles/BRITON.dir/build

CMakeFiles/BRITON.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/BRITON.dir/cmake_clean.cmake
.PHONY : CMakeFiles/BRITON.dir/clean

CMakeFiles/BRITON.dir/depend:
	cd /home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/brianton/Desktop/Chess-Engine-Cpp /home/brianton/Desktop/Chess-Engine-Cpp /home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug /home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug /home/brianton/Desktop/Chess-Engine-Cpp/cmake-build-debug/CMakeFiles/BRITON.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BRITON.dir/depend

