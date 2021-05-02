COMP 3370 Assignment 2 Sample programs
======================================

Sample programs and data
------------------------

This directory contains two sample programs targeting the ISA described in
assignment 1 (files ending in `.asm`), with corresponding initial memory states
(files ending in `.dat`).

You need to assemble these programs with the assembler provided in assignment 1
(also in this directory as `assembler.cpp`).

Caching simulator
-----------------

An updated simulator implementing cache memory has been supplied as *two*
different compiled programs (`caching8-1` and `caching4-2`). These two programs
have been compiled on `rodents.cs.umanitoba.ca` (the macOS lab on campus) and
will *only* work on those machines (i.e., THESE WILL NOT WORK ON YOUR COMPUTER).
The compiled program `caching8-1` has been compiled with the settings for 8
blocks with a block size of 1, and the program `caching4-2` has been compiled
with the settings for 4 blocks with a block size of 2.

To run the sample simulator(s), you need to pass both the machine code and the
initial memory state:

    ./caching8-1 <code.o> <memory.dat>


