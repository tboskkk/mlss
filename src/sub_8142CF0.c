#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8142CF0 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_813B5B4(s32);                               /* extern */
void sub_813E974(void *arg0, void *arg1, s32 **arg2);                       /* extern */

void sub_8142CF0(s32 arg0, s32 arg1, s32 **arg2) {
    if ((sub_813B5B4(arg1) << 0x18) == 0) {
        *arg2 = (s32 *) &sub_813E974;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142D10.s\"");
#else
s32 sub_80FBC14(s32 *, s32, s32, s32, s32); /* extern */
s32 sub_80FBD44(s32, u8 *);                         /* extern */
s32 sub_8139D44(s32 *, s32, s32, s32);      /* extern */

s32 sub_8142D10(s32 arg0, s32 arg1, s32 *arg2) {
    s32 sp4;
    u8 sp14;
    s32 temp_r4_20;

    if ((sub_80FBD44(arg0, &sp14) << 0x18) != 0) {
        temp_r4_20 = (*(s32 *)((s8 *)(((sp14 * 4) + arg0)) + (0x28)));
        if (arg2 != NULL) {
            *arg2 = temp_r4_20;
        }
        sub_8139D44(&sp4, arg1, 0x11, 0x1C);
        if ((sub_80FBC14(&sp4, arg1, temp_r4_20, M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */), M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) << 0x18) == 0) {
            goto block_4;
        }
        return 1;
    }
block_4:
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142D6C.s\"");
#else
s32 sub_80FBDE0(s32 *, s32, s32, s32);  /* extern */
s32 sub_8139BB0(s32 *, s32, s32, s32);      /* extern */
s32 sub_813B650(s32);                               /* extern */
extern s32 sub_813E05C;

void sub_8142D6C(s32 arg0, s32 arg1, s32 **arg2) {
    s32 sp0;

    sub_8139BB0(&sp0, arg1, 0x22, 0);
    if (((sub_80FBDE0(&sp0, arg1, M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */), M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */)) << 0x18) != 0) || ((sub_813B650(arg1) << 0x18) == 0)) {
        *arg2 = &sub_813E05C;
    }
}
#endif
