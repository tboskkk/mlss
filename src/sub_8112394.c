#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8112394 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8112394.s\"");
#else
s32 sub_8087124();                                  /* extern */
extern s32 sub_81125CC;

s32 sub_8112394(void *arg0) {
    s32 var_r0_8;

    var_r0_8 = sub_8087124();
    if (var_r0_8 == 0) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_81125CC;
        var_r0_8 = 0;
    }
    return var_r0_8;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81123B4.s\"");
#else
s32 sub_80880C4(void *, s32);                   /* extern */
s32 sub_808843C(void *, s32, s32, s32, s32);    /* extern */
extern s32 sub_8112630;

void sub_81123B4(void *arg0) {
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
    (*(s32 *)((s8 *)(arg0) + (0xA8))) = 0;
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8112630;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8112450.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_81126E4;

void sub_8112450(void *arg0) {
    u16 temp_r0_11;
    void *temp_r2_21;

    temp_r0_11 = (*(u16 *)((s8 *)(arg0) + (0xAC))) - 1;
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_11;
    if ((temp_r0_11 << 0x10) == 0) {
        sub_8082E1C(arg0, 5, 0, 0);
        temp_r2_21 = (*(void **)((s8 *)(arg0) + (8)));
        (*(u8 *)((s8 *)(temp_r2_21) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_21) + (0x12)))) | 2);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_81126E4;
        play_sfx_80195B4(0xA3, -1);
    }
}
#endif
