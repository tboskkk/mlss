#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806E754 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_806E754(void *arg0) {
    s32 temp_r0_17;
    void *temp_r2_8;

    temp_r2_8 = (*(void **)((s8 *)(arg0) + (0x30)));
    (*(s32 *)((s8 *)(temp_r2_8) + (0x10))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x10)));
    (*(s32 *)((s8 *)(temp_r2_8) + (0x14))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x14)));
    (*(s32 *)((s8 *)(temp_r2_8) + (0x18))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x18)));
    temp_r0_17 = (*(s32 *)((s8 *)(arg0) + (0x80)));
    if (temp_r0_17 == 0) {
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = temp_r0_17;
        (*(s32 *)((s8 *)(temp_r2_8) + (0x4C))) = temp_r0_17;
    }
}
