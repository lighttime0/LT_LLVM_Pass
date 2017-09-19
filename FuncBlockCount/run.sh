#!/bin/bash

gmake FuncBlockCount.cpp

clang -O0 -S -emit-llvm sample.c -o sample.ll

opt -load ./FuncBlockCount.so -funcblockcount sample.ll