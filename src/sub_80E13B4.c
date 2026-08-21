#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E13B4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E13B4.s\"");
#else
extern s32 sub_80E0BF8;

void sub_80E13B4(void *arg0) {
    s32 *var_r0_17;
    u16 *temp_r1_25;
    u8 temp_r1_10;
    u8 temp_r3_14;
    void *temp_r4_9;

    temp_r4_9 = *(void **)0x03000FD8;
    temp_r1_10 = (*(u8 *)((s8 *)(temp_r4_9) + (0xD)));
    temp_r3_14 = 2 & temp_r1_10;
    if (temp_r3_14 != 0) {
        var_r0_17 = NULL;
    } else {
        (*(u8 *)((s8 *)(temp_r4_9) + (0xD))) = (u8) (2 | temp_r1_10);
        temp_r1_25 = (*(u16 **)((s8 *)(arg0) + (0xC)));
        (*(s16 *)((s8 *)(arg0) + (0x12))) = (s16) temp_r3_14;
        (*(s16 *)((s8 *)(arg0) + (0x14))) = (s16) temp_r3_14;
        (*(u16 *)((s8 *)(arg0) + (0x10))) = (u16) *temp_r1_25;
        (*(u16 **)((s8 *)(arg0) + (0xC))) = (u16 *) (temp_r1_25 + 2);
        var_r0_17 = &sub_80E0BF8;
    }
    (*(s32 **)((s8 *)(arg0) + (4))) = var_r0_17;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E13F8.s\"");
#else
#error "TODO: write sub_80E13F8 to match asm/nonmatching/sub_80E13F8.s, then delete this #error"
#endif
