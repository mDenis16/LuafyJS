# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.27.5/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.27.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/denistopor/repos/lua2js/lua-parser

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/denistopor/repos/lua2js/lua-parser

# Include any dependencies generated for this target.
include CMakeFiles/lua-parser.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/lua-parser.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/lua-parser.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lua-parser.dir/flags.make

CMakeFiles/lua-parser.dir/CLuaParser.cpp.o: CMakeFiles/lua-parser.dir/flags.make
CMakeFiles/lua-parser.dir/CLuaParser.cpp.o: CLuaParser.cpp
CMakeFiles/lua-parser.dir/CLuaParser.cpp.o: CMakeFiles/lua-parser.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/denistopor/repos/lua2js/lua-parser/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lua-parser.dir/CLuaParser.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lua-parser.dir/CLuaParser.cpp.o -MF CMakeFiles/lua-parser.dir/CLuaParser.cpp.o.d -o CMakeFiles/lua-parser.dir/CLuaParser.cpp.o -c /Users/denistopor/repos/lua2js/lua-parser/CLuaParser.cpp

CMakeFiles/lua-parser.dir/CLuaParser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/lua-parser.dir/CLuaParser.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/denistopor/repos/lua2js/lua-parser/CLuaParser.cpp > CMakeFiles/lua-parser.dir/CLuaParser.cpp.i

CMakeFiles/lua-parser.dir/CLuaParser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/lua-parser.dir/CLuaParser.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/denistopor/repos/lua2js/lua-parser/CLuaParser.cpp -o CMakeFiles/lua-parser.dir/CLuaParser.cpp.s

CMakeFiles/lua-parser.dir/main.cpp.o: CMakeFiles/lua-parser.dir/flags.make
CMakeFiles/lua-parser.dir/main.cpp.o: main.cpp
CMakeFiles/lua-parser.dir/main.cpp.o: CMakeFiles/lua-parser.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/denistopor/repos/lua2js/lua-parser/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/lua-parser.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lua-parser.dir/main.cpp.o -MF CMakeFiles/lua-parser.dir/main.cpp.o.d -o CMakeFiles/lua-parser.dir/main.cpp.o -c /Users/denistopor/repos/lua2js/lua-parser/main.cpp

CMakeFiles/lua-parser.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/lua-parser.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/denistopor/repos/lua2js/lua-parser/main.cpp > CMakeFiles/lua-parser.dir/main.cpp.i

CMakeFiles/lua-parser.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/lua-parser.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/denistopor/repos/lua2js/lua-parser/main.cpp -o CMakeFiles/lua-parser.dir/main.cpp.s

# Object files for target lua-parser
lua__parser_OBJECTS = \
"CMakeFiles/lua-parser.dir/CLuaParser.cpp.o" \
"CMakeFiles/lua-parser.dir/main.cpp.o"

# External object files for target lua-parser
lua__parser_EXTERNAL_OBJECTS =

lua-parser: CMakeFiles/lua-parser.dir/CLuaParser.cpp.o
lua-parser: CMakeFiles/lua-parser.dir/main.cpp.o
lua-parser: CMakeFiles/lua-parser.dir/build.make
lua-parser: CMakeFiles/lua-parser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/denistopor/repos/lua2js/lua-parser/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable lua-parser"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lua-parser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lua-parser.dir/build: lua-parser
.PHONY : CMakeFiles/lua-parser.dir/build

CMakeFiles/lua-parser.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lua-parser.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lua-parser.dir/clean

CMakeFiles/lua-parser.dir/depend:
	cd /Users/denistopor/repos/lua2js/lua-parser && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/denistopor/repos/lua2js/lua-parser /Users/denistopor/repos/lua2js/lua-parser /Users/denistopor/repos/lua2js/lua-parser /Users/denistopor/repos/lua2js/lua-parser /Users/denistopor/repos/lua2js/lua-parser/CMakeFiles/lua-parser.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/lua-parser.dir/depend

