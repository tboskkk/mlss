#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8079320 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8079320(void *arg0) {
    s32 temp_r0_9;
    void *temp_r2_13;

    temp_r0_9 = (*(s32 *)((s8 *)(arg0) + (0x80)));
    if (temp_r0_9 == 0) {
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = temp_r0_9;
        temp_r2_13 = (*(void **)((s8 *)(arg0) + (0x28)));
        (*(s32 *)((s8 *)(temp_r2_13) + (0xA4))) = 2;
        (*(s8 *)((s8 *)(temp_r2_13) + (0x113))) = 2;
    }
}
