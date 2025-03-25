## Wasm Files Compiled From Lean Source Code 

### Steps: 
1. We first build the lean4 source code to obtain intermediate Makefiles of [each bootstrapping stage](https://lean-lang.org/lean4/doc/dev/bootstrap.html)
```
git clone https://github.com/leanprover/lean4
cd lean4
cmake --preset release
make -C build/release -j$(nproc || sysctl -n hw.logicalcpu)
```
2. In each relevant folder, such as library, kernel, runtime, util etc., we added customized Makefile2 to compile wasm files accordingly.
 For example, [Makefile2](https://github.com/sallywang147/lean4/blob/build/build/release/stage1/library/Makefile2) for library in Lean's source code.
 ```
cd build/releases/stage1/[kernel/runtime/library...]
make -f Makefile2
```
Why not simply modifying the targets in CMakeLists.txt at the root of lean4 folder?

Since CMakeLists.txt is a staged process, brutal forcing .wasm output would cause intermediate compilation steps, such as external library compilation, to fail.
That's why we use additional Makefiles instead for now. 

### TODO: 
There are a few source code files that cannot be compiled to wasm files at the moment due to compiler incompatible errors: 
1. module.cpp
<img width="1079" alt="Screen Shot 2025-03-25 at 5 41 13 AM" src="https://github.com/user-attachments/assets/1cbc3767-1d03-4f89-a5ba-18050150f6e3" />
2.path.cpp
<img width="978" alt="Screen Shot 2025-03-25 at 5 41 40 AM" src="https://github.com/user-attachments/assets/a338eb32-a421-4561-994a-c104902e9408" />
3. external library libuv dependent files due to missing uv.h header file: 
mutex.cpp, uv.cpp
