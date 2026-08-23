#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_811254C needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_8082E1C();

extern s32 sub_8111848;

void sub_811254C(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0xE, 0, 0);
        arg0->handler = &sub_8111848;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8112578.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80880C4(void *, s32);                   /* extern */
s32 sub_808843C(void *, s32, s32, s32, s32);    /* extern */
extern s32 sub_81127FC;

void sub_8112578(void *arg0) {
    sub_808843C(arg0, (*(s32 *)((s8 *)(arg0) + (0x9C))), (*(s32 *)((s8 *)((arg0 + 0x9C)) + (4))), 0, 0x100);
    sub_80880C4(arg0, 0x300);
    sub_8082E1C(arg0, 2, 0, 0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_81127FC;
    play_sfx_80195B4(0x11B, -1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81125CC.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80880C4(void *, s32);                   /* extern */
s32 sub_808843C(void *, s32, s32, s32, s32);    /* extern */
extern s32 sub_8112870;

void sub_81125CC(void *arg0) {
    s32 var_r0_12;
    s32 var_r0_20;
    s32 var_r0_28;
    void *temp_r3_9;

    temp_r3_9 = (*(void **)((s8 *)(arg0) + (0x28)));
    var_r0_12 = (*(s32 *)((s8 *)(temp_r3_9) + (0xD8)));
    if (var_r0_12 < 0) {
        var_r0_12 += 0xFF;
    }
    var_r0_20 = (*(s32 *)((s8 *)(temp_r3_9) + (0xDC)));
    if (var_r0_20 < 0) {
        var_r0_20 += 0xFF;
    }
    var_r0_28 = (*(s32 *)((s8 *)(temp_r3_9) + (0xE0)));
    if (var_r0_28 < 0) {
        var_r0_28 += 0xFF;
    }
    sub_808843C(arg0, var_r0_12 >> 8, var_r0_20 >> 8, var_r0_28 >> 8, 0x100);
    sub_80880C4(arg0, 0x300);
    sub_8082E1C(arg0, 0xC, 0, 0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8112870;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8112630.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8087CE4();                                  /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
s32 sub_8112350(s32 *);                     /* extern */
extern s32 sub_8112840;
extern s32 sub_8112898;

void sub_8112630(void *arg0) {
    s32 var_r1_41;
    s32 var_r2_47;
    s32 var_r3_53;
    void *temp_r2_18;

    if ((sub_8087CE4() << 0x18) == 0) {
        sub_8082E1C(arg0, 0xB, 0, 0);
        temp_r2_18 = (*(void **)((s8 *)(arg0) + (8)));
        (*(u8 *)((s8 *)(temp_r2_18) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_18) + (0x12)))) | 2);
        if (((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x40))) == 0) && ((*(s32 *)((s8 *)(arg0) + (0xA8))) == 0)) {
            sub_8112350(&sub_8112840);
            (*(s32 *)((s8 *)(arg0) + (0xA8))) = 1;
        }
        var_r1_41 = (*(s32 *)((s8 *)(arg0) + (0x38)));
        if (var_r1_41 < 0) {
            var_r1_41 += 0xFF;
        }
        var_r2_47 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
        if (var_r2_47 < 0) {
            var_r2_47 += 0xFF;
        }
        var_r3_53 = (*(s32 *)((s8 *)(arg0) + (0x40)));
        if (var_r3_53 < 0) {
            var_r3_53 += 0xFF;
        }
        sub_80DF024(0x2689, var_r1_41 >> 8, var_r2_47 >> 8, var_r3_53 >> 8, arg0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8112898;
    }
}
#endif
