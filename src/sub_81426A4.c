#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81426A4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81426A4.s\"");
#else
s32 sub_8139AA0(void *);                        /* extern */
extern s32 sub_813B380;
void sub_8141D54(void *arg0, void *arg1, s32 **arg2);                       /* extern */

void sub_81426A4(s32 arg0, void *arg1) {
    (*(u8 *)((s8 *)(arg1) + (0x33E))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x33E))) | 0x10);
    sub_8139AA0(arg1);
    (*(s16 *)((s8 *)(arg1) + (0x1D4))) = 0;
    (*(u8 *)((s8 *)(arg1) + (0x1D6))) = (u8) (-0x11 & (*(u8 *)((s8 *)(arg1) + (0x1D6))));
    (*(s32 *)((s8 *)(arg1) + (0x1E8))) = 0;
    (*(s32 **)((s8 *)(arg1) + (0x198))) = &sub_813B380;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = (s32 *) &sub_8141D54;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142704.s\"");
#else
s32 sub_80FBC14(s32 *, s32, s32, s32, s32); /* extern */
s32 sub_80FBD44(s32, u8 *);                         /* extern */
s32 sub_8139D44(s32 *, s32, s32, s32);      /* extern */

s32 sub_8142704(s32 arg0, s32 arg1, s32 *arg2) {
    s32 sp4;
    u8 sp14;
    s32 temp_r4_20;

    if (((sub_80FBD44(arg0, &sp14) << 0x18) == 0) || (temp_r4_20 = (*(s32 *)((s8 *)(((sp14 * 4) + arg0)) + (0x28))), sub_8139D44(&sp4, arg1, 0x11, 0x1C), ((sub_80FBC14(&sp4, arg1, temp_r4_20, M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */), M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) << 0x18) == 0))) {
        return 0;
    }
    if (arg2 != NULL) {
        *arg2 = temp_r4_20;
    }
    return 1;
}
#endif
