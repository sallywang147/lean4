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
include CMakeFiles/leancpp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/leancpp.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/leancpp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/leancpp.dir/flags.make

# Object files for target leancpp
leancpp_OBJECTS =

# External object files for target leancpp
leancpp_EXTERNAL_OBJECTS = \
"/home/sally/lean4/build/release/stage1/util/CMakeFiles/util.dir/name.cpp.o" \
"/home/sally/lean4/build/release/stage1/util/CMakeFiles/util.dir/name_set.cpp.o" \
"/home/sally/lean4/build/release/stage1/util/CMakeFiles/util.dir/escaped.cpp.o" \
"/home/sally/lean4/build/release/stage1/util/CMakeFiles/util.dir/bit_tricks.cpp.o" \
"/home/sally/lean4/build/release/stage1/util/CMakeFiles/util.dir/ascii.cpp.o" \
"/home/sally/lean4/build/release/stage1/util/CMakeFiles/util.dir/path.cpp.o" \
"/home/sally/lean4/build/release/stage1/util/CMakeFiles/util.dir/lbool.cpp.o" \
"/home/sally/lean4/build/release/stage1/util/CMakeFiles/util.dir/init_module.cpp.o" \
"/home/sally/lean4/build/release/stage1/util/CMakeFiles/util.dir/list_fn.cpp.o" \
"/home/sally/lean4/build/release/stage1/util/CMakeFiles/util.dir/timeit.cpp.o" \
"/home/sally/lean4/build/release/stage1/util/CMakeFiles/util.dir/timer.cpp.o" \
"/home/sally/lean4/build/release/stage1/util/CMakeFiles/util.dir/name_generator.cpp.o" \
"/home/sally/lean4/build/release/stage1/util/CMakeFiles/util.dir/kvmap.cpp.o" \
"/home/sally/lean4/build/release/stage1/util/CMakeFiles/util.dir/map_foreach.cpp.o" \
"/home/sally/lean4/build/release/stage1/util/CMakeFiles/util.dir/options.cpp.o" \
"/home/sally/lean4/build/release/stage1/util/CMakeFiles/util.dir/option_declarations.cpp.o" \
"/home/sally/lean4/build/release/stage1/util/CMakeFiles/util.dir/ffi.cpp.o" \
"/home/sally/lean4/build/release/stage1/kernel/CMakeFiles/kernel.dir/level.cpp.o" \
"/home/sally/lean4/build/release/stage1/kernel/CMakeFiles/kernel.dir/expr.cpp.o" \
"/home/sally/lean4/build/release/stage1/kernel/CMakeFiles/kernel.dir/expr_eq_fn.cpp.o" \
"/home/sally/lean4/build/release/stage1/kernel/CMakeFiles/kernel.dir/for_each_fn.cpp.o" \
"/home/sally/lean4/build/release/stage1/kernel/CMakeFiles/kernel.dir/replace_fn.cpp.o" \
"/home/sally/lean4/build/release/stage1/kernel/CMakeFiles/kernel.dir/abstract.cpp.o" \
"/home/sally/lean4/build/release/stage1/kernel/CMakeFiles/kernel.dir/instantiate.cpp.o" \
"/home/sally/lean4/build/release/stage1/kernel/CMakeFiles/kernel.dir/local_ctx.cpp.o" \
"/home/sally/lean4/build/release/stage1/kernel/CMakeFiles/kernel.dir/declaration.cpp.o" \
"/home/sally/lean4/build/release/stage1/kernel/CMakeFiles/kernel.dir/environment.cpp.o" \
"/home/sally/lean4/build/release/stage1/kernel/CMakeFiles/kernel.dir/type_checker.cpp.o" \
"/home/sally/lean4/build/release/stage1/kernel/CMakeFiles/kernel.dir/init_module.cpp.o" \
"/home/sally/lean4/build/release/stage1/kernel/CMakeFiles/kernel.dir/expr_cache.cpp.o" \
"/home/sally/lean4/build/release/stage1/kernel/CMakeFiles/kernel.dir/equiv_manager.cpp.o" \
"/home/sally/lean4/build/release/stage1/kernel/CMakeFiles/kernel.dir/quot.cpp.o" \
"/home/sally/lean4/build/release/stage1/kernel/CMakeFiles/kernel.dir/inductive.cpp.o" \
"/home/sally/lean4/build/release/stage1/kernel/CMakeFiles/kernel.dir/trace.cpp.o" \
"/home/sally/lean4/build/release/stage1/kernel/CMakeFiles/kernel.dir/instantiate_mvars.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/CMakeFiles/library.dir/expr_lt.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/CMakeFiles/library.dir/bin_app.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/CMakeFiles/library.dir/constants.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/CMakeFiles/library.dir/max_sharing.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/CMakeFiles/library.dir/module.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/CMakeFiles/library.dir/dynlib.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/CMakeFiles/library.dir/replace_visitor.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/CMakeFiles/library.dir/num.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/CMakeFiles/library.dir/class.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/CMakeFiles/library.dir/util.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/CMakeFiles/library.dir/print.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/CMakeFiles/library.dir/annotation.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/CMakeFiles/library.dir/reducible.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/CMakeFiles/library.dir/init_module.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/CMakeFiles/library.dir/projection.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/CMakeFiles/library.dir/aux_recursors.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/CMakeFiles/library.dir/profiling.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/CMakeFiles/library.dir/time_task.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/CMakeFiles/library.dir/formatter.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/CMakeFiles/library.dir/elab_environment.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/constructions/CMakeFiles/constructions.dir/cases_on.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/constructions/CMakeFiles/constructions.dir/no_confusion.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/constructions/CMakeFiles/constructions.dir/init_module.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/constructions/CMakeFiles/constructions.dir/util.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/init_module.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/compiler.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/util.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/lcnf.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/csimp.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/elim_dead_let.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/cse.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/erase_irrelevant.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/specialize.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/lambda_lifting.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/extract_closed.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/simp_app_args.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/llnf.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/ll_infer_type.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/reduce_arity.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/closed_term_cache.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/export_attribute.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/extern_attribute.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/borrowed_annotation.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/init_attribute.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/eager_lambda_lifting.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/struct_cases_on.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/find_jp.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/ir.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/implemented_by_attribute.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/ir_interpreter.cpp.o" \
"/home/sally/lean4/build/release/stage1/library/compiler/CMakeFiles/compiler.dir/llvm.cpp.o" \
"/home/sally/lean4/build/release/stage1/initialize/CMakeFiles/initialize.dir/init.cpp.o"

lib/lean/libleancpp.a: util/CMakeFiles/util.dir/name.cpp.o
lib/lean/libleancpp.a: util/CMakeFiles/util.dir/name_set.cpp.o
lib/lean/libleancpp.a: util/CMakeFiles/util.dir/escaped.cpp.o
lib/lean/libleancpp.a: util/CMakeFiles/util.dir/bit_tricks.cpp.o
lib/lean/libleancpp.a: util/CMakeFiles/util.dir/ascii.cpp.o
lib/lean/libleancpp.a: util/CMakeFiles/util.dir/path.cpp.o
lib/lean/libleancpp.a: util/CMakeFiles/util.dir/lbool.cpp.o
lib/lean/libleancpp.a: util/CMakeFiles/util.dir/init_module.cpp.o
lib/lean/libleancpp.a: util/CMakeFiles/util.dir/list_fn.cpp.o
lib/lean/libleancpp.a: util/CMakeFiles/util.dir/timeit.cpp.o
lib/lean/libleancpp.a: util/CMakeFiles/util.dir/timer.cpp.o
lib/lean/libleancpp.a: util/CMakeFiles/util.dir/name_generator.cpp.o
lib/lean/libleancpp.a: util/CMakeFiles/util.dir/kvmap.cpp.o
lib/lean/libleancpp.a: util/CMakeFiles/util.dir/map_foreach.cpp.o
lib/lean/libleancpp.a: util/CMakeFiles/util.dir/options.cpp.o
lib/lean/libleancpp.a: util/CMakeFiles/util.dir/option_declarations.cpp.o
lib/lean/libleancpp.a: util/CMakeFiles/util.dir/ffi.cpp.o
lib/lean/libleancpp.a: kernel/CMakeFiles/kernel.dir/level.cpp.o
lib/lean/libleancpp.a: kernel/CMakeFiles/kernel.dir/expr.cpp.o
lib/lean/libleancpp.a: kernel/CMakeFiles/kernel.dir/expr_eq_fn.cpp.o
lib/lean/libleancpp.a: kernel/CMakeFiles/kernel.dir/for_each_fn.cpp.o
lib/lean/libleancpp.a: kernel/CMakeFiles/kernel.dir/replace_fn.cpp.o
lib/lean/libleancpp.a: kernel/CMakeFiles/kernel.dir/abstract.cpp.o
lib/lean/libleancpp.a: kernel/CMakeFiles/kernel.dir/instantiate.cpp.o
lib/lean/libleancpp.a: kernel/CMakeFiles/kernel.dir/local_ctx.cpp.o
lib/lean/libleancpp.a: kernel/CMakeFiles/kernel.dir/declaration.cpp.o
lib/lean/libleancpp.a: kernel/CMakeFiles/kernel.dir/environment.cpp.o
lib/lean/libleancpp.a: kernel/CMakeFiles/kernel.dir/type_checker.cpp.o
lib/lean/libleancpp.a: kernel/CMakeFiles/kernel.dir/init_module.cpp.o
lib/lean/libleancpp.a: kernel/CMakeFiles/kernel.dir/expr_cache.cpp.o
lib/lean/libleancpp.a: kernel/CMakeFiles/kernel.dir/equiv_manager.cpp.o
lib/lean/libleancpp.a: kernel/CMakeFiles/kernel.dir/quot.cpp.o
lib/lean/libleancpp.a: kernel/CMakeFiles/kernel.dir/inductive.cpp.o
lib/lean/libleancpp.a: kernel/CMakeFiles/kernel.dir/trace.cpp.o
lib/lean/libleancpp.a: kernel/CMakeFiles/kernel.dir/instantiate_mvars.cpp.o
lib/lean/libleancpp.a: library/CMakeFiles/library.dir/expr_lt.cpp.o
lib/lean/libleancpp.a: library/CMakeFiles/library.dir/bin_app.cpp.o
lib/lean/libleancpp.a: library/CMakeFiles/library.dir/constants.cpp.o
lib/lean/libleancpp.a: library/CMakeFiles/library.dir/max_sharing.cpp.o
lib/lean/libleancpp.a: library/CMakeFiles/library.dir/module.cpp.o
lib/lean/libleancpp.a: library/CMakeFiles/library.dir/dynlib.cpp.o
lib/lean/libleancpp.a: library/CMakeFiles/library.dir/replace_visitor.cpp.o
lib/lean/libleancpp.a: library/CMakeFiles/library.dir/num.cpp.o
lib/lean/libleancpp.a: library/CMakeFiles/library.dir/class.cpp.o
lib/lean/libleancpp.a: library/CMakeFiles/library.dir/util.cpp.o
lib/lean/libleancpp.a: library/CMakeFiles/library.dir/print.cpp.o
lib/lean/libleancpp.a: library/CMakeFiles/library.dir/annotation.cpp.o
lib/lean/libleancpp.a: library/CMakeFiles/library.dir/reducible.cpp.o
lib/lean/libleancpp.a: library/CMakeFiles/library.dir/init_module.cpp.o
lib/lean/libleancpp.a: library/CMakeFiles/library.dir/projection.cpp.o
lib/lean/libleancpp.a: library/CMakeFiles/library.dir/aux_recursors.cpp.o
lib/lean/libleancpp.a: library/CMakeFiles/library.dir/profiling.cpp.o
lib/lean/libleancpp.a: library/CMakeFiles/library.dir/time_task.cpp.o
lib/lean/libleancpp.a: library/CMakeFiles/library.dir/formatter.cpp.o
lib/lean/libleancpp.a: library/CMakeFiles/library.dir/elab_environment.cpp.o
lib/lean/libleancpp.a: library/constructions/CMakeFiles/constructions.dir/cases_on.cpp.o
lib/lean/libleancpp.a: library/constructions/CMakeFiles/constructions.dir/no_confusion.cpp.o
lib/lean/libleancpp.a: library/constructions/CMakeFiles/constructions.dir/init_module.cpp.o
lib/lean/libleancpp.a: library/constructions/CMakeFiles/constructions.dir/util.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/init_module.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/compiler.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/util.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/lcnf.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/csimp.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/elim_dead_let.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/cse.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/erase_irrelevant.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/specialize.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/lambda_lifting.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/extract_closed.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/simp_app_args.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/llnf.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/ll_infer_type.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/reduce_arity.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/closed_term_cache.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/export_attribute.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/extern_attribute.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/borrowed_annotation.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/init_attribute.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/eager_lambda_lifting.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/struct_cases_on.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/find_jp.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/ir.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/implemented_by_attribute.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/ir_interpreter.cpp.o
lib/lean/libleancpp.a: library/compiler/CMakeFiles/compiler.dir/llvm.cpp.o
lib/lean/libleancpp.a: initialize/CMakeFiles/initialize.dir/init.cpp.o
lib/lean/libleancpp.a: CMakeFiles/leancpp.dir/build.make
lib/lean/libleancpp.a: CMakeFiles/leancpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/sally/lean4/build/release/stage1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX static library lib/lean/libleancpp.a"
	$(CMAKE_COMMAND) -P CMakeFiles/leancpp.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/leancpp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/leancpp.dir/build: lib/lean/libleancpp.a
.PHONY : CMakeFiles/leancpp.dir/build

CMakeFiles/leancpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/leancpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/leancpp.dir/clean

CMakeFiles/leancpp.dir/depend:
	cd /home/sally/lean4/build/release/stage1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sally/lean4/src /home/sally/lean4/src /home/sally/lean4/build/release/stage1 /home/sally/lean4/build/release/stage1 /home/sally/lean4/build/release/stage1/CMakeFiles/leancpp.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/leancpp.dir/depend

