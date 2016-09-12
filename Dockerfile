FROM ubuntu:14.04.5
MAINTAINER NUCAR

# Libs for build LLVM & Clang
RUN apt-get update && apt-get install -y git cmake build-essential
RUN cd ~ && git clone https://github.com/xianggong/llvm.git && && cd llvm && git checkout m2s && cd tools && git clone https://github.com/xianggong/clang.git && cd ~/llvm && mkdir build && cd build && cmake ../ -DLLVM_TARGETS_TO_BUILD=AMDGPU && cmake --build .

