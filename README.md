# Compiling Lean4 Source Code to Wasm Files: Three Ways 

This informal readme documents two ways to compile lean4 C/Cpp source code to Wasm

## First Way: Adapting build Targets in CMakeList.txt 

We change the target at [this line](https://github.com/sallywang147/lean4/blob/df8b4765456b2f10d368c3de86e1db034c2ed521/CMakeLists.txt#L80) and run
`./build-for-wasm.sh`

This is a better solution, btu has a limitation: make_stb works, but if we also want runtime cpp files, clang19.0.0 in wasm-tools and C++14 required compilerrs do not seem compatible. On top of that, runtime Cpp library requires external libraries, such as libuv and libgmp, so we will need more engineering for runtime cpp if that's needed. 

## Second Way: Flattening All C/Cpp Source Code 

```
cd ~/lean4
git checkout wasm
make -f Makefile2
make -f Makefile3
```
The script above will generate two wasm libraries at the root of lean4: 1) [Makefile2](https://github.com/sallywang147/lean4/blob/wasm/Makefile2)  compiles to [WasmLib](https://github.com/sallywang147/lean4/tree/wasm/WasmLib): this compiles the C code from [stage0's Stdlib](https://github.com/sallywang147/lean4/tree/wasm/stage0/stdlib); 2) [Makefile3](https://github.com/sallywang147/lean4/blob/wasm/Makefile3) compiles to [CppWasmLib](https://github.com/sallywang147/lean4/tree/wasm/CppWasmLib): this compiles the runtime Cpp code, such as kernel, runtime. library, initialize, etc in [stage0/stage1's src](https://github.com/sallywang147/lean4/tree/wasm/stage0/src). 

Note: since some cpp files, such as those started with uv are linked to the external library libuv, which we have yet to compile to wasm files, we exclude those limited number of cpp files in our Makefile3. 

## Second Way: Leveraging existing build system 

Note: this will automatiacally compile the stdlib (C source code of lean4) to wasm files in [lean4/build/release/stage0/lib/wasm](https://github.com/sallywang147/lean4/tree/wasm/build/release/stage0/lib/wasm). 
```
git clone https://github.com/sallywang147/lean4.git
git checkout wasm
cmake --preset release
make -C build/release -j$(nproc || sysctl -n hw.logicalcpu)
cd ~/lean4/build/release/stage0
make -f MakeWasmfile
```
Something like the following should appear: 
<img width="1043" alt="Screen Shot 2025-03-29 at 10 32 13 PM" src="https://github.com/user-attachments/assets/4bd8a397-ab18-492b-95e4-0f6645b858a6" />

Changes made to the existing buid system: 

1. Instead of compiling to .o files, we adapted the targets in [lean.mk](https://github.com/sallywang147/lean4/blob/wasm/build/release/stage0/share/lean/lean.mk) at [line102](https://github.com/sallywang147/lean4/blob/bf3565b3fc0b9626417afa0b41ed79fe0dc06d1f/build/release/stage0/share/lean/lean.mk#L102) to [line110](https://github.com/sallywang147/lean4/blob/bf3565b3fc0b9626417afa0b41ed79fe0dc06d1f/build/release/stage0/share/lean/lean.mk#L110) to compile from c to wasm. 

2. Then we adpted the [original Makefile](https://github.com/sallywang147/lean4/blob/wasm/build/release/stage0/Makefile) at stage 0 to [MakeWasmfile](https://github.com/sallywang147/lean4/blob/wasm/build/release/stage0/MakeWasmfile) to compile only the C source code of our interests.

3. Maybe we're also interested in the Cpp code here too, we can make similar changes in the build files to compile cpp code to wasm code
