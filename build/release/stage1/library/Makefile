default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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

SHELL = /bin/sh
CMAKE_COMMAND = /usr/bin/cmake
RM = /usr/bin/cmake -E rm -f
EQUALS = =
CMAKE_SOURCE_DIR = /home/sally/lean4/src
CMAKE_BINARY_DIR = /home/sally/lean4/build/release/stage1

#=============================================================================
# Targets provided globally by CMake.
test:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running tests..."
	/usr/bin/ctest --force-new-ctest-process $(ARGS)
.PHONY : test

test/fast: test
.PHONY : test/fast

edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

list_install_components/fast: list_install_components
.PHONY : list_install_components/fast

install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install

install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

install/local/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local/fast

install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

install/strip/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip/fast

all: cmake_check_build_system
	cd $(CMAKE_BINARY_DIR) && $(CMAKE_COMMAND) -E cmake_progress_start $(CMAKE_BINARY_DIR)/CMakeFiles $(CMAKE_BINARY_DIR)/library//CMakeFiles/progress.marks
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 library/all
	$(CMAKE_COMMAND) -E cmake_progress_start $(CMAKE_BINARY_DIR)/CMakeFiles 0
.PHONY : all

clean:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 library/clean
.PHONY : clean

clean/fast: clean
.PHONY : clean/fast

preinstall: all
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 library/preinstall
.PHONY : preinstall

preinstall/fast:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 library/preinstall
.PHONY : preinstall/fast

depend:
	cd $(CMAKE_BINARY_DIR) && $(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

library/CMakeFiles/library.dir/rule:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 library/CMakeFiles/library.dir/rule
.PHONY : library/CMakeFiles/library.dir/rule

library: library/CMakeFiles/library.dir/rule
.PHONY : library

library/fast:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f library/CMakeFiles/library.dir/build.make library/CMakeFiles/library.dir/build
.PHONY : library/fast

#----------------------------------------------------------------------------
# Replace object file targets with wasm targets

annotation.wasm: annotation.cpp.wasm
.PHONY : annotation.wasm

# target to build a wasm file
annotation.cpp.wasm:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f library/CMakeFiles/library.dir/build.make library/CMakeFiles/library.dir/annotation.cpp.wasm
.PHONY : annotation.cpp.wasm

annotation.i: annotation.cpp.i
.PHONY : annotation.i

annotation.s: annotation.cpp.s
.PHONY : annotation.s

aux_recursors.wasm: aux_recursors.cpp.wasm
.PHONY : aux_recursors.wasm

aux_recursors.cpp.wasm:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f library/CMakeFiles/library.dir/build.make library/CMakeFiles/library.dir/aux_recursors.cpp.wasm
.PHONY : aux_recursors.cpp.wasm

aux_recursors.i: aux_recursors.cpp.i
.PHONY : aux_recursors.i

aux_recursors.s: aux_recursors.cpp.s
.PHONY : aux_recursors.s

bin_app.wasm: bin_app.cpp.wasm
.PHONY : bin_app.wasm

bin_app.cpp.wasm:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f library/CMakeFiles/library.dir/build.make library/CMakeFiles/library.dir/bin_app.cpp.wasm
.PHONY : bin_app.cpp.wasm

bin_app.i: bin_app.cpp.i
.PHONY : bin_app.i

bin_app.s: bin_app.cpp.s
.PHONY : bin_app.s

class.wasm: class.cpp.wasm
.PHONY : class.wasm

class.cpp.wasm:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f library/CMakeFiles/library.dir/build.make library/CMakeFiles/library.dir/class.cpp.wasm
.PHONY : class.cpp.wasm

class.i: class.cpp.i
.PHONY : class.i

class.s: class.cpp.s
.PHONY : class.s

constants.wasm: constants.cpp.wasm
.PHONY : constants.wasm

constants.cpp.wasm:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f library/CMakeFiles/library.dir/build.make library/CMakeFiles/library.dir/constants.cpp.wasm
.PHONY : constants.cpp.wasm

constants.i: constants.cpp.i
.PHONY : constants.i

constants.s: constants.cpp.s
.PHONY : constants.s

dynlib.wasm: dynlib.cpp.wasm
.PHONY : dynlib.wasm

dynlib.cpp.wasm:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f library/CMakeFiles/library.dir/build.make library/CMakeFiles/library.dir/dynlib.cpp.wasm
.PHONY : dynlib.cpp.wasm

dynlib.i: dynlib.cpp.i
.PHONY : dynlib.i

dynlib.s: dynlib.cpp.s
.PHONY : dynlib.s

elab_environment.wasm: elab_environment.cpp.wasm
.PHONY : elab_environment.wasm

elab_environment.cpp.wasm:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f library/CMakeFiles/library.dir/build.make library/CMakeFiles/library.dir/elab_environment.cpp.wasm
.PHONY : elab_environment.cpp.wasm

elab_environment.i: elab_environment.cpp.i
.PHONY : elab_environment.i

elab_environment.s: elab_environment.cpp.s
.PHONY : elab_environment.s

expr_lt.wasm: expr_lt.cpp.wasm
.PHONY : expr_lt.wasm

expr_lt.cpp.wasm:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f library/CMakeFiles/library.dir/build.make library/CMakeFiles/library.dir/expr_lt.cpp.wasm
.PHONY : expr_lt.cpp.wasm

expr_lt.i: expr_lt.cpp.i
.PHONY : expr_lt.i

expr_lt.s: expr_lt.cpp.s
.PHONY : expr_lt.s

formatter.wasm: formatter.cpp.wasm
.PHONY : formatter.wasm

formatter.cpp.wasm:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f library/CMakeFiles/library.dir/build.make library/CMakeFiles/library.dir/formatter.cpp.wasm
.PHONY : formatter.cpp.wasm

formatter.i: formatter.cpp.i
.PHONY : formatter.i

formatter.s: formatter.cpp.s
.PHONY : formatter.s

init_module.wasm: init_module.cpp.wasm
.PHONY : init_module.wasm

init_module.cpp.wasm:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f library/CMakeFiles/library.dir/build.make library/CMakeFiles/library.dir/init_module.cpp.wasm
.PHONY : init_module.cpp.wasm

init_module.i: init_module.cpp.i
.PHONY : init_module.i

init_module.s: init_module.cpp.s
.PHONY : init_module.s

max_sharing.wasm: max_sharing.cpp.wasm
.PHONY : max_sharing.wasm

max_sharing.cpp.wasm:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f library/CMakeFiles/library.dir/build.make library/CMakeFiles/library.dir/max_sharing.cpp.wasm
.PHONY : max_sharing.cpp.wasm

max_sharing.i: max_sharing.cpp.i
.PHONY : max_sharing.i

max_sharing.s: max_sharing.cpp.s
.PHONY : max_sharing.s

module.wasm: module.cpp.wasm
.PHONY : module.wasm

module.cpp.wasm:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f library/CMakeFiles/library.dir/build.make library/CMakeFiles/library.dir/module.cpp.wasm
.PHONY : module.cpp.wasm

module.i: module.cpp.i
.PHONY : module.i

module.s: module.cpp.s
.PHONY : module.s

num.wasm: num.cpp.wasm
.PHONY : num.wasm

num.cpp.wasm:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f library/CMakeFiles/library.dir/build.make library/CMakeFiles/library.dir/num.cpp.wasm
.PHONY : num.cpp.wasm

num.i: num.cpp.i
.PHONY : num.i

num.s: num.cpp.s
.PHONY : num.s

print.wasm: print.cpp.wasm
.PHONY : print.wasm

print.cpp.wasm:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f library/CMakeFiles/library.dir/build.make library/CMakeFiles/library.dir/print.cpp.wasm
.PHONY : print.cpp.wasm

print.i: print.cpp.i
.PHONY : print.i

print.s: print.cpp.s
.PHONY : print.s

profiling.wasm: profiling.cpp.wasm
.PHONY : profiling.wasm

profiling.cpp.wasm:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f library/CMakeFiles/library.dir/build.make library/CMakeFiles/library.dir/profiling.cpp.wasm
.PHONY : profiling.cpp.wasm

profiling.i: profiling.cpp.i
.PHONY : profiling.i

profiling.s: profiling.cpp.s
.PHONY : profiling.s

projection.wasm: projection.cpp.wasm
.PHONY : projection.wasm

projection.cpp.wasm:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f library/CMakeFiles/library.dir/build.make library/CMakeFiles/library.dir/projection.cpp.wasm
.PHONY : projection.cpp.wasm

projection.i: projection.cpp.i
.PHONY : projection.i

projection.s: projection.cpp.s
.PHONY : projection.s

reducible.wasm: reducible.cpp.wasm
.PHONY : reducible.wasm

reducible.cpp.wasm:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f library/CMakeFiles/library.dir/build.make library/CMakeFiles/library.dir/reducible.cpp.wasm
.PHONY : reducible.cpp.wasm

reducible.i: reducible.cpp.i
.PHONY : reducible.i

reducible.s: reducible.cpp.s
.PHONY : reducible.s

replace_visitor.wasm: replace_visitor.cpp.wasm
.PHONY : replace_visitor.wasm

replace_visitor.cpp.wasm:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f library/CMakeFiles/library.dir/build.make library/CMakeFiles/library.dir/replace_visitor.cpp.wasm
.PHONY : replace_visitor.cpp.wasm

replace_visitor.i: replace_visitor.cpp.i
.PHONY : replace_visitor.i

replace_visitor.s: replace_visitor.cpp.s
.PHONY : replace_visitor.s

time_task.wasm: time_task.cpp.wasm
.PHONY : time_task.wasm

time_task.cpp.wasm:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f library/CMakeFiles/library.dir/build.make library/CMakeFiles/library.dir/time_task.cpp.wasm
.PHONY : time_task.cpp.wasm

time_task.i: time_task.cpp.i
.PHONY : time_task.i

time_task.s: time_task.cpp.s
.PHONY : time_task.s

util.wasm: util.cpp.wasm
.PHONY : util.wasm

util.cpp.wasm:
	cd $(CMAKE_BINARY_DIR) && $(MAKE) $(MAKESILENT) -f library/CMakeFiles/library.dir/build.make library/CMakeFiles/library.dir/util.cpp.wasm
.PHONY : util.cpp.wasm

util.i: util.cpp.i
.PHONY : util.i

util.s: util.cpp.s
.PHONY : util.s

#----------------------------------------------------------------------------
# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... install"
	@echo "... install/local"
	@echo "... install/strip"
	@echo "... list_install_components"
	@echo "... rebuild_cache"
	@echo "... test"
	@echo "... library"
	@echo "... annotation.wasm"
	@echo "... annotation.i"
	@echo "... annotation.s"
	@echo "... aux_recursors.wasm"
	@echo "... aux_recursors.i"
	@echo "... aux_recursors.s"
	@echo "... bin_app.wasm"
	@echo "... bin_app.i"
	@echo "... bin_app.s"
	@echo "... class.wasm"
	@echo "... class.i"
	@echo "... class.s"
	@echo "... constants.wasm"
	@echo "... constants.i"
	@echo "... constants.s"
	@echo "... dynlib.wasm"
	@echo "... dynlib.i"
	@echo "... dynlib.s"
	@echo "... elab_environment.wasm"
	@echo "... elab_environment.i"
	@echo "... elab_environment.s"
	@echo "... expr_lt.wasm"
	@echo "... expr_lt.i"
	@echo "... expr_lt.s"
	@echo "... formatter.wasm"
	@echo "... formatter.i"
	@echo "... formatter.s"
	@echo "... init_module.wasm"
	@echo "... init_module.i"
	@echo "... init_module.s"
	@echo "... max_sharing.wasm"
	@echo "... max_sharing.i"
	@echo "... max_sharing.s"
	@echo "... module.wasm"
	@echo "... module.i"
	@echo "... module.s"
	@echo "... num.wasm"
	@echo "... num.i"
	@echo "... num.s"
	@echo "... print.wasm"
	@echo "... print.i"
	@echo "... print.s"
	@echo "... profiling.wasm"
	@echo "... profiling.i"
	@echo "... profiling.s"
	@echo "... projection.wasm"
	@echo "... projection.i"
	@echo "... projection.s"
	@echo "... reducible.wasm"
	@echo "... reducible.i"
	@echo "... reducible.s"
	@echo "... replace_visitor.wasm"
	@echo "... replace_visitor.i"
	@echo "... replace_visitor.s"
	@echo "... time_task.wasm"
	@echo "... time_task.i"
	@echo "... time_task.s"
	@echo "... util.wasm"
	@echo "... util.i"
	@echo "... util.s"
.PHONY : help

#=============================================================================
# Special targets to cleanup operation of make.

cmake_check_build_system:
	cd $(CMAKE_BINARY_DIR) && $(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
