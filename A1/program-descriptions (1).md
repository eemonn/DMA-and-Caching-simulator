`test1.asm`
===========

Calculates the Fibonacci sequence with an empty data file.

`test2.asm` + `test2-1.dat`
===========================

A linear search where the first word is the key, the second word is the length
of the array, and the remaining data is the array. In `test2-1.dat`, the key is
found.

`test2.asm` + `test2-2.dat`
===========================

A linear search where the first word is the key, the second word is the length
of the array, and the remaining data is the array. In `test2-1.dat`, the key is
NOT found.

`test3.asm`
===========

An infinite loop, trying to multiply using jump.

`test4.asm`
===========

An infinite loop, trying to multiply using branch, but missing subtraction.

`test5.asm`
===========

A linear search but doesn't handle out of bounds exceptions (keeps trying to
search past the end of the array).

`test6.asm` + `test6-1.dat`
===========================

Multiplies numbers together (straight multiplication for `test6-1.dat`).

`test6.asm` + `test6-2.dat`
===========================

Multiplies numbers together (multiply by zero for `test6-2.dat`).

`test6.asm` + `test6-3.dat`
===========================

Multiplies numbers together (multiplying by a large number that overflows).

`test7.asm`
===========

Multiplies with a negative literal that results in an illegal operation (moving
between registers).
