#!/bin/bash

cd cubiomes
make libcubiomes
cp libcubiomes.a ..
cd ..
gcc find_witherskeleton.c -o a.out libcubiomes.a -fwrapv -lm -lpthread
./a.out
