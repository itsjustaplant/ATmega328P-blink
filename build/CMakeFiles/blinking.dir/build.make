# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.18.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.18.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/alperen/Desktop/demo/firmware

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/alperen/Desktop/demo/firmware/build

# Include any dependencies generated for this target.
include CMakeFiles/blinking.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/blinking.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/blinking.dir/flags.make

CMakeFiles/blinking.dir/src/main.c.o: CMakeFiles/blinking.dir/flags.make
CMakeFiles/blinking.dir/src/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/alperen/Desktop/demo/firmware/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/blinking.dir/src/main.c.o"
	/Users/alperen/Downloads/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/blinking.dir/src/main.c.o -c /Users/alperen/Desktop/demo/firmware/src/main.c

CMakeFiles/blinking.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/blinking.dir/src/main.c.i"
	/Users/alperen/Downloads/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/alperen/Desktop/demo/firmware/src/main.c > CMakeFiles/blinking.dir/src/main.c.i

CMakeFiles/blinking.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/blinking.dir/src/main.c.s"
	/Users/alperen/Downloads/Arduino.app/Contents/Java/hardware/tools/avr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/alperen/Desktop/demo/firmware/src/main.c -o CMakeFiles/blinking.dir/src/main.c.s

# Object files for target blinking
blinking_OBJECTS = \
"CMakeFiles/blinking.dir/src/main.c.o"

# External object files for target blinking
blinking_EXTERNAL_OBJECTS =

blinking: CMakeFiles/blinking.dir/src/main.c.o
blinking: CMakeFiles/blinking.dir/build.make
blinking: CMakeFiles/blinking.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/alperen/Desktop/demo/firmware/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable blinking"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/blinking.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/blinking.dir/build: blinking

.PHONY : CMakeFiles/blinking.dir/build

CMakeFiles/blinking.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/blinking.dir/cmake_clean.cmake
.PHONY : CMakeFiles/blinking.dir/clean

CMakeFiles/blinking.dir/depend:
	cd /Users/alperen/Desktop/demo/firmware/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/alperen/Desktop/demo/firmware /Users/alperen/Desktop/demo/firmware /Users/alperen/Desktop/demo/firmware/build /Users/alperen/Desktop/demo/firmware/build /Users/alperen/Desktop/demo/firmware/build/CMakeFiles/blinking.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/blinking.dir/depend
