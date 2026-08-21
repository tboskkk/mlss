#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047258 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047258.s\"");
#else
void sub_8047258(void *arg0, s32 arg1) {
    s32 var_r0_31;
    s32 var_r1_32;
    s8 *var_r3_24;

    if (arg1 == 0) {
        (*(u8 *)((s8 *)(arg0) + (0x220))) = (u8) (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x21)));
        var_r3_24 = arg0 + 0x215;
        var_r0_31 = (-9 & (*(u8 *)((s8 *)(arg0) + (0x215)))) | (((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x11))) << 0x19) >> 0x1F) * 8);
        var_r1_32 = 2;
    } else {
        (*(u8 *)((s8 *)(arg0) + (0x221))) = (u8) (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x21)));
        var_r3_24 = arg0 + 0x215;
        var_r0_31 = (-0x11 & (*(u8 *)((s8 *)(arg0) + (0x215)))) | (((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x11))) << 0x19) >> 0x1F) * 0x10);
        var_r1_32 = 4;
    }
    *var_r3_24 = var_r0_31 | var_r1_32;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80472D0.s\"");
#else
void sub_80472D0(void *arg0, void *arg1, s32 arg2) {
    s32 *var_r0_62;
    s32 temp_r3_24;
    s32 var_r1_66;
    u32 temp_r0_29;

    if (arg1 != NULL) {
        temp_r3_24 = ((*(s32 *)((s8 *)(arg0) + (0x214))) & 0xFFFE1FFF) | ((*(s32 *)((s8 *)(arg1) + (0x214))) & 0x1E000);
        (*(s32 *)((s8 *)(arg0) + (0x214))) = temp_r3_24;
        if (arg2 != 0) {
            temp_r0_29 = (u32) (temp_r3_24 << 0xF) >> 0x1C;
            if (temp_r0_29 <= 0xEU) {
                (*(s32 *)((s8 *)(arg0) + (0x214))) = (s32) ((0xFFFE1FFF & temp_r3_24) | (((temp_r0_29 + 1) & 0xF) << 0xD));
            }
        } else if (0x1E000 & temp_r3_24) {
            (*(s32 *)((s8 *)(arg0) + (0x214))) = (s32) ((0xFFFE1FFF & temp_r3_24) | (((((u32) (temp_r3_24 << 0xF) >> 0x1C) - 1) & 0xF) << 0xD));
        }
    } else {
        if (arg2 != 0) {
            var_r0_62 = arg0 + 0x214;
            var_r1_66 = (*(s32 *)((s8 *)(arg0) + (0x214))) | 0x1E000;
        } else {
            var_r0_62 = arg0 + 0x214;
            var_r1_66 = (*(s32 *)((s8 *)(arg0) + (0x214))) & 0xFFFE1FFF;
        }
        *var_r0_62 = var_r1_66;
    }
}
#endif
