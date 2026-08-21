#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_814DB34 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814DB34.s\"");
#else
void sub_814DB34(s32 arg0, void *arg1) {
    void *temp_r0_13;
    void *temp_r1_39;
    void *temp_r2_31;

    temp_r0_13 = (*(void **)((s8 *)(arg1) + (0x294)));
    sub_801E150(temp_r0_13, (*(u8 *)((s8 *)(temp_r0_13) + (0x21))), 5, 0, 0);
    (*(u8 *)((s8 *)(arg1) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg1) + (0x214)))) | 1);
    temp_r2_31 = (*(void **)((s8 *)(arg1) + (0x294)));
    (*(u8 *)((s8 *)(temp_r2_31) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_31) + (0x12)))) | 2);
    temp_r1_39 = (*(void **)((s8 *)(arg1) + (0x294)));
    (*(u8 *)((s8 *)(temp_r1_39) + (0x20))) = (u8) (0 - (*(u8 *)((s8 *)(temp_r1_39) + (0x20))));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814DB8C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814DC6C.s\"");
#else
s32 sub_813A5C8(void *, s32, s32);              /* extern */
s32 sub_813A818(void *, s32, s32);              /* extern */
s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */
extern s32 sub_814DDF8;

void sub_814DC6C(s32 arg0, void *arg1, s32 **arg2) {
    if (1 & sub_81DD77C(0x64, sub_8199F30())) {
        sub_813A5C8(arg1, 0x10, 0x100);
    } else {
        sub_813A818(arg1, 0x10, 0x100);
    }
    (*(u8 *)((s8 *)(arg1) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg1) + (0x214)))) | 1);
    *arg2 = &sub_814DDF8;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814DCC4.s\"");
#else
s32 sub_80FBDE0(s32 *, s32, s32, s32);          /* extern */
s32 sub_8139BB0(s32 *, s32, s32, s32);      /* extern */

s32 sub_814DCC4(s32 arg0) {
    s32 sp0;
    s32 var_r1_19;

    sub_8139BB0(&sp0, arg0, 0x22, 0);
    var_r1_19 = sub_80FBDE0(&sp0, arg0, 0x7FFF, 0);
    if ((var_r1_19 << 0x18) != 0) {
        var_r1_19 = 1;
    }
    return var_r1_19;
}
#endif
