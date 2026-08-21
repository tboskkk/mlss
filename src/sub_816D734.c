#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816D734 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D734.s\"");
#else
void sub_816D734(void *arg0) {
    s32 temp_r0_10;
    s32 temp_r3_9;
    u32 temp_r0_18;
    u32 temp_r0_31;

    temp_r3_9 = (*(s32 *)((s8 *)(arg0) + (0x70)));
    temp_r0_10 = (*(s32 *)((s8 *)(arg0) + (0x78))) + temp_r3_9;
    (*(s32 *)((s8 *)(arg0) + (0x78))) = temp_r0_10;
    if (temp_r0_10 <= 0x57FF) {
        (*(s32 *)((s8 *)(arg0) + (0x78))) = 0x5800;
        temp_r0_18 = 0 - temp_r3_9;
        (*(s32 *)((s8 *)(arg0) + (0x70))) = (s32) ((s32) (temp_r0_18 + (temp_r0_18 >> 0x1F)) >> 1);
    }
    if ((s32) (*(s32 *)((s8 *)(arg0) + (0x78))) > 0x7800) {
        (*(s32 *)((s8 *)(arg0) + (0x78))) = 0x7800;
        temp_r0_31 = 0 - (*(s32 *)((s8 *)(arg0) + (0x70)));
        (*(s32 *)((s8 *)(arg0) + (0x70))) = (s32) ((s32) (temp_r0_31 + (temp_r0_31 >> 0x1F)) >> 1);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D7B8.s\"");
#else
s32 sub_8163B60();                              /* extern */

void sub_816D7B8(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD268;
    sub_8163B60();
}
#endif
