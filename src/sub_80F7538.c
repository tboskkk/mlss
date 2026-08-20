#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F7538 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_80F7538(s32 arg0) {
    s32 temp_r1_29;
    void *temp_r0_9;
    void *temp_r1_15;

    temp_r0_9 = *(void **)0x03000FD8;
    temp_r1_15 = (*(void **)((s8 *)((*(void **)((s8 *)(temp_r0_9) + (0x244)))) + (0x2C)));
    (*(s32 *)((s8 *)(temp_r1_15) + (0x1788))) = (s32) ((*(s32 *)((s8 *)(temp_r1_15) + (0x1788))) | arg0);
    (*(s32 *)((s8 *)(temp_r1_15) + (0x1798))) = (s32) ((*(s32 *)((s8 *)(temp_r1_15) + (0x1798))) | arg0);
    temp_r1_29 = (*(s32 *)((s8 *)(temp_r0_9) + (0x2F4)));
    if (temp_r1_29 & arg0) {
        (*(s32 *)((s8 *)(temp_r0_9) + (0x2F4))) = (s32) (temp_r1_29 ^ arg0);
        (*(s8 *)((s8 *)(temp_r0_9) + (0x2F8))) = 1;
    }
}
