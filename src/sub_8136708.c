#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8136708 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8136708.s\"");
#else
s32 sub_81367DC(void *);                        /* extern */

void sub_8136708(void *arg0) {
    s8 temp_r0_65;
    u16 temp_r0_8;
    u16 temp_r1_19;
    u16 temp_r2_23;
    u8 temp_r0_29;
    u8 temp_r0_47;

    temp_r0_8 = (*(u16 *)((s8 *)(arg0) + (0x2E)));
    if (temp_r0_8 != 0) {
        (*(u16 *)((s8 *)(arg0) + (0x2E))) = (u16) (temp_r0_8 - 0x10);
        *(s16 *)0x02000054 = (s16) ((u16) (*(u16 *)((s8 *)(arg0) + (0x2E))) >> 8);
    }
    temp_r1_19 = (*(u16 *)((s8 *)((void *)0x0300034C) + (0x2A)));
    temp_r2_23 = 0x40 & temp_r1_19;
    if (temp_r2_23 != 0) {
        temp_r0_29 = (*(u8 *)((s8 *)(arg0) + (0x28))) - 1;
        (*(u8 *)((s8 *)(arg0) + (0x28))) = temp_r0_29;
        if ((s32) (temp_r0_29 << 0x18) < 0) {
            (*(u8 *)((s8 *)(arg0) + (0x28))) = 1U;
        }
    } else if (0x80 & temp_r1_19) {
        temp_r0_47 = (*(u8 *)((s8 *)(arg0) + (0x28))) + 1;
        (*(u8 *)((s8 *)(arg0) + (0x28))) = temp_r0_47;
        if ((s32) (s8) temp_r0_47 > 1) {
            (*(u8 *)((s8 *)(arg0) + (0x28))) = (u8) temp_r2_23;
        }
    }
    if (1 & (*(u16 *)((s8 *)((void *)0x0300034C) + (0x2A)))) {
        temp_r0_65 = (s8) (*(u8 *)((s8 *)(arg0) + (0x28)));
        if ((temp_r0_65 != 0) && (temp_r0_65 == 1)) {
            sub_81367DC(arg0);
        }
    }
    if (4 & (*(u16 *)((s8 *)((void *)0x0300034C) + (0x2A)))) {
        sub_81367DC(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81367AC.s\"");
#else
#error "TODO: write sub_81367AC to match asm/nonmatching/sub_81367AC.s, then delete this #error"
#endif
