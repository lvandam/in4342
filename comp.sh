#!/bin/bash

scp ./*.h ./*.cpp ./*.c ./arm.mk emblab:~/kostas/part2/code/
make --directory=./dsp clean
make --directory=./dsp
