#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8142B4C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142B4C.s\"");
#else
extern s32 sub_813E504;
extern s32 sub_813E618;

void sub_8142B4C(void *arg1, s32 **arg2) {
    s32 temp_r0_11;

    temp_r0_11 = (*(s32 *)((s8 *)(arg1) + (0x18))) + 0x100;
    (*(s32 *)((s8 *)(arg1) + (0x18))) = temp_r0_11;
    if ((s32) ((*(s32 *)((s8 *)(arg1) + (0x14))) + temp_r0_11) >= (s32) (*(s32 *)((s8 *)(arg1) + (0x2D4)))) {
        (*(s32 **)((s8 *)(arg1) + (0x198))) = &sub_813E504;
        *arg2 = &sub_813E618;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142B88.s\"");
#else
s32 sub_801E68C(void *);                        /* extern */
extern s32 sub_8142F74;

void sub_8142B88(s32 arg0, void *arg1, s32 **arg2) {
    void *temp_r0_15;

    temp_r0_15 = (*(void **)((s8 *)(arg1) + (0x294)));
    sub_801E150(temp_r0_15, (*(u8 *)((s8 *)(temp_r0_15) + (0x21))), 2, 0, 0);
    sub_801E68C((*(void **)((s8 *)(arg1) + (0x294))));
    (*(s32 *)((s8 *)(arg1) + (0x18))) = 0;
    *arg2 = &sub_8142F74;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142BCC.s\"");
#else
s32 sub_813B650(void *);                            /* extern */
extern s32 sub_813B1E8;
extern s32 sub_813B360;
extern s32 sub_813E618;

void sub_8142BCC(s32 arg0, void *arg1, void *arg2) {
    s32 temp_r6_12;

    temp_r6_12 = (*(s32 *)((s8 *)(arg1) + (0x1B0)));
    if ((sub_813B650(arg1) << 0x18) == 0) {
        (*(s16 *)((s8 *)(arg1) + (0x1D2))) = (s16) (*(u8 *)((s8 *)(((*(u16 *)((s8 *)(arg1) + (0x1D0))) + temp_r6_12)) + (0x6C)));
        (*(s32 **)((s8 *)(arg2) + (0))) = &sub_813B1E8;
        (*(s32 **)((s8 *)(arg2) + (0xC))) = &sub_813B360;
        (*(s32 **)((s8 *)(arg2) + (4))) = &sub_813E618;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142C18.s\"");
#else
s32 sub_80FBDE0(s32 *, void *, s32, s32);       /* extern */
s32 sub_8139BB0(s32 *, void *, s32, s32);   /* extern */
u8 sub_813B5B4(void *);                             /* extern */
extern s32 sub_813B360;
extern s32 sub_813E618;
extern s32 sub_813F85C;

void sub_8142C18(s32 arg0, void *arg1, void *arg2) {
    s32 sp0;
    u8 temp_r3_13;

    temp_r3_13 = sub_813B5B4(arg1);
    if (temp_r3_13 == 0) {
        (*(s32 *)((s8 *)(arg1) + (0x2EC))) = (s32) ((*(s32 *)((s8 *)(arg1) + (0x14))) + (*(s32 *)((s8 *)(arg1) + (0x18))));
        (*(s32 *)((s8 *)(arg1) + (0x2F4))) = (s32) temp_r3_13;
        sub_8139BB0(&sp0, arg1, 0x22, 0);
        if ((sub_80FBDE0(&sp0, arg1, 0x7FFF, 0) << 0x18) != 0) {
            (*(s32 **)((s8 *)(arg2) + (0))) = &sub_813B360;
            (*(s32 **)((s8 *)(arg2) + (4))) = &sub_813E618;
            return;
        }
        (*(s32 **)((s8 *)(arg2) + (0))) = &sub_813F85C;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142C88.s\"");
#else
void sub_8142C88(s32 arg0, void *arg1, void *arg2) {
    s32 temp_r0_20;
    s32 temp_r1_12;
    u16 temp_r0_40;
    void *temp_r0_10;

    temp_r0_10 = arg1 + 0x58;
    temp_r1_12 = (*(s32 *)((s8 *)(arg1) + (0x18)));
    if (temp_r1_12 > 0) {
        temp_r0_20 = temp_r1_12 - M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
        (*(s32 *)((s8 *)(arg1) + (0x18))) = temp_r0_20;
        if (temp_r0_20 <= 0) {
            (*(s32 *)((s8 *)(arg1) + (0x18))) = 0;
        } else {
            (*(u16 *)((s8 *)(arg1) + (0x2DC))) = (u16) ((*(u16 *)((s8 *)(arg1) + (0x2DC))) + (*(s32 *)((s8 *)(arg1) + (0x248))));
        }
    }
    temp_r0_40 = (*(u16 *)((s8 *)(temp_r0_10) + (0x17A))) - 1;
    (*(u16 *)((s8 *)(temp_r0_10) + (0x17A))) = temp_r0_40;
    if ((temp_r0_40 << 0x10) == 0) {
        (*(u8 *)((s8 *)(arg1) + (0x33E))) = (u8) (-9 & (*(u8 *)((s8 *)(arg1) + (0x33E))));
        (*(s32 *)((s8 *)(arg2) + (0))) = (s32) (*(s32 *)((s8 *)(arg2) + (4)));
    }
}
#endif
