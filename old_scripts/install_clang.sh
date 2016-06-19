# install clang and llvm to ~/git/clang
mkdir -p ~/git/clang
cd ~/git/clang

# install llvm
svn co http://llvm.org/svn/llvm-project/llvm/trunk llvm

# install clang to llvm/tools
cd llvm/tools
svn co http://llvm.org/svn/llvm-project/cfe/trunk clang
cd -

# install extra clang tools
cd llvm/tools/clang/tools
svn co http://llvm.org/svn/llvm-project/clang-tools-extra/trunk extra
cd -

# install compiler-rt
cd llvm/projects
svn co http://llvm.org/svn/llvm-project/compiler-rt/trunk compiler-rt
cd -

# install libcxx
cd llvm/projects
svn co http://llvm.org/svn/llvm-project/compiler-rt/trunk libcxx
cd -

# build llvm and clang
mkdir build #(in-tree build is not supported)
cd build
cmake -G "Unix Makefiles" ../llvm
make

echo 'This builds both LLVM and Clang for debug mode. For subsequent Clang development, you can just run make clang.'
