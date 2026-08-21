#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810D34C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D34C.s\"");
#else
void sub_810D34C(u32 r0, u32 r1, u32 r2, u32 r3)
{
    u32 r5 = r0;
    u32 r4 = r1;
    u32 r6 = r2;
    if (r3 != 0)
        r4 = sub_810D260();
    r6 &= 0xFF;
    u32 *r0_ptr = (u32 *)0x0300034C;
    u32 r1_val = r0_ptr[0x880];
    u32 r12 = (u32)r0_ptr;
    u32 r7 = 0xF;
    u32 r6_val = 0x1FF;
    u32 r3_val = 0xFFFF8000;
    r6 |= r3_val;
    u32 r0_val = 0xFFFFB000;
    while (r5 != 0)
    {
        u32 r0_val2 = r5 & r7;
        r0_val2 <<= 1;
        r0_val2 += 0xC0;
        r4 -= 8;
        r4 &= r6_val;
        *(u16 *)(r1_val + 0x0) = (u16)r6;
        *(u16 *)(r1_val + 0x2) = (u16)r4;
        r0_val2 |= r0_val;
        *(u16 *)(r1_val + 0x4) = (u16)r0_val2;
        r1_val += 0x8;
        r5 >>= 4;
    }
    u32 r0_final = 0x880 << 2;
    r0_final += r12;
    *(u32 *)(r0_final + 0x0) = r1_val;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D3B8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
