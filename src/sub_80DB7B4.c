#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DB7B4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DB7B4.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_808552C(void *, void *, void *, s32, s32, s32, s32, s32, s32, s32); /* extern */
extern s32 sub_80DB720;

void sub_80DB7B4(void *arg0) {
    s32 temp_r6_19;
    void *temp_r0_18;

    (*(s32 *)((s8 *)(arg0) + (0x84))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x38)));
    (*(s32 *)((s8 *)(arg0) + (0x88))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x3C)));
    temp_r0_18 = arg0 + 0x8C;
    temp_r6_19 = (*(s32 *)((s8 *)(arg0) + (0x40)));
    (*(s32 *)((s8 *)(arg0) + (0x8C))) = temp_r6_19;
    (*(s32 *)((s8 *)(temp_r0_18) + (0xC))) = temp_r6_19;
    (*(s32 *)((s8 *)(arg0) + (0x94))) = sub_808552C(temp_r0_18 + 0xC + 0x16, arg0 + 0xB0, arg0 + 0xB2, (*(s32 *)((s8 *)(arg0) + (0x84))) - (*(s32 *)((s8 *)(arg0) + (0x38))), (*(s32 *)((s8 *)(arg0) + (0x88))) - (*(s32 *)((s8 *)(arg0) + (0x3C))), temp_r6_19 * 0, 0xC00, 0x200, 0xFD, 0);
    play_sfx_80195B4(0x8D, -1);
    sub_8082E1C(arg0, 3, 0, 0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DB720;
}
#endif
