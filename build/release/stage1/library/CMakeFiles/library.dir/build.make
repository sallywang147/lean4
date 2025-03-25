SHELL = /bin/sh
CMAKE_COMMAND = /usr/bin/cmake
CLANGPP_COMMAND = /usr/local/share/wasm-toolchain/sysroot/bin/clang++
RM = /usr/bin/cmake -E rm -f
EQUALS = =
CMAKE_SOURCE_DIR = /home/sally/lean4/src
CMAKE_BINARY_DIR = /home/sally/lean4/build/release/stage1

include library/CMakeFiles/library.dir/depend.make
include library/CMakeFiles/library.dir/compiler_depend.make
include library/CMakeFiles/library.dir/progress.make
include library/CMakeFiles/library.dir/flags.make

/home/sally/lean4/src/library/expr_lt.wasm: library/CMakeFiles/library.dir/flags.make \
    /home/sally/lean4/src/library/expr_lt.cpp \
    library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=$(CMAKE_BINARY_DIR)/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX source to wasm /home/sally/lean4/src/library/expr_lt.wasm"
	$(CLANGPP_COMMAND) -Os /home/sally/lean4/src/library/expr_lt.cpp -o /home/sally/lean4/src/library/expr_lt.wasm

/home/sally/lean4/src/library/bin_app.wasm: library/CMakeFiles/library.dir/flags.make \
    /home/sally/lean4/src/library/bin_app.cpp \
    library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=$(CMAKE_BINARY_DIR)/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX source to wasm /home/sally/lean4/src/library/bin_app.wasm"
	$(CLANGPP_COMMAND) -Os /home/sally/lean4/src/library/bin_app.cpp -o /home/sally/lean4/src/library/bin_app.wasm

/home/sally/lean4/src/library/constants.wasm: library/CMakeFiles/library.dir/flags.make \
    /home/sally/lean4/src/library/constants.cpp \
    library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=$(CMAKE_BINARY_DIR)/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX source to wasm /home/sally/lean4/src/library/constants.wasm"
	$(CLANGPP_COMMAND) -Os /home/sally/lean4/src/library/constants.cpp -o /home/sally/lean4/src/library/constants.wasm

/home/sally/lean4/src/library/max_sharing.wasm: library/CMakeFiles/library.dir/flags.make \
    /home/sally/lean4/src/library/max_sharing.cpp \
    library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=$(CMAKE_BINARY_DIR)/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX source to wasm /home/sally/lean4/src/library/max_sharing.wasm"
	$(CLANGPP_COMMAND) -Os /home/sally/lean4/src/library/max_sharing.cpp -o /home/sally/lean4/src/library/max_sharing.wasm

/ home/sally/lean4/src/library/module.wasm: library/CMakeFiles/library.dir/flags.make \
    /home/sally/lean4/src/library/module.cpp \
    library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=$(CMAKE_BINARY_DIR)/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX source to wasm /home/sally/lean4/src/library/module.wasm"
	$(CLANGPP_COMMAND) -Os /home/sally/lean4/src/library/module.cpp -o /home/sally/lean4/src/library/module.wasm

/ home/sally/lean4/src/library/dynlib.wasm: library/CMakeFiles/library.dir/flags.make \
    /home/sally/lean4/src/library/dynlib.cpp \
    library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=$(CMAKE_BINARY_DIR)/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX source to wasm /home/sally/lean4/src/library/dynlib.wasm"
	$(CLANGPP_COMMAND) -Os /home/sally/lean4/src/library/dynlib.cpp -o /home/sally/lean4/src/library/dynlib.wasm

/ home/sally/lean4/src/library/replace_visitor.wasm: library/CMakeFiles/library.dir/flags.make \
    /home/sally/lean4/src/library/replace_visitor.cpp \
    library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=$(CMAKE_BINARY_DIR)/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX source to wasm /home/sally/lean4/src/library/replace_visitor.wasm"
	$(CLANGPP_COMMAND) -Os /home/sally/lean4/src/library/replace_visitor.cpp -o /home/sally/lean4/src/library/replace_visitor.wasm

/ home/sally/lean4/src/library/num.wasm: library/CMakeFiles/library.dir/flags.make \
    /home/sally/lean4/src/library/num.cpp \
    library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=$(CMAKE_BINARY_DIR)/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX source to wasm /home/sally/lean4/src/library/num.wasm"
	$(CLANGPP_COMMAND) -Os /home/sally/lean4/src/library/num.cpp -o /home/sally/lean4/src/library/num.wasm

/ home/sally/lean4/src/library/class.wasm: library/CMakeFiles/library.dir/flags.make \
    /home/sally/lean4/src/library/class.cpp \
    library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=$(CMAKE_BINARY_DIR)/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX source to wasm /home/sally/lean4/src/library/class.wasm"
	$(CLANGPP_COMMAND) -Os /home/sally/lean4/src/library/class.cpp -o /home/sally/lean4/src/library/class.wasm

/ home/sally/lean4/src/library/util.wasm: library/CMakeFiles/library.dir/flags.make \
    /home/sally/lean4/src/library/util.cpp \
    library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=$(CMAKE_BINARY_DIR)/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX source to wasm /home/sally/lean4/src/library/util.wasm"
	$(CLANGPP_COMMAND) -Os /home/sally/lean4/src/library/util.cpp -o /home/sally/lean4/src/library/util.wasm

/ home/sally/lean4/src/library/print.wasm: library/CMakeFiles/library.dir/flags.make \
    /home/sally/lean4/src/library/print.cpp \
    library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=$(CMAKE_BINARY_DIR)/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX source to wasm /home/sally/lean4/src/library/print.wasm"
	$(CLANGPP_COMMAND) -Os /home/sally/lean4/src/library/print.cpp -o /home/sally/lean4/src/library/print.wasm

/ home/sally/lean4/src/library/annotation.wasm: library/CMakeFiles/library.dir/flags.make \
    /home/sally/lean4/src/library/annotation.cpp \
    library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=$(CMAKE_BINARY_DIR)/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX source to wasm /home/sally/lean4/src/library/annotation.wasm"
	$(CLANGPP_COMMAND) -Os /home/sally/lean4/src/library/annotation.cpp -o /home/sally/lean4/src/library/annotation.wasm

/ home/sally/lean4/src/library/reducible.wasm: library/CMakeFiles/library.dir/flags.make \
    /home/sally/lean4/src/library/reducible.cpp \
    library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=$(CMAKE_BINARY_DIR)/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX source to wasm /home/sally/lean4/src/library/reducible.wasm"
	$(CLANGPP_COMMAND) -Os /home/sally/lean4/src/library/reducible.cpp -o /home/sally/lean4/src/library/reducible.wasm

/ home/sally/lean4/src/library/init_module.wasm: library/CMakeFiles/library.dir/flags.make \
    /home/sally/lean4/src/library/init_module.cpp \
    library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=$(CMAKE_BINARY_DIR)/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX source to wasm /home/sally/lean4/src/library/init_module.wasm"
	$(CLANGPP_COMMAND) -Os /home/sally/lean4/src/library/init_module.cpp -o /home/sally/lean4/src/library/init_module.wasm

/ home/sally/lean4/src/library/projection.wasm: library/CMakeFiles/library.dir/flags.make \
    /home/sally/lean4/src/library/projection.cpp \
    library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=$(CMAKE_BINARY_DIR)/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX source to wasm /home/sally/lean4/src/library/projection.wasm"
	$(CLANGPP_COMMAND) -Os /home/sally/lean4/src/library/projection.cpp -o /home/sally/lean4/src/library/projection.wasm

/ home/sally/lean4/src/library/aux_recursors.wasm: library/CMakeFiles/library.dir/flags.make \
    /home/sally/lean4/src/library/aux_recursors.cpp \
    library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=$(CMAKE_BINARY_DIR)/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX source to wasm /home/sally/lean4/src/library/aux_recursors.wasm"
	$(CLANGPP_COMMAND) -Os /home/sally/lean4/src/library/aux_recursors.cpp -o /home/sally/lean4/src/library/aux_recursors.wasm

/ home/sally/lean4/src/library/profiling.wasm: library/CMakeFiles/library.dir/flags.make \
    /home/sally/lean4/src/library/profiling.cpp \
    library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=$(CMAKE_BINARY_DIR)/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX source to wasm /home/sally/lean4/src/library/profiling.wasm"
	$(CLANGPP_COMMAND) -Os /home/sally/lean4/src/library/profiling.cpp -o /home/sally/lean4/src/library/profiling.wasm

/ home/sally/lean4/src/library/time_task.wasm: library/CMakeFiles/library.dir/flags.make \
    /home/sally/lean4/src/library/time_task.cpp \
    library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=$(CMAKE_BINARY_DIR)/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX source to wasm /home/sally/lean4/src/library/time_task.wasm"
	$(CLANGPP_COMMAND) -Os /home/sally/lean4/src/library/time_task.cpp -o /home/sally/lean4/src/library/time_task.wasm

/ home/sally/lean4/src/library/formatter.wasm: library/CMakeFiles/library.dir/flags.make \
    /home/sally/lean4/src/library/formatter.cpp \
    library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=$(CMAKE_BINARY_DIR)/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX source to wasm /home/sally/lean4/src/library/formatter.wasm"
	$(CLANGPP_COMMAND) -Os /home/sally/lean4/src/library/formatter.cpp -o /home/sally/lean4/src/library/formatter.wasm

/ home/sally/lean4/src/library/elab_environment.wasm: library/CMakeFiles/library.dir/flags.make \
    /home/sally/lean4/src/library/elab_environment.cpp \
    library/CMakeFiles/library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=$(CMAKE_BINARY_DIR)/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Building CXX source to wasm /home/sally/lean4/src/library/elab_environment.wasm"
	$(CLANGPP_COMMAND) -Os /home/sally/lean4/src/library/elab_environment.cpp -o /home/sally/lean4/src/library/elab_environment.wasm

library: /home/sally/lean4/src/library/expr_lt.wasm \
         /home/sally/lean4/src/library/bin_app.wasm \
         /home/sally/lean4/src/library/constants.wasm \
         /home/sally/lean4/src/library/max_sharing.wasm \
         /home/sally/lean4/src/library/module.wasm \
         /home/sally/lean4/src/library/dynlib.wasm \
         /home/sally/lean4/src/library/replace_visitor.wasm \
         /home/sally/lean4/src/library/num.wasm \
         /home/sally/lean4/src/library/class.wasm \
         /home/sally/lean4/src/library/util.wasm \
         /home/sally/lean4/src/library/print.wasm \
         /home/sally/lean4/src/library/annotation.wasm \
         /home/sally/lean4/src/library/reducible.wasm \
         /home/sally/lean4/src/library/init_module.wasm \
         /home/sally/lean4/src/library/projection.wasm \
         /home/sally/lean4/src/library/aux_recursors.wasm \
         /home/sally/lean4/src/library/profiling.wasm \
         /home/sally/lean4/src/library/time_task.wasm \
         /home/sally/lean4/src/library/formatter.wasm \
         /home/sally/lean4/src/library/elab_environment.wasm
.PHONY : library
