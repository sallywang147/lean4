#!/bin/bash

WASI_SDK=/usr/local/share/wasm-toolchain/sysroot
WASIX_DIR=${WASI_SDK}/wasix

CC=${WASI_SDK}/bin/clang
CFLAGS="-I${WASIX_DIR}/include -I${WASI_SDK}/include -D_WASI_EMULATED_SIGNAL -D_WASI_EMULATED_MMAN -fno-exceptions" 
CXX=${WASI_SDK}/bin/clang++
CXXFLAGS="-I${WASIX_DIR}/include -I${WASI_SDK}/include -D_WASI_EMULATED_SIGNAL -D_WASI_EMULATED_MMAN -D_LIBCPP_HAS_NO_EXCEPTIONS -D_LIBCXXABI_NO_EXCEPTIONS -fno-exceptions" 
LDFLAGS="-L${WASIX_DIR}/lib -lwasix -L${WASI_SDK}/lib -L${WASI_SDK}/lib/wasm32-wasi -lwasi-emulated-signal -lwasi-emulated-mman -Wl,--allow-undefined" 

# re-specify all the environment variables as cmake command line arguments such that lean4/CMakeLists.txt can pass them into sub-stages
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release -DCCACHE=OFF -DUSE_GMP=OFF -DCMAKE_SYSTEM_NAME=WASI -DCMAKE_C_COMPILER="${CC}" -DCMAKE_CXX_COMPILER="${CXX}" -DCMAKE_C_FLAGS="${CFLAGS}" -DCMAKE_CXX_FLAGS="${CXXFLAGS}" -DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS}" -DCMAKE_MOUDLE_LINKER_FLAGS="${LDFLAGS}" -DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS}"

cmake --build build --target stage0 --parallel
cmake --build build --target stage1 --parallel
