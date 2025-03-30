# Copyright (c) 2018 Simon Hudon. All rights reserved.
# Released under Apache 2.0 license as described in the file LICENSE.
# Authors: Simon Hudon, Sebastian Ullrich, Leonardo de Moura

# We compile all source files in $PKG/ as well as $PKG.lean. $PKG is also used for naming binary files.
ifndef PKG
  PKG = $(strip $(subst .lean,, $(wildcard *.lean)))
  ifneq ($(words $(PKG)), 1)
    $(error no unique .lean file found in current directory, please specify PKG)
  endif
endif

LEAN = lean
LEANC = leanc
WASMC = /usr/local/share/wasm-toolchain/sysroot/bin/clang 
LEAN_AR = /usr/bin/ar
OUT = build
OLEAN_OUT = $(OUT)
TEMP_OUT = $(OUT)/temp
C_OUT = $(TEMP_OUT)
BC_OUT = $(TEMP_OUT)
BIN_OUT = $(OUT)/bin
LIB_OUT = $(OUT)/lib
WASM_OUT = /home/sally/lean4/build/release/stage0/lib/wasm
BIN_NAME = $(PKG)
STATIC_LIB_NAME = lib$(PKG).a
LEAN_OPTS += 
LEANC_OPTS = -O3 -DNDEBUG
LINK_OPTS =

# more FS entries to build SRCS from, for parallel build of .oleans (but not .os)
EXTRA_SRC_ROOTS =

# ignore error messages from missing parts, e.g. Leanc/
SRCS = $(shell find $(PKG) $(PKG).lean $(EXTRA_SRC_ROOTS) -name '*.lean' 2> /dev/null)
DEPS = $(addprefix $(TEMP_OUT)/,$(SRCS:.lean=.depend))
export LEAN_PATH += :$(OLEAN_OUT)
OBJS = $(addprefix $(OLEAN_OUT)/, $(SRCS:.lean=.olean))
ifdef C_ONLY
# There are no .lean files in stage0/src/
NAT_OBJS = $(patsubst %.c,$(TEMP_OUT)/%.wasm,$(shell cd $(C_OUT); find $(PKG) $(PKG).c -name '*.c' 2> /dev/null))
ALL_NAT_OBJS = $(NAT_OBJS)
else
NAT_OBJS = $(patsubst %.lean,$(TEMP_OUT)/%.wasm,$(shell find $(PKG) $(PKG).lean -name '*.lean' 2> /dev/null))
# include `EXTRA_SRC_ROOTS` when compiling individual `.o`s but not when building libraries
ALL_NAT_OBJS = $(patsubst %.lean,$(TEMP_OUT)/%.wasm,$(SRCS))
endif

SHELL = /usr/bin/env bash -euo pipefail

.PHONY: all bin lib depends clean
# Disable all default make rules
.SUFFIXES:

objs: $(OBJS) $(ALL_NAT_OBJS)

bin: $(BIN_OUT)/$(BIN_NAME)

lib: $(LIB_OUT)/$(STATIC_LIB_NAME)
lib.export: $(LIB_OUT)/$(STATIC_LIB_NAME).export

depends: $(DEPS)

$(OLEAN_OUT)/$(PKG) $(LIB_OUT) $(BIN_OUT):
	@mkdir -p "$@"

# Make sure the .olean output directory exists so that `lean --deps` knows where this package's
# .olean files will be located even before any of them are actually built.
$(TEMP_OUT)/%.depend: %.lean | $(OLEAN_OUT)/$(PKG)
	@mkdir -p "$(TEMP_OUT)/$(*D)"
# convert path separators and newlines on Windows
	deps=`$(LEAN) --deps $<` || (echo "$(LEAN) --deps $< failed ($$?): $$deps"; exit 1); \
  deps=`echo "$$deps" | tr '\\\\' / | tr -d '\\r'`; \
  echo $(OLEAN_OUT)/$*.olean: $$deps > $@

$(OLEAN_OUT)/%.olean: %.lean $(TEMP_OUT)/%.depend $(MORE_DEPS)
ifdef CMAKE_LIKE_OUTPUT
	@echo "[    ] Building $<"
endif
	@mkdir -p $(OLEAN_OUT)/$(*D)
	LEAN_OPTS="$(LEAN_OPTS)"; \
	[[ -z "$(LLVM)" ]] || LEAN_OPTS+=" --bc=$(TEMP_OUT)/$*.bc.tmp"; \
	$(LEAN) $$LEAN_OPTS -o "$@" -i "$(OLEAN_OUT)/$*.ilean" --c="$(TEMP_OUT)/$*.c.tmp" "$<"
# create the .c file atomically
	@mv "$(TEMP_OUT)/$*.c.tmp" "$(C_OUT)/$*.c"
ifdef LLVM
	@mv "$(TEMP_OUT)/$*.bc.tmp" "$(BC_OUT)/$*.bc"
endif

$(OLEAN_OUT)/%.ilean: $(OLEAN_OUT)/%.olean
	@

ifndef C_ONLY
$(C_OUT)/%.c: $(OLEAN_OUT)/%.olean
	@

$(BC_OUT)/%.bc: $(OLEAN_OUT)/%.olean
	@
endif

ifdef LLVM
$(TEMP_OUT)/%.wasm: $(BC_OUT)/%.bc
else
$(TEMP_OUT)/%.wasm: $(C_OUT)/%.c
endif
ifdef CMAKE_LIKE_OUTPUT
	@echo "[    ]Wasm File Building $<"
endif
	@mkdir -p "$(WASM_OUT)/$(shell echo $< | sed -E 's|.*//(.*)/[^/]+\.c|\1|; t; s|.*//([^/]+)\.c|\1|')"
	@cd $(WASM_OUT)/$(shell echo $< | sed -E 's|.*//(.*)/[^/]+\.c|\1|; t; s|.*//([^/]+)\.c|\1|') && $(WASMC) -Os $< $(LEANC_OPTS) -o $(basename $(<F)).wasm

# On Windows, rebuild .o not intended for shared libraries
# without dllexport because of symbol limit;
# on other platforms, no point in bothering
ifeq (Linux, Windows)
ifdef LLVM
$(TEMP_OUT)/%.o: $(BC_OUT)/%.bc
else
$(TEMP_OUT)/%.o: $(C_OUT)/%.c
endif
ifdef CMAKE_LIKE_OUTPUT
	@echo "[    ] Building $<"
endif
	@mkdir -p "$(@D)"
	$(LEANC) -c -o $@ $< $(LEANC_OPTS)
else
$(TEMP_OUT)/%.o: $(TEMP_OUT)/%.o.export
	ln -f $< $@
endif

$(BIN_OUT)/$(BIN_NAME): $(LIB_OUT)/$(STATIC_LIB_NAME).export | $(BIN_OUT)
ifdef CMAKE_LIKE_OUTPUT
	@echo "[    ] Linking $@"
endif
# on Windows, must remove binary before writing a new one (since the old one may be in use)
	@rm -f $@
	$(LEANC) -o "$@" $< $(LEANC_OPTS) $(LINK_OPTS)

ifeq (Linux, Windows)
$(LIB_OUT)/$(STATIC_LIB_NAME): $(NAT_OBJS) | $(LIB_OUT)
	@rm -f $@
	$(file >$@.in) $(foreach O,$^,$(file >>$@.in,"$O"))
	@$(LEAN_AR) rcs $@ @$@.in
	@rm -f $@.in
$(LIB_OUT)/$(STATIC_LIB_NAME).export: $(addsuffix .export,$(NAT_OBJS)) | $(LIB_OUT)
	@rm -f $@
	$(file >$@.in) $(foreach O,$^,$(file >>$@.in,"$O"))
	# "T"hin archive seems necessary to preserve paths so that we can distinguish
	# between object files with the same file name when manipulating the archive for
	# `libleanshared_1`
	@$(LEAN_AR) rcsT $@ @$@.in
	@rm -f $@.in
else
$(LIB_OUT)/$(STATIC_LIB_NAME): $(NAT_OBJS) | $(LIB_OUT)
	@rm -f $@
# no response file support on macOS, but also no need for them
	#@$(LEAN_AR) rcs $@ $^
#$(LIB_OUT)/$(STATIC_LIB_NAME).export: $(LIB_OUT)/$(STATIC_LIB_NAME)
#	ln -f $< $@
endif

clean:
	rm -rf $(OUT)

.PRECIOUS: $(BC_OUT)/%.bc $(C_OUT)/%.c $(TEMP_OUT)/%.o $(TEMP_OUT)/%.wasm $(TEMP_OUT)/%.o.export

ifndef C_ONLY
ifndef UNSAFE_ASSUME_OLD
include $(DEPS)
endif
endif
