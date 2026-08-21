#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801A6B0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801A6B0.s\"");
#else
void sub_801A6B0(void) {
    if ((6 & *(u8 *)0x03000BD4) == 2) {
        *(u8 *)0x03000D18 = -2 & *(u8 *)0x03000D18 & ~0xE & ~0x30;
        *(s16 *)0x04000208 = 0;
        *(u16 *)0x04000200 &= 0xFFBF;
        *(u16 *)0x04000202 |= 0x40;
        *(s16 *)0x04000208 = 1;
        *(s16 *)0x04000208 = 0;
        *(u16 *)0x04000200 &= 0xFF7F;
        *(u16 *)0x04000202 |= 0x80;
        *(s16 *)0x04000208 = 1;
        *(s16 *)0x04000208 = 0;
        *(s16 *)0x04000128 = 0x2000;
        *(s32 *)0x0400010C = 0x8000;
        *(s16 *)0x04000208 = 1;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801A74C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
