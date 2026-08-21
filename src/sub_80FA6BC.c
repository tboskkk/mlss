#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FA6BC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FA6BC.s\"");
#else
s32 sub_81219C4(s32);                               /* extern */

s32 sub_80FA6BC(void *arg0, void *arg1) {
    if ((sub_81219C4((*(s32 *)((s8 *)(arg0) + (0x14)))) << 0x18) == 0) {
        return 1;
    }
    (*(s32 *)((s8 *)(arg1) + (0))) = (s32) (*(s32 *)((s8 *)(arg1) + (0x14)));
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FA6DC.s\"");
#else
s32 sub_81219EC(s32);                           /* extern */
s32 sub_8121A20(s32);                           /* extern */

s32 sub_80FA6DC(void *arg0, s32 *arg2) {
    if (*arg2 & 1) {
        sub_81219EC((*(s32 *)((s8 *)(arg0) + (0x14))));
    } else {
        sub_8121A20((*(s32 *)((s8 *)(arg0) + (0x14))));
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FA734.s\"");
#else
s32 sub_80EA6D4(void *, void *, s32 *, s32 *, s32 *); /* extern */
s32 sub_8120C54(s32, u8, s32, s32, s32, s32, s32); /* extern */

s32 sub_80FA734(void *arg0, void *arg1, void *arg2) {
    s32 spC;
    s32 sp10;
    s32 sp14;
    u8 temp_r4_20;

    temp_r4_20 = (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x24)))) + (0x9A0))) - 1;
    sub_80EA6D4(arg0 + 0x1C, arg2, &spC, &sp10, &sp14);
    sub_8120C54((*(s32 *)((s8 *)(arg0) + (0x14))), temp_r4_20, (*(s32 *)((s8 *)(arg2) + (0xC))) & 3, 1, spC, sp10, M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    (*(u16 *)((s8 *)(arg1) + (0xA0))) = (u16) (2 | (*(u16 *)((s8 *)(arg1) + (0xA0))));
    return 0;
}
#endif
