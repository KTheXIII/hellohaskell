#!/usr/bin/env sh

# Compile and run single C++ file
set -e

bin=bin
obj=obj

in=$1
out="${in%.*}"

mkdir -p $bin
mkdir -p $obj

# compile
ghc $in -outputdir $obj -o $bin/$out

# run
./$bin/$out "${@:2}"

