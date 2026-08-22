#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8133BC0 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_8082E1C();
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8133BC0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_8133BC0;

void sub_8133C20(void *arg0) {
    s32 temp_r0_18;

    (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x18))) + (*(s32 *)((s8 *)(arg0) + (0x8C))));
    temp_r0_18 = (*(s32 *)((s8 *)(arg0) + (0x8C))) - (*(s32 *)((s8 *)(arg0) + (0x94)));
    (*(s32 *)((s8 *)(arg0) + (0x8C))) = temp_r0_18;
    if (temp_r0_18 <= 0) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x18))) + 0x1000);
        (*(s32 *)((s8 *)(arg0) + (0xA4))) = 0xC;
        (*(s32 *)((s8 *)((arg0 + 0xA4)) + (4))) = 0;
        sub_8082E1C(arg0, 0xC, 0, 0);
        play_sfx_80195B4(0xD5, -1);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8133BC0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8133C7C.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_8133C20;

void sub_8133C7C(void *arg0) {
    s32 var_r0_21;
    s32 var_r1_15;
    s32 var_r3_28;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        var_r1_15 = (*(s32 *)((s8 *)(arg0) + (0x38)));
        if (var_r1_15 < 0) {
            var_r1_15 += 0xFF;
        }
        var_r0_21 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
        if (var_r0_21 < 0) {
            var_r0_21 += 0xFF;
        }
        var_r3_28 = (*(s32 *)((s8 *)(arg0) + (0x40)));
        if (var_r3_28 < 0) {
            var_r3_28 += 0xFF;
        }
        sub_80DF024(0x2734, var_r1_15 >> 8, (var_r0_21 >> 8) + 2, var_r3_28 >> 8, arg0);
        (*(s32 *)((s8 *)(arg0) + (0x8C))) = 0x800;
        (*(s32 *)((s8 *)((arg0 + 0x8C)) + (8))) = 0x80;
        sub_8082E1C(arg0, 0xB, 0, 0);
        play_sfx_80195B4(0x69, -1);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8133C20;
    }
}
#endif
