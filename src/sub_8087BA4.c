#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8087BA4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087BA4.s\"");
#else
void sub_8087BA4(void *arg0) {
    u16 temp_r0_11;

    temp_r0_11 = (*(u16 *)((s8 *)(arg0) + (0xAC))) - 1;
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_11;
    if ((s32) (s16) temp_r0_11 <= 1) {
        (*(s8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x20))) = 0x10;
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x50)));
        (*(s32 *)((s8 *)(arg0) + (0x50))) = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087BD0.s\"");
#else
s32 sub_80DF024(u16, s32, s32, s32, void *);    /* extern */

void sub_8087BD0(void *arg0) {
    s32 var_r1_17;
    s32 var_r2_23;
    s32 var_r3_29;
    u16 temp_r0_13;
    void *temp_r4_9;

    temp_r4_9 = (*(void **)((s8 *)(arg0) + (8)));
    temp_r0_13 = (*(u16 *)((s8 *)((*(void **)((s8 *)(temp_r4_9) + (0xE4)))) + (2)));
    if (temp_r0_13 != 0) {
        var_r1_17 = (*(s32 *)((s8 *)(temp_r4_9) + (0x40)));
        if (var_r1_17 < 0) {
            var_r1_17 += 0xFF;
        }
        var_r2_23 = (*(s32 *)((s8 *)(temp_r4_9) + (0x44)));
        if (var_r2_23 < 0) {
            var_r2_23 += 0xFF;
        }
        var_r3_29 = (*(s32 *)((s8 *)(temp_r4_9) + (0x48)));
        if (var_r3_29 < 0) {
            var_r3_29 += 0xFF;
        }
        sub_80DF024(temp_r0_13, var_r1_17 >> 8, var_r2_23 >> 8, var_r3_29 >> 8, temp_r4_9 + 8);
    }
    (*(s32 *)((s8 *)(temp_r4_9) + (0x54))) = 0;
    (*(s32 *)((s8 *)(arg0) + (4))) = 0;
}
#endif

s32 sub_8086700(void *);                        /* extern */

void sub_8087C20(struct Entity *arg0) {
    u8 temp_r4_15;
    void *temp_r2_8;

    temp_r2_8 = arg0->unk08;
    temp_r4_15 = 2 & (*(u8 *)((s8 *)(temp_r2_8) + (0x111)));
    if (temp_r4_15 == 0) {
        sub_8086700(temp_r2_8 + 8);
        (*(s32 *)((s8 *)(arg0) + (4))) = (s32) temp_r4_15;
    }
}
