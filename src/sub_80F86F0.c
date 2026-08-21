#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F86F0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F86F0.s\"");
#else
void sub_80F86F0(u32* p1, u32 p2, u32* p3)
{
    u32 r4 = p2;
    u32 r5 = 0;
    u32 r3 = *(u32*)((u8*)p3);
    if (r3 > 7)
    {
        u32 r1 = *(u32*)(0x03000FDC);
        r1 += r3 * 0xD0;
        r1 += 0xC0 << 2;
        r4 = r1;
    }
    else
    {
        u32 r0 = *(u32*)(0x03000FD8);
        r0 += 0x58;
        r0 += r3 << 2;
        r4 = *(u32*)((u8*)r0);
        r4 += 0x08;
    }
    r4 += 0x94;
    if (*(u32*)((u8*)r4) == 0)
        r5 = 1;
    if (r5 != *(u32*)((u8*)p3 + 0x04))
        *(u32*)((u8*)p1) = *(u32*)((u8*)p3 + 0x08);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8740.s\"");
#else
s32 sub_80EA6D4(void *, void *, s32 *, s32 *, s32 *); /* extern */
s32 sub_80F6AC0(void *, u8, s32, s32);          /* extern */
s32 sub_80F7644(u8, s32);                       /* extern */
s32 sub_80F76FC(u8, s32, s32, s32, s32);        /* extern */

s32 sub_80F8740(void *arg0, void *arg1, void *arg2) {
    s32 sp4;
    s32 sp8;
    s32 spC;
    s32 var_r3_35;
    u8 temp_r0_14;
    u8 temp_r5_25;
    u8 var_r0_17;

    temp_r0_14 = (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x179C)));
    if ((u32) temp_r0_14 <= 6U) {
        var_r0_17 = temp_r0_14 - 1;
    } else {
        var_r0_17 = temp_r0_14 - 7;
    }
    temp_r5_25 = var_r0_17;
    sub_80EA6D4(arg0 + 0x1C, arg2, &sp4, &sp8, &spC);
    var_r3_35 = 0;
    if (((*(s32 *)((s8 *)(arg2) + (0xC))) & 3) == 1) {
        var_r3_35 = 1;
    }
    sub_80F6AC0(arg0, temp_r5_25, (*(s32 *)((s8 *)(arg2) + (0x10))), var_r3_35);
    sub_80F76FC(temp_r5_25, sp4, sp8, spC, 0);
    sub_80F7644(temp_r5_25, 1);
    (*(u16 *)((s8 *)(arg1) + (0xA0))) = (u16) (2 | (*(u16 *)((s8 *)(arg1) + (0xA0))));
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F87C0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
