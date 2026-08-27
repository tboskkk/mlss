#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804FA94 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FA94.s\"");
#else
void sub_804FA94(void *arg0, u16 arg1, u16 arg2) {
    s32 var_r0_28;
    s32 var_r0_43;
    s32 var_r1_13;

    var_r1_13 = (*(s32 *)((s8 *)(arg0) + (8)));
    if (var_r1_13 < 0) {
        var_r1_13 += 0xFF;
    }
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x44)))) + (0))) = (s16) ((var_r1_13 >> 8) - (s16) arg1);
    var_r0_28 = ((*(s32 *)((s8 *)(arg0) + (0xC))) - (*(s32 *)((s8 *)(arg0) + (0x10)))) - (*(s32 *)((s8 *)(arg0) + (0x14)));
    if (var_r0_28 < 0) {
        var_r0_28 += 0xFF;
    }
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x44)))) + (2))) = (s16) ((var_r0_28 >> 8) - (s16) arg2);
    var_r0_43 = (*(s32 *)((s8 *)(arg0) + (0xC)));
    if (var_r0_43 < 0) {
        var_r0_43 += 0xFF;
    }
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x44)))) + (0xE))) = (s16) ((((u32) ((*(u16 *)((s8 *)(arg0) + (0))) << 0x15) >> 0x1C) << 0xC) | (0x800 - (var_r0_43 >> 8)));
}
#endif

s32 sub_8020D40(s32);                           /* extern */
void sub_804FAF8(void *arg0)
{
  sub_8020D40(*((s32 *) (((s8 *) arg0) + 0x44)));
  *((u8 *) (((s8 *) arg0) + 0)) = (u8) ((-0x41) & (*(((s8 *) arg0) + 0)));
}
