#!/usr/bin/env bash
# used only for building Lean itself
root=$(dirname $0)
ldflags=( "-L$root/lib/lean"  /usr/lib/x86_64-linux-gnu/libgmp.so -L/usr/lib/x86_64-linux-gnu -luv -lpthread -ldl -lrt -lm -ldl -pthread)
for arg in "$@"; do
    # ccache doesn't like linker flags being passed here
    [[ "$arg" = "-c" ]] && ldflags=()
    [[ "$arg" = "-v" ]] && v=1
done
cmd=(${LEAN_CC:/usr/local/share/wasm-toolchain/sysroot/bin/clang} "-I$root/include"  -Os  "$@" "${ldflags[@]}" -Wno-unused-command-line-argument)
cmd=$(printf '%q ' "${cmd[@]}" | sed "s!ROOT!$root!g")
[[ $v == 1 ]] && echo $cmd
eval $cmd
