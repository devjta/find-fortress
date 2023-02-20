#!/bin/bash

rm a.out 2>&1 > /dev/null
rm libcubiomes.a 2>&1 > /dev/null

git submodule init
git submodule update --remote
cd cubiomes
make libcubiomes
cp libcubiomes.a ..
cd ..
gcc find_witherskeleton.c -o a.out libcubiomes.a -fwrapv -lm -lpthread
./a.out
