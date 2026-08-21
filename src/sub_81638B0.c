#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81638B0 needs.

asm_unified(".include \"asm/macros.inc\"");

u32 *sub_81638B0(u32 *param_1)
{
  param_1[1] = 0;
  *param_1 = 0;
  param_1[2] = 0;
  param_1[3] = 0x08CDD0E8;
  return param_1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81638C4.s\"");
#else
void sub_81638C4(void *arg0, s32 arg1, s32 arg2, s32 arg3, u8 arg4) {
    void *temp_r0_31;
    void *temp_r4_22;
    void *temp_r5_20;

    (*(u16 *)((s8 *)(arg0) + (0x5A))) = (u16) (0xFFFC & (*(u16 *)((s8 *)(arg0) + (0x5A))));
    temp_r5_20 = arg0 + 0x30;
    temp_r4_22 = arg0 + 0x18;
    (*(s32 *)((s8 *)(arg0) + (0x30))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x18)));
    (*(s32 *)((s8 *)(temp_r5_20) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r4_22) + (4)));
    (*(s32 *)((s8 *)(temp_r5_20) + (8))) = (s32) (*(s32 *)((s8 *)(temp_r4_22) + (8)));
    temp_r0_31 = arg0 + 0x24;
    (*(s32 *)((s8 *)(arg0) + (0x24))) = arg1;
    (*(s32 *)((s8 *)(temp_r0_31) + (4))) = arg2;
    (*(s32 *)((s8 *)(temp_r0_31) + (8))) = arg3;
    if (arg4 != 0) {
        (*(u16 *)((s8 *)(arg0) + (0x5A))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x5A))) | 1);
    }
}
#endif
