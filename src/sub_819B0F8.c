#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_819B0F8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819B0F8.s\"");
#else
u32* sub_819B0F8(u32 index, u32 value) {
    u32* ptr = (u32*)0x03007FF0;
    ptr = (u32*)((u32)ptr + 0x4A4);
    ptr = (u32*)((u32)ptr + (index << 2));
    *ptr = value;
    return ptr;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819B110.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
