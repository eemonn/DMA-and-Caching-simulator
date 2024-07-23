

Sample programs and data
------------------------

This directory contains one sample program targeting the ISA described in
assignment 1 (file ending in `.asm`), with corresponding initial memory states
(file ending in `.dat`).

You need to assemble these programs with the assembler provided in assignment 1
(also in this directory as `assembler.cpp`).

DMA simulator
-------------

An updated simulator implementing DMA memory has been supplied as `dma`. Note
that this file behaves exactly the same as the A2 sample solution in terms of
what's printed on standard output, the behaviour is different in that a file
called `hd` is created by running this program.

To run the sample simulator, you need to pass both the machine code and the
initial memory state:

    ./dma <code.o> <memory.dat>

Note that this simulator has been compiled with settings for cache memory as:

```c
#ifndef CACHE_BLOCKS
#define CACHE_BLOCKS  8
#endif
#ifndef BLOCK_SIZE
#define BLOCK_SIZE    1
#endif
```
