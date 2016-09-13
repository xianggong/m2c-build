FROM ubuntu:14.04.5
MAINTAINER NUCAR

# Libs for build LLVM & Clang
RUN apt-get update && apt-get install -y git cmake build-essential python

