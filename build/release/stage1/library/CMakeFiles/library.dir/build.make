# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/sally/lean4/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sally/lean4/build/release/stage1

# Include any dependencies generated for this target.
include library/CMakeFiles/library.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include library/CMakeFiles/library.dir/compiler_depend.make

# Include the progress variables for this target.
include library/CMakeFiles/library.dir/progress.make

# Include the compile flags for this target's objects.
include library/CMakeFiles/library.dir/flags.make

library/CMakeFiles/library.dir/expr_lt.cpp.o: library/CMakeFiles/library.dir/flags.make
library/CMakeFiles/library.dir/expr_lt.cpp.o: /home/sally/lean4/src/library/expr_lt.cpp
library/CMakeFiles/library.dir/expr_lt.cpp.o: library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sally/lean4/build/release/stage1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object library/CMakeFiles/library.dir/expr_lt.cpp.o"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT library/CMakeFiles/library.dir/expr_lt.cpp.o -MF CMakeFiles/library.dir/expr_lt.cpp.o.d -o CMakeFiles/library.dir/expr_lt.cpp.o -c /home/sally/lean4/src/library/expr_lt.cpp && /usr/bin/ccache /usr/local/share/wasm-toolchain/sysroot/bin/clang++ --target=wasm32 -Os -s -o library/CMakeFiles/library.dir/expr_lt.cpp.wasm -c /home/sally/lean4/src/library/expr_lt.cpp

library/CMakeFiles/library.dir/expr_lt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/library.dir/expr_lt.cpp.i"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sally/lean4/src/library/expr_lt.cpp > CMakeFiles/library.dir/expr_lt.cpp.i

library/CMakeFiles/library.dir/expr_lt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/library.dir/expr_lt.cpp.s"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sally/lean4/src/library/expr_lt.cpp -o CMakeFiles/library.dir/expr_lt.cpp.s

library/CMakeFiles/library.dir/bin_app.cpp.o: library/CMakeFiles/library.dir/flags.make
library/CMakeFiles/library.dir/bin_app.cpp.o: /home/sally/lean4/src/library/bin_app.cpp
library/CMakeFiles/library.dir/bin_app.cpp.o: library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sally/lean4/build/release/stage1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object library/CMakeFiles/library.dir/bin_app.cpp.o"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT library/CMakeFiles/library.dir/bin_app.cpp.o -MF CMakeFiles/library.dir/bin_app.cpp.o.d -o CMakeFiles/library.dir/bin_app.cpp.o -c /home/sally/lean4/src/library/bin_app.cpp

library/CMakeFiles/library.dir/bin_app.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/library.dir/bin_app.cpp.i"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sally/lean4/src/library/bin_app.cpp > CMakeFiles/library.dir/bin_app.cpp.i

library/CMakeFiles/library.dir/bin_app.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/library.dir/bin_app.cpp.s"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sally/lean4/src/library/bin_app.cpp -o CMakeFiles/library.dir/bin_app.cpp.s

library/CMakeFiles/library.dir/constants.cpp.o: library/CMakeFiles/library.dir/flags.make
library/CMakeFiles/library.dir/constants.cpp.o: /home/sally/lean4/src/library/constants.cpp
library/CMakeFiles/library.dir/constants.cpp.o: library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sally/lean4/build/release/stage1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object library/CMakeFiles/library.dir/constants.cpp.o"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT library/CMakeFiles/library.dir/constants.cpp.o -MF CMakeFiles/library.dir/constants.cpp.o.d -o CMakeFiles/library.dir/constants.cpp.o -c /home/sally/lean4/src/library/constants.cpp

library/CMakeFiles/library.dir/constants.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/library.dir/constants.cpp.i"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sally/lean4/src/library/constants.cpp > CMakeFiles/library.dir/constants.cpp.i

library/CMakeFiles/library.dir/constants.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/library.dir/constants.cpp.s"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sally/lean4/src/library/constants.cpp -o CMakeFiles/library.dir/constants.cpp.s

library/CMakeFiles/library.dir/max_sharing.cpp.o: library/CMakeFiles/library.dir/flags.make
library/CMakeFiles/library.dir/max_sharing.cpp.o: /home/sally/lean4/src/library/max_sharing.cpp
library/CMakeFiles/library.dir/max_sharing.cpp.o: library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sally/lean4/build/release/stage1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object library/CMakeFiles/library.dir/max_sharing.cpp.o"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT library/CMakeFiles/library.dir/max_sharing.cpp.o -MF CMakeFiles/library.dir/max_sharing.cpp.o.d -o CMakeFiles/library.dir/max_sharing.cpp.o -c /home/sally/lean4/src/library/max_sharing.cpp

library/CMakeFiles/library.dir/max_sharing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/library.dir/max_sharing.cpp.i"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sally/lean4/src/library/max_sharing.cpp > CMakeFiles/library.dir/max_sharing.cpp.i

library/CMakeFiles/library.dir/max_sharing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/library.dir/max_sharing.cpp.s"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sally/lean4/src/library/max_sharing.cpp -o CMakeFiles/library.dir/max_sharing.cpp.s

library/CMakeFiles/library.dir/module.cpp.o: library/CMakeFiles/library.dir/flags.make
library/CMakeFiles/library.dir/module.cpp.o: /home/sally/lean4/src/library/module.cpp
library/CMakeFiles/library.dir/module.cpp.o: library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sally/lean4/build/release/stage1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object library/CMakeFiles/library.dir/module.cpp.o"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT library/CMakeFiles/library.dir/module.cpp.o -MF CMakeFiles/library.dir/module.cpp.o.d -o CMakeFiles/library.dir/module.cpp.o -c /home/sally/lean4/src/library/module.cpp

library/CMakeFiles/library.dir/module.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/library.dir/module.cpp.i"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sally/lean4/src/library/module.cpp > CMakeFiles/library.dir/module.cpp.i

library/CMakeFiles/library.dir/module.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/library.dir/module.cpp.s"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sally/lean4/src/library/module.cpp -o CMakeFiles/library.dir/module.cpp.s

library/CMakeFiles/library.dir/dynlib.cpp.o: library/CMakeFiles/library.dir/flags.make
library/CMakeFiles/library.dir/dynlib.cpp.o: /home/sally/lean4/src/library/dynlib.cpp
library/CMakeFiles/library.dir/dynlib.cpp.o: library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sally/lean4/build/release/stage1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object library/CMakeFiles/library.dir/dynlib.cpp.o"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT library/CMakeFiles/library.dir/dynlib.cpp.o -MF CMakeFiles/library.dir/dynlib.cpp.o.d -o CMakeFiles/library.dir/dynlib.cpp.o -c /home/sally/lean4/src/library/dynlib.cpp

library/CMakeFiles/library.dir/dynlib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/library.dir/dynlib.cpp.i"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sally/lean4/src/library/dynlib.cpp > CMakeFiles/library.dir/dynlib.cpp.i

library/CMakeFiles/library.dir/dynlib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/library.dir/dynlib.cpp.s"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sally/lean4/src/library/dynlib.cpp -o CMakeFiles/library.dir/dynlib.cpp.s

library/CMakeFiles/library.dir/replace_visitor.cpp.o: library/CMakeFiles/library.dir/flags.make
library/CMakeFiles/library.dir/replace_visitor.cpp.o: /home/sally/lean4/src/library/replace_visitor.cpp
library/CMakeFiles/library.dir/replace_visitor.cpp.o: library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sally/lean4/build/release/stage1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object library/CMakeFiles/library.dir/replace_visitor.cpp.o"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT library/CMakeFiles/library.dir/replace_visitor.cpp.o -MF CMakeFiles/library.dir/replace_visitor.cpp.o.d -o CMakeFiles/library.dir/replace_visitor.cpp.o -c /home/sally/lean4/src/library/replace_visitor.cpp

library/CMakeFiles/library.dir/replace_visitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/library.dir/replace_visitor.cpp.i"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sally/lean4/src/library/replace_visitor.cpp > CMakeFiles/library.dir/replace_visitor.cpp.i

library/CMakeFiles/library.dir/replace_visitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/library.dir/replace_visitor.cpp.s"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sally/lean4/src/library/replace_visitor.cpp -o CMakeFiles/library.dir/replace_visitor.cpp.s

library/CMakeFiles/library.dir/num.cpp.o: library/CMakeFiles/library.dir/flags.make
library/CMakeFiles/library.dir/num.cpp.o: /home/sally/lean4/src/library/num.cpp
library/CMakeFiles/library.dir/num.cpp.o: library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sally/lean4/build/release/stage1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object library/CMakeFiles/library.dir/num.cpp.o"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT library/CMakeFiles/library.dir/num.cpp.o -MF CMakeFiles/library.dir/num.cpp.o.d -o CMakeFiles/library.dir/num.cpp.o -c /home/sally/lean4/src/library/num.cpp

library/CMakeFiles/library.dir/num.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/library.dir/num.cpp.i"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sally/lean4/src/library/num.cpp > CMakeFiles/library.dir/num.cpp.i

library/CMakeFiles/library.dir/num.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/library.dir/num.cpp.s"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sally/lean4/src/library/num.cpp -o CMakeFiles/library.dir/num.cpp.s

library/CMakeFiles/library.dir/class.cpp.o: library/CMakeFiles/library.dir/flags.make
library/CMakeFiles/library.dir/class.cpp.o: /home/sally/lean4/src/library/class.cpp
library/CMakeFiles/library.dir/class.cpp.o: library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sally/lean4/build/release/stage1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object library/CMakeFiles/library.dir/class.cpp.o"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT library/CMakeFiles/library.dir/class.cpp.o -MF CMakeFiles/library.dir/class.cpp.o.d -o CMakeFiles/library.dir/class.cpp.o -c /home/sally/lean4/src/library/class.cpp

library/CMakeFiles/library.dir/class.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/library.dir/class.cpp.i"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sally/lean4/src/library/class.cpp > CMakeFiles/library.dir/class.cpp.i

library/CMakeFiles/library.dir/class.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/library.dir/class.cpp.s"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sally/lean4/src/library/class.cpp -o CMakeFiles/library.dir/class.cpp.s

library/CMakeFiles/library.dir/util.cpp.o: library/CMakeFiles/library.dir/flags.make
library/CMakeFiles/library.dir/util.cpp.o: /home/sally/lean4/src/library/util.cpp
library/CMakeFiles/library.dir/util.cpp.o: library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sally/lean4/build/release/stage1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object library/CMakeFiles/library.dir/util.cpp.o"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT library/CMakeFiles/library.dir/util.cpp.o -MF CMakeFiles/library.dir/util.cpp.o.d -o CMakeFiles/library.dir/util.cpp.o -c /home/sally/lean4/src/library/util.cpp

library/CMakeFiles/library.dir/util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/library.dir/util.cpp.i"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sally/lean4/src/library/util.cpp > CMakeFiles/library.dir/util.cpp.i

library/CMakeFiles/library.dir/util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/library.dir/util.cpp.s"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sally/lean4/src/library/util.cpp -o CMakeFiles/library.dir/util.cpp.s

library/CMakeFiles/library.dir/print.cpp.o: library/CMakeFiles/library.dir/flags.make
library/CMakeFiles/library.dir/print.cpp.o: /home/sally/lean4/src/library/print.cpp
library/CMakeFiles/library.dir/print.cpp.o: library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sally/lean4/build/release/stage1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object library/CMakeFiles/library.dir/print.cpp.o"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT library/CMakeFiles/library.dir/print.cpp.o -MF CMakeFiles/library.dir/print.cpp.o.d -o CMakeFiles/library.dir/print.cpp.o -c /home/sally/lean4/src/library/print.cpp

library/CMakeFiles/library.dir/print.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/library.dir/print.cpp.i"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sally/lean4/src/library/print.cpp > CMakeFiles/library.dir/print.cpp.i

library/CMakeFiles/library.dir/print.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/library.dir/print.cpp.s"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sally/lean4/src/library/print.cpp -o CMakeFiles/library.dir/print.cpp.s

library/CMakeFiles/library.dir/annotation.cpp.o: library/CMakeFiles/library.dir/flags.make
library/CMakeFiles/library.dir/annotation.cpp.o: /home/sally/lean4/src/library/annotation.cpp
library/CMakeFiles/library.dir/annotation.cpp.o: library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sally/lean4/build/release/stage1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object library/CMakeFiles/library.dir/annotation.cpp.o"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT library/CMakeFiles/library.dir/annotation.cpp.o -MF CMakeFiles/library.dir/annotation.cpp.o.d -o CMakeFiles/library.dir/annotation.cpp.o -c /home/sally/lean4/src/library/annotation.cpp

library/CMakeFiles/library.dir/annotation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/library.dir/annotation.cpp.i"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sally/lean4/src/library/annotation.cpp > CMakeFiles/library.dir/annotation.cpp.i

library/CMakeFiles/library.dir/annotation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/library.dir/annotation.cpp.s"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sally/lean4/src/library/annotation.cpp -o CMakeFiles/library.dir/annotation.cpp.s

library/CMakeFiles/library.dir/reducible.cpp.o: library/CMakeFiles/library.dir/flags.make
library/CMakeFiles/library.dir/reducible.cpp.o: /home/sally/lean4/src/library/reducible.cpp
library/CMakeFiles/library.dir/reducible.cpp.o: library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sally/lean4/build/release/stage1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object library/CMakeFiles/library.dir/reducible.cpp.o"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT library/CMakeFiles/library.dir/reducible.cpp.o -MF CMakeFiles/library.dir/reducible.cpp.o.d -o CMakeFiles/library.dir/reducible.cpp.o -c /home/sally/lean4/src/library/reducible.cpp

library/CMakeFiles/library.dir/reducible.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/library.dir/reducible.cpp.i"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sally/lean4/src/library/reducible.cpp > CMakeFiles/library.dir/reducible.cpp.i

library/CMakeFiles/library.dir/reducible.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/library.dir/reducible.cpp.s"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sally/lean4/src/library/reducible.cpp -o CMakeFiles/library.dir/reducible.cpp.s

library/CMakeFiles/library.dir/init_module.cpp.o: library/CMakeFiles/library.dir/flags.make
library/CMakeFiles/library.dir/init_module.cpp.o: /home/sally/lean4/src/library/init_module.cpp
library/CMakeFiles/library.dir/init_module.cpp.o: library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sally/lean4/build/release/stage1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object library/CMakeFiles/library.dir/init_module.cpp.o"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT library/CMakeFiles/library.dir/init_module.cpp.o -MF CMakeFiles/library.dir/init_module.cpp.o.d -o CMakeFiles/library.dir/init_module.cpp.o -c /home/sally/lean4/src/library/init_module.cpp

library/CMakeFiles/library.dir/init_module.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/library.dir/init_module.cpp.i"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sally/lean4/src/library/init_module.cpp > CMakeFiles/library.dir/init_module.cpp.i

library/CMakeFiles/library.dir/init_module.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/library.dir/init_module.cpp.s"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sally/lean4/src/library/init_module.cpp -o CMakeFiles/library.dir/init_module.cpp.s

library/CMakeFiles/library.dir/projection.cpp.o: library/CMakeFiles/library.dir/flags.make
library/CMakeFiles/library.dir/projection.cpp.o: /home/sally/lean4/src/library/projection.cpp
library/CMakeFiles/library.dir/projection.cpp.o: library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sally/lean4/build/release/stage1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object library/CMakeFiles/library.dir/projection.cpp.o"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT library/CMakeFiles/library.dir/projection.cpp.o -MF CMakeFiles/library.dir/projection.cpp.o.d -o CMakeFiles/library.dir/projection.cpp.o -c /home/sally/lean4/src/library/projection.cpp

library/CMakeFiles/library.dir/projection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/library.dir/projection.cpp.i"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sally/lean4/src/library/projection.cpp > CMakeFiles/library.dir/projection.cpp.i

library/CMakeFiles/library.dir/projection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/library.dir/projection.cpp.s"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sally/lean4/src/library/projection.cpp -o CMakeFiles/library.dir/projection.cpp.s

library/CMakeFiles/library.dir/aux_recursors.cpp.o: library/CMakeFiles/library.dir/flags.make
library/CMakeFiles/library.dir/aux_recursors.cpp.o: /home/sally/lean4/src/library/aux_recursors.cpp
library/CMakeFiles/library.dir/aux_recursors.cpp.o: library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sally/lean4/build/release/stage1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object library/CMakeFiles/library.dir/aux_recursors.cpp.o"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT library/CMakeFiles/library.dir/aux_recursors.cpp.o -MF CMakeFiles/library.dir/aux_recursors.cpp.o.d -o CMakeFiles/library.dir/aux_recursors.cpp.o -c /home/sally/lean4/src/library/aux_recursors.cpp

library/CMakeFiles/library.dir/aux_recursors.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/library.dir/aux_recursors.cpp.i"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sally/lean4/src/library/aux_recursors.cpp > CMakeFiles/library.dir/aux_recursors.cpp.i

library/CMakeFiles/library.dir/aux_recursors.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/library.dir/aux_recursors.cpp.s"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sally/lean4/src/library/aux_recursors.cpp -o CMakeFiles/library.dir/aux_recursors.cpp.s

library/CMakeFiles/library.dir/profiling.cpp.o: library/CMakeFiles/library.dir/flags.make
library/CMakeFiles/library.dir/profiling.cpp.o: /home/sally/lean4/src/library/profiling.cpp
library/CMakeFiles/library.dir/profiling.cpp.o: library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sally/lean4/build/release/stage1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object library/CMakeFiles/library.dir/profiling.cpp.o"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT library/CMakeFiles/library.dir/profiling.cpp.o -MF CMakeFiles/library.dir/profiling.cpp.o.d -o CMakeFiles/library.dir/profiling.cpp.o -c /home/sally/lean4/src/library/profiling.cpp

library/CMakeFiles/library.dir/profiling.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/library.dir/profiling.cpp.i"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sally/lean4/src/library/profiling.cpp > CMakeFiles/library.dir/profiling.cpp.i

library/CMakeFiles/library.dir/profiling.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/library.dir/profiling.cpp.s"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sally/lean4/src/library/profiling.cpp -o CMakeFiles/library.dir/profiling.cpp.s

library/CMakeFiles/library.dir/time_task.cpp.o: library/CMakeFiles/library.dir/flags.make
library/CMakeFiles/library.dir/time_task.cpp.o: /home/sally/lean4/src/library/time_task.cpp
library/CMakeFiles/library.dir/time_task.cpp.o: library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sally/lean4/build/release/stage1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object library/CMakeFiles/library.dir/time_task.cpp.o"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT library/CMakeFiles/library.dir/time_task.cpp.o -MF CMakeFiles/library.dir/time_task.cpp.o.d -o CMakeFiles/library.dir/time_task.cpp.o -c /home/sally/lean4/src/library/time_task.cpp

library/CMakeFiles/library.dir/time_task.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/library.dir/time_task.cpp.i"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sally/lean4/src/library/time_task.cpp > CMakeFiles/library.dir/time_task.cpp.i

library/CMakeFiles/library.dir/time_task.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/library.dir/time_task.cpp.s"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sally/lean4/src/library/time_task.cpp -o CMakeFiles/library.dir/time_task.cpp.s

library/CMakeFiles/library.dir/formatter.cpp.o: library/CMakeFiles/library.dir/flags.make
library/CMakeFiles/library.dir/formatter.cpp.o: /home/sally/lean4/src/library/formatter.cpp
library/CMakeFiles/library.dir/formatter.cpp.o: library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sally/lean4/build/release/stage1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object library/CMakeFiles/library.dir/formatter.cpp.o"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT library/CMakeFiles/library.dir/formatter.cpp.o -MF CMakeFiles/library.dir/formatter.cpp.o.d -o CMakeFiles/library.dir/formatter.cpp.o -c /home/sally/lean4/src/library/formatter.cpp

library/CMakeFiles/library.dir/formatter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/library.dir/formatter.cpp.i"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sally/lean4/src/library/formatter.cpp > CMakeFiles/library.dir/formatter.cpp.i

library/CMakeFiles/library.dir/formatter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/library.dir/formatter.cpp.s"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sally/lean4/src/library/formatter.cpp -o CMakeFiles/library.dir/formatter.cpp.s

library/CMakeFiles/library.dir/elab_environment.cpp.o: library/CMakeFiles/library.dir/flags.make
library/CMakeFiles/library.dir/elab_environment.cpp.o: /home/sally/lean4/src/library/elab_environment.cpp
library/CMakeFiles/library.dir/elab_environment.cpp.o: library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sally/lean4/build/release/stage1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Building CXX object library/CMakeFiles/library.dir/elab_environment.cpp.o"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT library/CMakeFiles/library.dir/elab_environment.cpp.o -MF CMakeFiles/library.dir/elab_environment.cpp.o.d -o CMakeFiles/library.dir/elab_environment.cpp.o -c /home/sally/lean4/src/library/elab_environment.cpp

library/CMakeFiles/library.dir/elab_environment.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/library.dir/elab_environment.cpp.i"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sally/lean4/src/library/elab_environment.cpp > CMakeFiles/library.dir/elab_environment.cpp.i

library/CMakeFiles/library.dir/elab_environment.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/library.dir/elab_environment.cpp.s"
	cd /home/sally/lean4/build/release/stage1/library && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sally/lean4/src/library/elab_environment.cpp -o CMakeFiles/library.dir/elab_environment.cpp.s

library: library/CMakeFiles/library.dir/expr_lt.cpp.o
library: library/CMakeFiles/library.dir/bin_app.cpp.o
library: library/CMakeFiles/library.dir/constants.cpp.o
library: library/CMakeFiles/library.dir/max_sharing.cpp.o
library: library/CMakeFiles/library.dir/module.cpp.o
library: library/CMakeFiles/library.dir/dynlib.cpp.o
library: library/CMakeFiles/library.dir/replace_visitor.cpp.o
library: library/CMakeFiles/library.dir/num.cpp.o
library: library/CMakeFiles/library.dir/class.cpp.o
library: library/CMakeFiles/library.dir/util.cpp.o
library: library/CMakeFiles/library.dir/print.cpp.o
library: library/CMakeFiles/library.dir/annotation.cpp.o
library: library/CMakeFiles/library.dir/reducible.cpp.o
library: library/CMakeFiles/library.dir/init_module.cpp.o
library: library/CMakeFiles/library.dir/projection.cpp.o
library: library/CMakeFiles/library.dir/aux_recursors.cpp.o
library: library/CMakeFiles/library.dir/profiling.cpp.o
library: library/CMakeFiles/library.dir/time_task.cpp.o
library: library/CMakeFiles/library.dir/formatter.cpp.o
library: library/CMakeFiles/library.dir/elab_environment.cpp.o
library: library/CMakeFiles/library.dir/build.make
.PHONY : library

# Rule to build all files generated by this target.
library/CMakeFiles/library.dir/build: library
.PHONY : library/CMakeFiles/library.dir/build

library/CMakeFiles/library.dir/clean:
	cd /home/sally/lean4/build/release/stage1/library && $(CMAKE_COMMAND) -P CMakeFiles/library.dir/cmake_clean.cmake
.PHONY : library/CMakeFiles/library.dir/clean

library/CMakeFiles/library.dir/depend:
	cd /home/sally/lean4/build/release/stage1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sally/lean4/src /home/sally/lean4/src/library /home/sally/lean4/build/release/stage1 /home/sally/lean4/build/release/stage1/library /home/sally/lean4/build/release/stage1/library/CMakeFiles/library.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : library/CMakeFiles/library.dir/depend

