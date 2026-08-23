#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EAE30 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAE30.s\"");
#else
s32 sub_80E8EE0(void **, u8);                   /* extern */

s32 sub_80EAE30(s32 arg0, void **arg1, s32 *arg3) {
    s16 var_r3_9;
    void *var_r2_10;

    var_r3_9 = 0;
    var_r2_10 = *arg1;
loop_2:
    if ((s32) var_r3_9 <= 3) {
        if (((*(u8 *)((s8 *)(var_r2_10) + (0xF))) != 0) && ((*(u8 *)((s8 *)(var_r2_10) + (0xC))) == *arg3)) {
            sub_80E8EE0(arg1, (u8) var_r3_9);
        } else {
            var_r3_9 = (s16) ((u32) ((var_r3_9 << 0x10) + 0x10000) >> 0x10);
            var_r2_10 += 0x10;
            goto loop_2;
        }
    }
    return 1;
}
#endif

s32 sub_80E9C4C(s32, s32, s32, s32, s32, s32);  /* extern */

s32 sub_80EAE70(s32 arg0, s32 arg1, s16 *arg2, s32 arg3) {
    sub_80E9C4C(arg3, arg1 + 0x18, 0, 0, (s32) *arg2, (s32) (*(u8 *)((s8 *)(*(void **)0x03000FB8) + (0x30))));
    return 1;
}
