#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EE594 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EE594.s\"");
#else
s32 get_fobj_screen_pos(s32, s32, s32 *, s32 *); /* extern */
s32 sub_8028AFC(s32, s32, s32, s32, s32, s32);  /* extern */

s32 sub_80EE594(void *arg0, void *arg1, void *arg2) {
    s32 sp8;
    s32 spC;
    s32 temp_r1_29;
    s32 var_r0_36;

    if ((*(s32 *)((s8 *)(arg2) + (0))) & 1) {
        (*(s32 *)((s8 *)(arg2) + (8))) = (s32) ((*(s32 *)((s8 *)(arg2) + (8))) * 0x10);
        (*(s32 *)((s8 *)(arg2) + (0xC))) = (s32) ((*(s32 *)((s8 *)(arg2) + (0xC))) * 0x10);
    }
    if ((((s32) (*(s32 *)((s8 *)(arg2) + (0))) >> 1) & 3) == 1) {
        temp_r1_29 = (*(s32 *)((s8 *)(arg2) + (0x10)));
        if (0x40 & temp_r1_29) {
            var_r0_36 = (temp_r1_29 & 0xF) * 0x10;
        } else {
            var_r0_36 = temp_r1_29 << 8;
        }
        (*(s32 *)((s8 *)(arg2) + (0x10))) = var_r0_36;
    }
    get_fobj_screen_pos((*(s32 *)((s8 *)(arg0) + (0x14))), (*(s32 *)((s8 *)(arg2) + (4))), &sp8, &spC);
    sub_8028AFC((*(s32 *)((s8 *)(arg0) + (0x14))), ((s32) (*(s32 *)((s8 *)(arg2) + (0))) >> 1) & 3, 1, (sp8 + (*(s32 *)((s8 *)(arg2) + (8)))) - 0x78, (spC + (*(s32 *)((s8 *)(arg2) + (0xC)))) - 0x70, M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */));
    (*(u16 *)((s8 *)(arg1) + (0xA0))) = (u16) (0x100 | (*(u16 *)((s8 *)(arg1) + (0xA0))));
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EE624.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EE73C.s\"");
#else
s32 sub_80EE73C(s32 arg0, s32 arg1, void *arg2) {
    void *temp_r1_13;
    void *temp_r2_14;
    void *temp_r2_55;
    void *temp_r3_43;
    void *temp_r4_26;

    temp_r1_13 = *(void **)0x03000FD0;
    temp_r2_14 = arg2 + 4;
    (*(u8 *)((s8 *)(temp_r1_13) + (0x55F))) = (u8) ((0x7F & (*(u8 *)((s8 *)(temp_r1_13) + (0x55F)))) | ((*(s32 *)((s8 *)(arg2) + (0))) << 7));
    temp_r4_26 = *(void **)0x03000FD0;
    (*(u16 *)((s8 *)(temp_r4_26) + (0x55E))) = (u16) ((0xFFFFE03F & (*(u16 *)((s8 *)(temp_r4_26) + (0x55E)))) | (((*(s32 *)((s8 *)(arg2) + (4))) & 0x7F) << 6));
    (*(s8 *)((s8 *)(temp_r4_26) + (0x55D))) = (s8) (*(s32 *)((s8 *)(temp_r2_14) + (4)));
    temp_r3_43 = *(void **)0x03000FD0;
    (*(u16 *)((s8 *)(temp_r3_43) + (0x55E))) = (s8) ((-0x40 & (u8) (*(u16 *)((s8 *)(temp_r3_43) + (0x55E)))) | ((*(u8 *)((s8 *)((temp_r2_14 + 4)) + (4))) & 0x3F));
    temp_r2_55 = *(void **)0x03000FD0;
    (*(u8 *)((s8 *)(temp_r2_55) + (0x55F))) = (u8) ((-0x61 & (*(u8 *)((s8 *)(temp_r2_55) + (0x55F)))) | 0x40);
    return 1;
}
#endif
