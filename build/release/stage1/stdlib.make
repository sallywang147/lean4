# LEAN_BASH: Makes the Bash shell used by the Lean build configurable.
# On Windows, when CMake/Make is spawned directly (e.g., VSCode's CMake Tools),
# it lacks a proper shell environment, so we need to manually point it to Bash.
LEAN_BASH ?= /usr/bin/env bash
SHELL := $(LEAN_BASH) -eo pipefail

# any absolute path to the stdlib breaks the Makefile
export LEAN_PATH=
ifeq "OFF 1" "ON 1"
  export LEAN_CC=/usr/bin/cc
else
  export LEAN_CC=/usr/bin/ccache /usr/bin/cc
endif
export LEAN_ABORT_ON_PANIC=1

# LEAN_OPTS: don't use native code (except for primitives) since it is from the previous stage
# MORE_DEPS: rebuild the stdlib whenever the compiler has changed
LEANMAKE_OPTS=\
	LEAN="/home/sally/lean4/build/release/stage0/bin/lean"\
	LEANC="/home/sally/lean4/build/release/stage1/leanc.sh"\
	OUT="../build/release/stage1/lib"\
	LIB_OUT="../build/release/stage1/lib/lean"\
	OLEAN_OUT="../build/release/stage1/lib/lean"\
	BIN_OUT="/home/sally/lean4/build/release/stage1/bin"\
	LEAN_OPTS+=" -DElab.async=true"\
	LEANC_OPTS+=" -I/home/sally/lean4/build/release/stage1/include -O3 -DNDEBUG"\
	LEAN_AR="/usr/bin/ar"\
	MORE_DEPS+="/home/sally/lean4/build/release/stage0/bin/lean"\
	\
	CMAKE_LIKE_OUTPUT=1

ifeq "1" "0"
  LEANMAKE_OPTS+=C_ONLY=1 C_OUT=/home/sally/lean4/src/../stdlib/
endif

# These can be phony since the inner Makefile/Lake will have the correct dependencies and avoid rebuilds
.PHONY: Init Std Lean leanshared Lake libLake_shared lake lean

# As the build directory is part of the lakefile.toml, only use it for stage 1 for now
ifeq "OFF 1" "ON 1"

# build in parallel
Init:
	/home/sally/lean4/build/release/stage0/bin/lake build Init Std Lean Lake LakeMain

Std Lean Lake: Init

else

Init:
	@mkdir -p "../build/release/stage1/lib/lean/Lean" "../build/release/stage1/lib/lean/Lake" "../build/release/stage1/lib/lean/Std"
# Use `+` to use the Make jobserver with `leanmake` for parallelized builds
# Build `.olean/.o`s of downstream libraries as well for better parallelism
	+"/home/sally/lean4/build/release/stage1/bin/leanmake" objs lib lib.export PKG=Init $(LEANMAKE_OPTS) \
	  EXTRA_SRC_ROOTS="Std Std.lean Lean Lean.lean"

Std: Init
	+"/home/sally/lean4/build/release/stage1/bin/leanmake" lib lib.export PKG=Std $(LEANMAKE_OPTS)

Lean: Std
	+"/home/sally/lean4/build/release/stage1/bin/leanmake" lib lib.export PKG=Lean $(LEANMAKE_OPTS)

Lake:
# lake is in its own subdirectory, so must adjust relative paths...
	+"/home/sally/lean4/build/release/stage1/bin/leanmake" -C lake lib lib.export ../../build/release/stage1/lib/temp/LakeMain.o.export  PKG=Lake $(LEANMAKE_OPTS) OUT="../../build/release/stage1/lib" LIB_OUT="../../build/release/stage1/lib/lean" TEMP_OUT="../../build/release/stage1/lib/temp" OLEAN_OUT="../../build/release/stage1/lib/lean" EXTRA_SRC_ROOTS=LakeMain.lean

endif

../build/release/stage1/lib/temp/empty.c:
	touch $@

# the following targets are all invoked by separate `make` calls; see src/CMakeLists.txt

# we specify the precise file names here to avoid rebuilds
/home/sally/lean4/build/release/stage1/lib/lean/libInit_shared.so: ../build/release/stage1/lib/lean/libInit.a.export ../build/release/stage1/lib/lean/libStd.a.export /home/sally/lean4/build/release/stage1/runtime/libleanrt_initial-exec.a ../build/release/stage1/lib/temp/empty.c
	@echo "[    ] Building $@"
ifeq "Linux" "Windows"
# on Windows, must remove file before writing a new one (since the old one may be in use)
	@rm -f $@
	"/home/sally/lean4/build/release/stage1/leanc.sh" -shared -o $@ \
	  -Wl,--whole-archive /home/sally/lean4/build/release/stage1/lib/lean/libInit.a.export /home/sally/lean4/build/release/stage1/lib/lean/libStd.a.export /home/sally/lean4/build/release/stage1/runtime/libleanrt_initial-exec.a -Wl,--no-whole-archive \
	  -Wl,--out-implib,/home/sally/lean4/build/release/stage1/lib/lean/libInit_shared.dll.a  -lstdc++ -Wl,--gc-sections -Wl,-Bsymbolic -Wl,-rpath=\$$ORIGIN/..:\$$ORIGIN  -I/home/sally/lean4/build/release/stage1/include -O3 -DNDEBUG
else
# create empty library on platforms without restrictive symbol limits; avoids costly indirections and troubles with cross-library exceptions
	"/home/sally/lean4/build/release/stage1/leanc.sh" -shared -o $@ ../build/release/stage1/lib/temp/empty.c   -lstdc++ -Wl,--gc-sections -Wl,-Bsymbolic -Wl,-rpath=\$$ORIGIN/..:\$$ORIGIN  -I/home/sally/lean4/build/release/stage1/include -O3 -DNDEBUG
endif

Init_shared: /home/sally/lean4/build/release/stage1/lib/lean/libInit_shared.so

/home/sally/lean4/build/release/stage1/lib/lean/libleanshared.so: /home/sally/lean4/build/release/stage1/lib/lean/libInit_shared.so ../build/release/stage1/lib/lean/libLean.a.export ../build/release/stage1/lib/lean/libleancpp.a ../build/release/stage1/lib/temp/libleanshell.a ../build/release/stage1/lib/temp/libleaninitialize.a
	@echo "[    ] Building $@"
ifeq "Linux" "Windows"
# on Windows, must remove file before writing a new one (since the old one may be in use)
	@rm -f /home/sally/lean4/build/release/stage1/lib/lean/libleanshared.so
	@rm -f /home/sally/lean4/build/release/stage1/lib/lean/libleanshared_1.so
# "half-way point" DLL to avoid symbol limit
# include Lean.Meta.WHNF and leancpp except for `initialize.cpp`
	"/home/sally/lean4/build/release/stage1/leanc.sh" -shared -o /home/sally/lean4/build/release/stage1/lib/lean/libleanshared_1.so \
	  ../build/release/stage1/lib/temp/Lean/Meta/WHNF.*wasm.export -Wl,--start-group ../build/release/stage1/lib/lean/libLean.a.export -Wl,--whole-archive ../build/release/stage1/lib/temp/libleancpp_1.a -Wl,--no-whole-archive -Wl,--end-group -lInit_shared -Wl,--out-implib,../build/release/stage1/lib/lean/libleanshared_1.dll.a   -lstdc++ -Wl,--gc-sections -Wl,-Bsymbolic -Wl,-rpath=\$$ORIGIN/..:\$$ORIGIN  -I/home/sally/lean4/build/release/stage1/include -O3 -DNDEBUG -Wl,-Map=../build/release/stage1/lib/temp/libleanshared_1.map
# now delete included symbols from libLean.a
	cp ../build/release/stage1/lib/lean/libLean.a.export ../build/release/stage1/lib/lean/diff.a
	sed -En 's/.*\s(\S*\.o\.export):.*/\1/p' ../build/release/stage1/lib/temp/libleanshared_1.map > ../build/release/stage1/lib/temp/diff.a.in
# can't use bundled llvm-ar before LLVM 16, https://github.com/llvm/llvm-project/issues/55023
	ar dP ../build/release/stage1/lib/lean/diff.a @../build/release/stage1/lib/temp/diff.a.in
	"/usr/bin/ar" tP ../build/release/stage1/lib/lean/diff.a
# now include Lean and the diff library in `leanshared`
	"/home/sally/lean4/build/release/stage1/leanc.sh" -shared -o $@ \
	  -Wl,--whole-archive ../build/release/stage1/lib/lean/diff.a ../build/release/stage1/lib/temp/libleanshell.a ../build/release/stage1/lib/temp/libleaninitialize.a -Wl,--no-whole-archive -lleanshared_1 -lInit_shared -Wl,--out-implib,../build/release/stage1/lib/lean/libleanshared.dll.a   -lstdc++ -Wl,--gc-sections -Wl,-Bsymbolic -Wl,-rpath=\$$ORIGIN/..:\$$ORIGIN  -I/home/sally/lean4/build/release/stage1/include -O3 -DNDEBUG
	rm ../build/release/stage1/lib/lean/diff.a
else
# create empty library on platforms without restrictive symbol limits; avoids costly indirections and troubles with cross-library exceptions
	"/home/sally/lean4/build/release/stage1/leanc.sh" -shared -o /home/sally/lean4/build/release/stage1/lib/lean/libleanshared_1.so ../build/release/stage1/lib/temp/empty.c   -lstdc++ -Wl,--gc-sections -Wl,-Bsymbolic -Wl,-rpath=\$$ORIGIN/..:\$$ORIGIN  -I/home/sally/lean4/build/release/stage1/include -O3 -DNDEBUG
ifeq "Linux" "Darwin"
	"/home/sally/lean4/build/release/stage1/leanc.sh" -shared -o $@ \
	  ../build/release/stage1/lib/temp/Lean.*wasm.export -Wl,-force_load,../build/release/stage1/lib/temp/libleanshell.a -lInit -lStd -lLean -lleancpp /home/sally/lean4/build/release/stage1/runtime/libleanrt_initial-exec.a   -lstdc++ -Wl,--gc-sections -Wl,-Bsymbolic -Wl,-rpath=\$$ORIGIN/..:\$$ORIGIN  -I/home/sally/lean4/build/release/stage1/include -O3 -DNDEBUG
else
	"/home/sally/lean4/build/release/stage1/leanc.sh" -shared -o $@ \
	  -Wl,--whole-archive ../build/release/stage1/lib/temp/Lean.*wasm.export ../build/release/stage1/lib/temp/libleanshell.a -Wl,--no-whole-archive -Wl,--start-group -lInit -lStd -lLean -lleancpp -Wl,--end-group /home/sally/lean4/build/release/stage1/runtime/libleanrt_initial-exec.a   -lstdc++ -Wl,--gc-sections -Wl,-Bsymbolic -Wl,-rpath=\$$ORIGIN/..:\$$ORIGIN  -I/home/sally/lean4/build/release/stage1/include -O3 -DNDEBUG
endif
endif

leanshared: /home/sally/lean4/build/release/stage1/lib/lean/libleanshared.so

/home/sally/lean4/build/release/stage1/lib/lean/libLake_shared.so: /home/sally/lean4/build/release/stage1/lib/lean/libInit_shared.so /home/sally/lean4/build/release/stage1/lib/lean/libleanshared_1.so /home/sally/lean4/build/release/stage1/lib/lean/libleanshared.so ../build/release/stage1/lib/lean/libLean.a.export ../build/release/stage1/lib/lean/libLake.a.export
	@echo "[    ] Building $@"
# on Windows, must remove file before writing a new one (since the old one may be in use)
	@rm -f /home/sally/lean4/build/release/stage1/lib/lean/libLake_shared.so
	"/home/sally/lean4/build/release/stage1/leanc.sh" -shared -o $@ \
	   -Wl,--whole-archive /home/sally/lean4/build/release/stage1/lib/lean/libLake.a.export -Wl,--no-whole-archive -lleanshared -lleanshared_1 -lInit_shared  -lstdc++ -Wl,--gc-sections -Wl,-Bsymbolic -Wl,-rpath=\$$ORIGIN/..:\$$ORIGIN  -I/home/sally/lean4/build/release/stage1/include -O3 -DNDEBUG

libLake_shared: /home/sally/lean4/build/release/stage1/lib/lean/libLake_shared.so

/home/sally/lean4/build/release/stage1/bin/lake: ../build/release/stage1/lib/temp/LakeMain.*wasm.export /home/sally/lean4/build/release/stage1/lib/lean/libLake_shared.so
	@echo "[    ] Building $@"
# on Windows, must remove file before writing a new one (since the old one may be in use)
	@rm -f $@
	"/home/sally/lean4/build/release/stage1/leanc.sh" $< -lLake_shared  -lstdc++ -Wl,-rpath=\$$ORIGIN/../lib:\$$ORIGIN/../lib/lean -rdynamic -lInit_shared -lleanshared_1 -lleanshared  -I/home/sally/lean4/build/release/stage1/include -O3 -DNDEBUG -o $@

lake: /home/sally/lean4/build/release/stage1/bin/lake

/home/sally/lean4/build/release/stage1/bin/lean: /home/sally/lean4/build/release/stage1/lib/lean/libInit_shared.so /home/sally/lean4/build/release/stage1/lib/lean/libleanshared_1.so /home/sally/lean4/build/release/stage1/lib/lean/libleanshared.so ../build/release/stage1/lib/temp/libleanmain.a
	@echo "[    ] Building $@"
# on Windows, must remove file before writing a new one (since the old one may be in use)
	@rm -f $@
	"/home/sally/lean4/build/release/stage1/leanc.sh" ../build/release/stage1/lib/temp/libleanmain.a  -lstdc++ -Wl,-rpath=\$$ORIGIN/../lib:\$$ORIGIN/../lib/lean -rdynamic -lInit_shared -lleanshared_1 -lleanshared   -I/home/sally/lean4/build/release/stage1/include -O3 -DNDEBUG -o $@

lean: /home/sally/lean4/build/release/stage1/bin/lean

Leanc:
	+"/home/sally/lean4/build/release/stage1/bin/leanmake" bin PKG=Leanc BIN_NAME=leanc $(LEANMAKE_OPTS) LINK_OPTS=' -lstdc++ -Wl,-rpath=\$$$$ORIGIN/../lib:\$$$$ORIGIN/../lib/lean -rdynamic -lInit_shared -lleanshared_1 -lleanshared' OUT="/home/sally/lean4/build/release/stage1" OLEAN_OUT="/home/sally/lean4/build/release/stage1" LEAN_PATH="/home/sally/lean4/build/release/stage1/lib/lean"
