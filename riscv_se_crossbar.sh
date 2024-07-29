#!/bin/bash
./build/RISCV/gem5.debug \
    -d /home/cwh/work/benchmark/data/coremark-pro/crossbar/radix \
    ./configs/deprecated/example/se.py \
    -n 16 \
    --cpu-type TimingSimpleCPU  \
    --l1d_size=64kB \
    --l1i_size=64kB \
    --num-l2caches=16 \
    --l2_size=128kB \
    --num-dirs=16 \
    --ruby \
    --network=garnet \
    --topology=Crossbar \
    -c /home/cwh/work/benchmark/coremark-pro/builds/linux64/gcc64-riscv/bin/radix2-big-64k.exe