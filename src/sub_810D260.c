#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810D260 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_810D260(u32 arg0, s32 arg1) {
    s32 var_r1_8;
    u32 var_r0_0;

    var_r0_0 = arg0;
    var_r1_8 = 0;
    do {
        var_r0_0 = var_r0_0 >> 4;
        var_r1_8 += 4;
    } while (var_r0_0 != 0);
    return arg1 + var_r1_8;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D274.s\"");
#else
void sub_810D274(u32 r0, u32 r1, u32 r2, u32 r3)
{
    u32 r5 = r0;
    u32 r4 = r1;
    u32 r6 = r2;
    u32 r7;
    u32 r12;
    u32 r3_load;
    u32 r0_load;
    u32 r1_load;
    u32 r0_load2;
    
    if (r3 != 0)
    {
        r4 = sub_810D260(r0, r1, r2);
    }
    
    r6 &= 0xFF;
    r0_load = 0x0300034C;
    r3_load = 0x88 << 4;
    r1_load = r0_load + r3_load;
    r1_load = *(u32*)(r1_load);
    r12 = r0_load;
    r7 = 0xF;
    r3_load = 0x1FF;
    r0_load = 0xFFFF8000;
    r0_load2 = 0xFFFFC000;
    
    r0_load += r0_load2;
    r6 |= r0_load;
    
    do
    {
        r0 = r5 & r7;
        r0 <<= 1;
        r0 += 0xC0;
        r4 -= 8;
        r4 &= r3_load;
        *(u16*)(r1) = r6;
        *(u16*)(r1 + 2) = r4;
        r0 |= r0_load2;
        *(u16*)(r1 + 4) = r0;
        r1 += 8;
        r5 >>= 4;
    } while (r5 != 0);
    
    r3_load = 0x88 << 4;
    r1 = r12 + r3_load;
    *(u32*)(r1) = r1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D2E0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
