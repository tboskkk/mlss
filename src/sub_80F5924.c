#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F5924 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F5924.s\"");
#else
void sub_80F5924(u32 r0, u32 r1, u32 r2)
{
    u32* r4;
    u32 r3;
    
    r3 = r1;
    r4 = (u32*)r2;
    r0 = *r4;
    if (r0 <= 5)
    {
        r0 <<= 2;
        r0 += 0x080F5944;
        r0 = *(u32*)r0;
        ((void(*)())r0)();
    }
    else
    {
        r0 = 1;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F5A9C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F5B5C.s\"");
#else
s32 sub_80F5B5C(s32 arg0, s32 arg1, s32 *arg2) {
    s32 temp_r2_11;
    void *temp_r1_34;
    void *temp_r1_48;
    void *temp_r2_64;
    void *temp_r2_80;
    void *temp_r3_9;
    void *temp_r4_10;

    temp_r3_9 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x7C)));
    temp_r4_10 = (*(void **)((s8 *)(temp_r3_9) + (0x38)));
    temp_r2_11 = *arg2;
    switch (temp_r2_11) {                           /* irregular */
    case 2:
    case 0:
        (*(u8 *)((s8 *)(temp_r3_9) + (0x80))) = (u8) ((*(u8 *)((s8 *)(temp_r3_9) + (0x80))) | 0x10);
        temp_r1_34 = (*(void **)((s8 *)(temp_r3_9) + (0x10)));
        if (temp_r1_34 != NULL) {
            (*(u8 *)((s8 *)(temp_r1_34) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r1_34) + (0x12))) | 0x10);
        }
        if (temp_r4_10 != NULL) {
            (*(u8 *)((s8 *)(temp_r4_10) + (0x78))) = (u8) ((*(u8 *)((s8 *)(temp_r4_10) + (0x78))) | 0x10);
            temp_r1_48 = (*(void **)((s8 *)(temp_r4_10) + (8)));
            if (temp_r1_48 != NULL) {
                (*(u8 *)((s8 *)(temp_r1_48) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r1_48) + (0x12))) | 0x10);
            }
        }
        break;
    case 1:
    case 3:
        (*(u8 *)((s8 *)(temp_r3_9) + (0x80))) = (u8) (-0x11 & (*(u8 *)((s8 *)(temp_r3_9) + (0x80))));
        temp_r2_64 = (*(void **)((s8 *)(temp_r3_9) + (0x10)));
        if (temp_r2_64 != NULL) {
            (*(u8 *)((s8 *)(temp_r2_64) + (0x12))) = (u8) (-0x11 & (*(u8 *)((s8 *)(temp_r2_64) + (0x12))));
        }
        if (temp_r4_10 != NULL) {
            (*(u8 *)((s8 *)(temp_r4_10) + (0x78))) = (u8) (-0x11 & (*(u8 *)((s8 *)(temp_r4_10) + (0x78))));
            temp_r2_80 = (*(void **)((s8 *)(temp_r4_10) + (8)));
            if (temp_r2_80 != NULL) {
                (*(u8 *)((s8 *)(temp_r2_80) + (0x12))) = (u8) (-0x11 & (*(u8 *)((s8 *)(temp_r2_80) + (0x12))));
            }
        }
        break;
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F5C00.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
