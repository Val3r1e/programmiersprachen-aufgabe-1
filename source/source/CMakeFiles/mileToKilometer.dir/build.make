# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.7.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.7.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/valerie/documents/programmiersprachen-aufgabe-1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/valerie/documents/programmiersprachen-aufgabe-1/source

# Include any dependencies generated for this target.
include source/CMakeFiles/mileToKilometer.dir/depend.make

# Include the progress variables for this target.
include source/CMakeFiles/mileToKilometer.dir/progress.make

# Include the compile flags for this target's objects.
include source/CMakeFiles/mileToKilometer.dir/flags.make

source/CMakeFiles/mileToKilometer.dir/mileToKilometer.cpp.o: source/CMakeFiles/mileToKilometer.dir/flags.make
source/CMakeFiles/mileToKilometer.dir/mileToKilometer.cpp.o: mileToKilometer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/valerie/documents/programmiersprachen-aufgabe-1/source/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object source/CMakeFiles/mileToKilometer.dir/mileToKilometer.cpp.o"
	cd /Users/valerie/documents/programmiersprachen-aufgabe-1/source/source && /Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mileToKilometer.dir/mileToKilometer.cpp.o -c /Users/valerie/documents/programmiersprachen-aufgabe-1/source/mileToKilometer.cpp

source/CMakeFiles/mileToKilometer.dir/mileToKilometer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mileToKilometer.dir/mileToKilometer.cpp.i"
	cd /Users/valerie/documents/programmiersprachen-aufgabe-1/source/source && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/valerie/documents/programmiersprachen-aufgabe-1/source/mileToKilometer.cpp > CMakeFiles/mileToKilometer.dir/mileToKilometer.cpp.i

source/CMakeFiles/mileToKilometer.dir/mileToKilometer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mileToKilometer.dir/mileToKilometer.cpp.s"
	cd /Users/valerie/documents/programmiersprachen-aufgabe-1/source/source && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/valerie/documents/programmiersprachen-aufgabe-1/source/mileToKilometer.cpp -o CMakeFiles/mileToKilometer.dir/mileToKilometer.cpp.s

source/CMakeFiles/mileToKilometer.dir/mileToKilometer.cpp.o.requires:

.PHONY : source/CMakeFiles/mileToKilometer.dir/mileToKilometer.cpp.o.requires

source/CMakeFiles/mileToKilometer.dir/mileToKilometer.cpp.o.provides: source/CMakeFiles/mileToKilometer.dir/mileToKilometer.cpp.o.requires
	$(MAKE) -f source/CMakeFiles/mileToKilometer.dir/build.make source/CMakeFiles/mileToKilometer.dir/mileToKilometer.cpp.o.provides.build
.PHONY : source/CMakeFiles/mileToKilometer.dir/mileToKilometer.cpp.o.provides

source/CMakeFiles/mileToKilometer.dir/mileToKilometer.cpp.o.provides.build: source/CMakeFiles/mileToKilometer.dir/mileToKilometer.cpp.o


# Object files for target mileToKilometer
mileToKilometer_OBJECTS = \
"CMakeFiles/mileToKilometer.dir/mileToKilometer.cpp.o"

# External object files for target mileToKilometer
mileToKilometer_EXTERNAL_OBJECTS =

source/mileToKilometer: source/CMakeFiles/mileToKilometer.dir/mileToKilometer.cpp.o
source/mileToKilometer: source/CMakeFiles/mileToKilometer.dir/build.make
source/mileToKilometer: source/CMakeFiles/mileToKilometer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/valerie/documents/programmiersprachen-aufgabe-1/source/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable mileToKilometer"
	cd /Users/valerie/documents/programmiersprachen-aufgabe-1/source/source && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mileToKilometer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
source/CMakeFiles/mileToKilometer.dir/build: source/mileToKilometer

.PHONY : source/CMakeFiles/mileToKilometer.dir/build

source/CMakeFiles/mileToKilometer.dir/requires: source/CMakeFiles/mileToKilometer.dir/mileToKilometer.cpp.o.requires

.PHONY : source/CMakeFiles/mileToKilometer.dir/requires

source/CMakeFiles/mileToKilometer.dir/clean:
	cd /Users/valerie/documents/programmiersprachen-aufgabe-1/source/source && $(CMAKE_COMMAND) -P CMakeFiles/mileToKilometer.dir/cmake_clean.cmake
.PHONY : source/CMakeFiles/mileToKilometer.dir/clean

source/CMakeFiles/mileToKilometer.dir/depend:
	cd /Users/valerie/documents/programmiersprachen-aufgabe-1/source && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/valerie/documents/programmiersprachen-aufgabe-1 /Users/valerie/documents/programmiersprachen-aufgabe-1/source /Users/valerie/documents/programmiersprachen-aufgabe-1/source /Users/valerie/documents/programmiersprachen-aufgabe-1/source/source /Users/valerie/documents/programmiersprachen-aufgabe-1/source/source/CMakeFiles/mileToKilometer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : source/CMakeFiles/mileToKilometer.dir/depend

