#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DA0E0 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_80DA098;

void sub_80DA0E0(void *arg0) {
    u8 temp_r2_10;

    temp_r2_10 = (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x21)));
    if (temp_r2_10 == 0) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = (s16) temp_r2_10;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DA098;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DA100.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80DA1EC;

void sub_80DA100(void *arg0) {
    void *temp_r2_17;

    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8082E1C(arg0, 3, 0, 0);
        temp_r2_17 = (*(void **)((s8 *)(arg0) + (8)));
        (*(u8 *)((s8 *)(temp_r2_17) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_17) + (0x12)))) | 2);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 8;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DA1EC;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DA140.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80DA208;

void sub_80DA140(void *arg0) {
    void *temp_r2_17;

    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8082E1C(arg0, 3, 0, 0);
        temp_r2_17 = (*(void **)((s8 *)(arg0) + (8)));
        (*(u8 *)((s8 *)(temp_r2_17) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_17) + (0x12)))) | 2);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x20;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DA208;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DA180.s\"");
#else
s32 sub_807FB64(void *);                        /* extern */
s32 sub_8085B38(void *);                        /* extern */
extern s32 sub_80DA224;

void sub_80DA180(void *arg0) {
    void *temp_r1_17;
    void *temp_r2_18;
    void *temp_r2_8;

    temp_r2_8 = (*(void **)((s8 *)(arg0) + (8)));
    if (8 & (*(u8 *)((s8 *)(temp_r2_8) + (0x12)))) {
        sub_807FB64(temp_r2_8);
        temp_r1_17 = arg0 + 0x84;
        temp_r2_18 = (*(void **)((s8 *)(arg0) + (0x28)));
        (*(s32 *)((s8 *)(arg0) + (0x84))) = (s32) (*(s32 *)((s8 *)(temp_r2_18) + (0xD8)));
        (*(s32 *)((s8 *)(temp_r1_17) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r2_18) + (0xDC)));
        (*(s32 *)((s8 *)((temp_r1_17 + 4)) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r2_18) + (0xE0)));
        (*(u8 *)((s8 *)(arg0) + (0x79))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x79))) | 0x20);
        (*(s16 *)((s8 *)(arg0) + (0x7C))) = 0x400;
        (*(s16 *)((s8 *)(arg0) + (0x7A))) = 0;
        sub_8085B38(arg0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DA224;
    }
}
#endif
