#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80ED4EC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80ED4EC.s\"");
#else
void sub_80ED4EC(u32 r0, u32 r1, u32 r2)
{
    u32 *r5;
    u32 *r3;
    u32 r0_2;
    
    r3 = (u32*)r0;
    r5 = (u32*)r2;
    r0_2 = *r5;
    if (r0_2 <= 4)
    {
        u32 *r1_2;
        r1_2 = (u32*)0x080ED508;
        r0_2 <<= 2;
        r0_2 += (u32)r1_2;
        r0_2 = *(u32*)r0_2;
        ((void(*)())r0_2)();
    }
    else
    {
        *(u32*)r3 = 1;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80ED6A8.s\"");
#else
s32 sub_80284B0(void *, u32, s32);              /* extern */
s32 sub_8028EE8(void *);                        /* extern */

s32 sub_80ED6A8(void *arg0, void *arg2) {
    s32 temp_r3_9;
    void *temp_r1_12;
    void *temp_r2_27;
    void *temp_r2_41;
    void *temp_r2_54;

    temp_r3_9 = (*(s32 *)((s8 *)(arg2) + (0)));
    if (temp_r3_9 != 0xFF) {
        temp_r1_12 = (*(void **)((s8 *)(arg0) + (0x14)));
        (*(u16 *)((s8 *)(temp_r1_12) + (0xFA))) = (u16) ((0xFFFFFC1F & (*(u16 *)((s8 *)(temp_r1_12) + (0xFA)))) | ((temp_r3_9 & 0x1F) << 5));
        sub_8028EE8((*(void **)((s8 *)(arg0) + (0x14))));
    } else {
        temp_r2_27 = (*(void **)((s8 *)(arg0) + (0x14)));
        (*(u16 *)((s8 *)(temp_r2_27) + (0xFA))) = (u16) ((0xFFFFFC1F & (*(u16 *)((s8 *)(temp_r2_27) + (0xFA)))) | (((u32) ((*(u8 *)((s8 *)(temp_r2_27) + (0x208))) << 0x1D) >> 0x1F) << 5));
        temp_r2_41 = (*(void **)((s8 *)(arg0) + (0x14)));
        (*(u8 *)((s8 *)(temp_r2_41) + (0xF8))) = (u8) ((-0x41 & (*(u8 *)((s8 *)(temp_r2_41) + (0xF8)))) | (((*(s32 *)((s8 *)(arg2) + (4))) & 1) << 6));
    }
    temp_r2_54 = (*(void **)((s8 *)(arg0) + (0x14)));
    if (0x40 & (*(u8 *)((s8 *)(temp_r2_54) + (0xF8)))) {
        sub_80284B0(temp_r2_54, (u32) ((*(u16 *)((s8 *)(temp_r2_54) + (0xFA))) << 0x16) >> 0x1B, 0);
    }
    (*(u32 *)((s8 *)(*(void **)0x03000FD0) + (0x530))) = (u32) ((u32) ((*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x14)))) + (0xFA))) << 0x16) >> 0x1B);
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80ED750.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80ED7D4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80ED86C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80ED90C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80ED9A4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
