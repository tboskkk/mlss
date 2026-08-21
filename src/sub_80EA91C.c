#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EA91C needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_80EA91C(s32 arg0, void *arg1, s32 *arg2) {
    (*(s32 *)((s8 *)(arg1) + (0x98))) = (s32) *arg2;
    return 1;
}

s32 sub_80EA928(s32 arg0, void *arg1, s32 *arg2) {
    (*(s32 *)((s8 *)((((*(u8 *)((s8 *)(arg1) + (0xA6))) * 4) + arg1)) + (0x58))) = (s32) *arg2;
    (*(u8 *)((s8 *)(arg1) + (0xA6))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0xA6))) + 1);
    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA940.s\"");
#else
s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */

s32 sub_80EA940(s32 arg0, s32 *arg1, s32 *arg2) {
    s32 temp_r0_16;
    s32 temp_r4_9;

    temp_r4_9 = *arg2;
    temp_r0_16 = (*(s32 *)((s8 *)(((sub_81DD77C(temp_r4_9, sub_8199F30()) * 4) + arg2)) + (4)));
    if (temp_r0_16 != 0) {
        *arg1 = temp_r0_16;
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA968.s\"");
#else
s32 sub_80E9C4C(s32, s32, s32, s32, s32, s32); /* extern */
s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */

s32 sub_80EA968(s32 arg0, s32 arg1, void *arg2, s32 arg3) {
    s32 temp_r4_13;

    temp_r4_13 = (*(s32 *)((s8 *)(arg2) + (4)));
    sub_80E9C4C(arg3, arg1 + 0x18, 0, 0, M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */), sub_81DD77C(temp_r4_13, sub_8199F30()));
    return 1;
}
#endif

s32 sub_801B0AC(u16);                           /* extern */

s32 sub_80EA9A8(s32 arg0, s32 arg1, u16 *arg2) {
    sub_801B0AC(*arg2);
    return 1;
}
