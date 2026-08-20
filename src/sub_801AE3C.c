#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801AE3C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801AE3C.s\"");
#else
void sub_801AE3C(void)
{
    u16 *r3 = (u16 *)0x04000208;
    u16 *r2 = (u16 *)0x04000200;
    u16 r1;
    u16 r0;
    u16 *r0_ptr;

    *r3 = 0;
    r1 = *r2;
    r0 = 0xFFBF;
    r1 &= r0;
    *r2 = r1;
    *r3 = 1;
    *r3 = 0;
    r2 -= 0xD8;
    r1 = *r2;
    r0 = 0xFF7F;
    r1 &= r0;
    *r2 = r1;
    *r3 = 1;
    r0_ptr = (u16 *)0x0400010E;
    *r0_ptr = 0;
    r0_ptr = (u16 *)0x0400010C;
    r0 = 0x8000;
    *r0_ptr = r0;
    u8 *r2_ptr = (u8 *)0x03000D18;
    u8 r1_byte = *r2_ptr;
    r0 = 0xF0;
    r0 ^= 0xFF; // negs r0, r0
    r1_byte &= r0;
    r1_byte |= 0x0C;
    *r2_ptr = r1_byte;
}
#endif
