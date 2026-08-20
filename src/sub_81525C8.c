#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81525C8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81525C8.s\"");
#else
void sub_81525C8(void *arg0) {
    s32 temp_r0_54;
    s32 temp_r1_44;
    s32 temp_r2_15;
    s32 temp_r2_24;
    s32 var_r0_28;
    s32 var_r0_57;
    u32 temp_r0_16;

    temp_r2_15 = (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x1C9C)))) + (4)));
    temp_r0_16 = (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x1C98)))) + (4))) - temp_r2_15;
    temp_r2_24 = temp_r2_15 + ((s32) (temp_r0_16 + (temp_r0_16 >> 0x1F)) >> 1) + 0xFFFF8800;
    (*(s32 *)((s8 *)(arg0) + (0x1CB8))) = temp_r2_24;
    if (temp_r2_24 < 0) {
        var_r0_28 = 0;
        goto block_4;
    }
    temp_r1_44 = (*(u16 *)((s8 *)((((*(u8 *)((s8 *)(arg0) + (0x1F20))) << 5) + 0x083CB0F0)) + (0x18))) - 1;
    if ((s32) (temp_r2_24 >> 8) >= (s32) (temp_r1_44 << 8)) {
        var_r0_28 = temp_r1_44 << 0x10;
block_4:
        (*(s32 *)((s8 *)(arg0) + (0x1CB8))) = var_r0_28;
    }
    temp_r0_54 = (*(s32 *)((s8 *)(arg0) + (0x1CBC)));
    if (temp_r0_54 < 0) {
        var_r0_57 = 0;
        goto block_9;
    }
    if ((s32) (temp_r0_54 >> 8) > 0x5F) {
        var_r0_57 = 0x6000;
block_9:
        (*(s32 *)((s8 *)(arg0) + (0x1CBC))) = var_r0_57;
    }
}
#endif
