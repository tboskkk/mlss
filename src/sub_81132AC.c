#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81132AC needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_8082E1C();
void sub_81132AC(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, -1, -1, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81132D4.s\"");
#else
s32 sub_8087124();                                  /* extern */
extern s32 sub_8112CE4;

s32 sub_81132D4(void *arg0, void *arg1) {
    s32 var_r0_9;
    void *temp_r2_12;

    var_r0_9 = sub_8087124();
    if (var_r0_9 == 0) {
        temp_r2_12 = (*(void **)((s8 *)(arg1) + (0x28)));
        (*(u8 *)((s8 *)(temp_r2_12) + (0x7E))) = (u8) ((*(u8 *)((s8 *)(temp_r2_12) + (0x7E))) | 0x80);
        (*(u8 *)((s8 *)(temp_r2_12) + (0x7F))) = (u8) ((*(u8 *)((s8 *)(temp_r2_12) + (0x7F))) | 0x20);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8112CE4;
        (*(s8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x20))) = 0x10;
        var_r0_9 = 0;
    }
    return var_r0_9;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8113314.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
u8 sub_8087CE4(void *);                             /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */

void sub_8113314(void *arg0) {
    s32 var_r1_14;
    s32 var_r2_20;
    s32 var_r3_26;
    u8 temp_r5_46;

    if ((*(s32 *)((s8 *)(arg0) + (0xA8))) == 0) {
        var_r1_14 = (*(s32 *)((s8 *)(arg0) + (0x38)));
        if (var_r1_14 < 0) {
            var_r1_14 += 0xFF;
        }
        var_r2_20 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
        if (var_r2_20 < 0) {
            var_r2_20 += 0xFF;
        }
        var_r3_26 = (*(s32 *)((s8 *)(arg0) + (0x40)));
        if (var_r3_26 < 0) {
            var_r3_26 += 0xFF;
        }
        sub_80DF024(0x297A, var_r1_14 >> 8, var_r2_20 >> 8, var_r3_26 >> 8, arg0);
        (*(s32 *)((s8 *)(arg0) + (0xA8))) = 0xA;
    }
    (*(s32 *)((s8 *)(arg0) + (0xA8))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0xA8))) - 1);
    temp_r5_46 = sub_8087CE4(arg0);
    if (temp_r5_46 == 0) {
        sub_8082E1C(arg0, -1, -1, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = (s32) temp_r5_46;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8113384.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8112BBC;

void sub_8113384(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x113))) + 5, 0, 0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 3;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8112BBC;
        play_sfx_80195B4(0x8A, -1);
    }
}
#endif
