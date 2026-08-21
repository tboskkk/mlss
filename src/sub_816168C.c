#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816168C needs.

asm_unified(".include \"asm/macros.inc\"");

u32* sub_816168C(u32* param_1) {
    *param_1 = 0x08CDD0B8;
    return param_1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161698.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161780.s\"");
#else
s32 sub_8161780(void *arg0) {
    s32 temp_r0_26;
    s32 temp_r0_50;
    s32 temp_r0_8;
    s32 temp_r1_20;
    s32 temp_r2_17;

    temp_r0_8 = (*(s32 *)((s8 *)(arg0) + (0x30)));
    switch (temp_r0_8) {                            /* irregular */
    case 0:
        temp_r2_17 = (*(s32 *)((s8 *)(arg0) + (0x10))) + 0x14;
        (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r2_17;
        temp_r1_20 = (*(s32 *)((s8 *)(arg0) + (8))) + temp_r2_17;
        (*(s32 *)((s8 *)(arg0) + (8))) = temp_r1_20;
        if ((temp_r1_20 <= 0x4FFF) || (temp_r0_26 = (0 - temp_r2_17) * 2, (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) (temp_r0_26 / 3), ((temp_r0_26 / 768) != 0))) {
            (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0)))) + (0))) = (s16) ((s32) ((*(s32 *)((s8 *)(arg0) + (4))) + (*(s32 *)((s8 *)(arg0) + (0x14)))) >> 8);
            (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0)))) + (2))) = (s16) ((s32) ((*(s32 *)((s8 *)(arg0) + (8))) + (*(s32 *)((s8 *)(arg0) + (0x18)))) >> 8);
        } else {
            (*(s32 *)((s8 *)(arg0) + (0x2C))) = 0x50;
            (*(s32 *)((s8 *)(arg0) + (0x30))) = 1;
        }
block_9:
    default:
        return 0;
    case 1:
        temp_r0_50 = (*(s32 *)((s8 *)(arg0) + (0x2C))) - 1;
        (*(s32 *)((s8 *)(arg0) + (0x2C))) = temp_r0_50;
        if (temp_r0_50 <= 0) {
            return 1;
        }
        goto block_9;
    }
}
#endif
