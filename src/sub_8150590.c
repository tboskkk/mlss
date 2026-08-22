#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8150590 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_804761C(s32, s32);                      /* extern */
s32 sub_804776C(s32, s32);                      /* extern */

void sub_8150590(s32 arg0) {
    sub_804776C(arg0, 0);
    sub_804761C(arg0, 0);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81505A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150618.s\"");
#else
s32 sub_814E554(void *, s32);                   /* extern */
s32 sub_8199F30();                                  /* extern */
u32 sub_81DD77C(s32, s32);                          /* extern */
extern s32 sub_815071C;
extern s32 sub_8150734;

void sub_8150618(s32 arg0, void *arg1, s32 **arg2) {
    s32 **var_r1_54;
    s32 *var_r0_55;
    void *temp_r4_12;

    temp_r4_12 = (*(void **)((s8 *)(arg1) + (0x344)));
    if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) > 0xDF) {
        (*(u8 *)((s8 *)(arg1) + (0x214))) = (u8) (-8 & (*(u8 *)((s8 *)(arg1) + (0x214))));
        (*(u8 *)((s8 *)(arg1) + (0x20D))) = (u8) (-5 & (*(u8 *)((s8 *)(arg1) + (0x20D))));
        (*(u8 *)((s8 *)(temp_r4_12) + (0x216))) = (u8) (-0x21 & (*(u8 *)((s8 *)(temp_r4_12) + (0x216))));
        if (sub_81DD77C(0x3E8, sub_8199F30()) > 0xF9U) {
            sub_814E554(temp_r4_12, 1);
            var_r1_54 = temp_r4_12 + 0x1A0;
            var_r0_55 = (s32 *)0x08150729;
        } else {
            sub_814E554(temp_r4_12, 0);
            var_r1_54 = temp_r4_12 + 0x1A0;
            var_r0_55 = &sub_815071C;
        }
        *var_r1_54 = var_r0_55;
        *arg2 = &sub_8150734;
    }
}
#endif
