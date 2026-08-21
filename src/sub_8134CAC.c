#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8134CAC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8134CAC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8135084.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8135110.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81352B4.s\"");
#else
s32 sub_8134CAC(s32 *, s32 *, s32 *);           /* extern */

void sub_81352B4(s32 *arg0, u8 arg1, u8 arg2, u8 arg3) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    s32 sp20;
    s32 sp24;
    s32 sp28;
    s32 sp2C;
    s32 sp30;
    s32 sp34;
    s32 sp38;
    s32 sp3C;
    s32 sp40;
    s32 sp44;
    s32 sp4C;
    s32 sp64;
    s32 sp6C;
    s32 sp88;
    s32 spCC;
    s32 sp110;
    s32 sp154;
    s32 temp_r0_35;
    s32 temp_r1_25;
    s32 temp_r1_47;
    s32 temp_r1_67;
    s32 temp_r3_76;
    s32 temp_r4_56;
    s32 var_r0_30;
    s32 var_r0_51;
    s32 var_r0_71;
    s32 var_r1_20;
    s32 var_r1_42;
    s32 var_r1_62;

    var_r1_20 = M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    if (var_r1_20 < 0) {
        var_r1_20 += 0x3F;
    }
    temp_r1_25 = var_r1_20 >> 6;
    var_r0_30 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (var_r0_30 < 0) {
        var_r0_30 += 0x3F;
    }
    temp_r0_35 = var_r0_30 >> 6;
    var_r1_42 = M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    if (var_r1_42 < 0) {
        var_r1_42 += 0x3F;
    }
    temp_r1_47 = var_r1_42 >> 6;
    var_r0_51 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (var_r0_51 < 0) {
        var_r0_51 += 0x3F;
    }
    temp_r4_56 = var_r0_51 >> 6;
    var_r1_62 = M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    if (var_r1_62 < 0) {
        var_r1_62 += 0x3F;
    }
    temp_r1_67 = var_r1_62 >> 6;
    var_r0_71 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (var_r0_71 < 0) {
        var_r0_71 += 0x3F;
    }
    temp_r3_76 = var_r0_71 >> 6;
    sp40 = 0x08CDC470;
    sp0 = 0x100;
    sp4 = 0;
    sp8 = 0;
    spC = 0;
    sp10 = 0;
    sp14 = temp_r0_35;
    sp18 = temp_r1_25;
    sp1C = 0;
    sp20 = 0;
    sp24 = 0 - temp_r1_25;
    sp28 = temp_r0_35;
    sp2C = 0;
    sp30 = 0;
    sp34 = 0;
    sp38 = 0;
    sp3C = 0x100;
    (*(s32 *)((s8 *)(&sp44) + (0x40))) = 0x08CDC470;
    sp44 = temp_r4_56;
    (*(s32 *)((s8 *)(&sp44) + (4))) = 0;
    sp4C = 0 - temp_r1_47;
    (*(s32 *)((s8 *)(&sp44) + (0xC))) = 0;
    (*(s32 *)((s8 *)(&sp44) + (0x10))) = 0;
    (*(s32 *)((s8 *)(&sp44) + (0x14))) = 0x100;
    (*(s32 *)((s8 *)(&sp44) + (0x18))) = 0;
    (*(s32 *)((s8 *)(&sp44) + (0x1C))) = 0;
    sp64 = temp_r1_47;
    (*(s32 *)((s8 *)(&sp44) + (0x24))) = 0;
    sp6C = temp_r4_56;
    (*(s32 *)((s8 *)(&sp44) + (0x2C))) = 0;
    (*(s32 *)((s8 *)(&sp44) + (0x30))) = 0;
    (*(s32 *)((s8 *)(&sp44) + (0x34))) = 0;
    (*(s32 *)((s8 *)(&sp44) + (0x38))) = 0;
    (*(s32 *)((s8 *)(&sp44) + (0x3C))) = 0x100;
    (*(s32 *)((s8 *)(&sp88) + (0x40))) = 0x08CDC470;
    (*(s32 *)((s8 *)(&sp88) + (0))) = temp_r3_76;
    (*(s32 *)((s8 *)(&sp88) + (4))) = temp_r1_67;
    (*(s32 *)((s8 *)(&sp88) + (8))) = 0;
    (*(s32 *)((s8 *)(&sp88) + (0xC))) = 0;
    (*(s32 *)((s8 *)(&sp88) + (0x10))) = (s32) (0 - temp_r1_67);
    (*(s32 *)((s8 *)(&sp88) + (0x14))) = temp_r3_76;
    (*(s32 *)((s8 *)(&sp88) + (0x18))) = 0;
    (*(s32 *)((s8 *)(&sp88) + (0x1C))) = 0;
    (*(s32 *)((s8 *)(&sp88) + (0x20))) = 0;
    (*(s32 *)((s8 *)(&sp88) + (0x24))) = 0;
    (*(s32 *)((s8 *)(&sp88) + (0x28))) = 0x100;
    (*(s32 *)((s8 *)(&sp88) + (0x2C))) = 0;
    (*(s32 *)((s8 *)(&sp88) + (0x30))) = 0;
    (*(s32 *)((s8 *)(&sp88) + (0x34))) = 0;
    (*(s32 *)((s8 *)(&sp88) + (0x38))) = 0;
    (*(s32 *)((s8 *)(&sp88) + (0x3C))) = 0x100;
    sub_8134CAC(&sp110, &sp44, &sp0);
    sub_8134CAC(&spCC, &sp110, &sp88);
    sub_8134CAC(&sp154, arg0, &spCC);
    (*(s32 *)((s8 *)(arg0) + (0))) = (*(s32 *)((s8 *)(&sp154) + (0)));
    (*(s32 *)((s8 *)(arg0) + (4))) = (s32) (*(s32 *)((s8 *)(&sp154) + (4)));
    (*(s32 *)((s8 *)(arg0) + (8))) = (s32) (*(s32 *)((s8 *)(&sp154) + (8)));
    (*(s32 *)((s8 *)(arg0) + (0xC))) = (s32) (*(s32 *)((s8 *)(&sp154) + (0xC)));
    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) (*(s32 *)((s8 *)(&sp154) + (0x10)));
    (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) (*(s32 *)((s8 *)(&sp154) + (0x14)));
    (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) (*(s32 *)((s8 *)(&sp154) + (0x18)));
    (*(s32 *)((s8 *)(arg0) + (0x1C))) = (s32) (*(s32 *)((s8 *)(&sp154) + (0x1C)));
    (*(s32 *)((s8 *)(arg0) + (0x20))) = (s32) (*(s32 *)((s8 *)(&sp154) + (0x20)));
    (*(s32 *)((s8 *)(arg0) + (0x24))) = (s32) (*(s32 *)((s8 *)(&sp154) + (0x24)));
    (*(s32 *)((s8 *)(arg0) + (0x28))) = (s32) (*(s32 *)((s8 *)(&sp154) + (0x28)));
    (*(s32 *)((s8 *)(arg0) + (0x2C))) = (s32) (*(s32 *)((s8 *)(&sp154) + (0x2C)));
    (*(s32 *)((s8 *)(arg0) + (0x30))) = (s32) (*(s32 *)((s8 *)(&sp154) + (0x30)));
    (*(s32 *)((s8 *)(arg0) + (0x34))) = (s32) (*(s32 *)((s8 *)(&sp154) + (0x34)));
    (*(s32 *)((s8 *)(arg0) + (0x38))) = (s32) (*(s32 *)((s8 *)(&sp154) + (0x38)));
    (*(s32 *)((s8 *)(arg0) + (0x3C))) = (s32) (*(s32 *)((s8 *)(&sp154) + (0x3C)));
    (*(s32 *)((s8 *)(&sp154) + (0x40))) = 0x08CDC470;
    (*(s32 *)((s8 *)(&spCC) + (0x40))) = 0x08CDC470;
    (*(s32 *)((s8 *)(&sp110) + (0x40))) = 0x08CDC470;
    (*(s32 *)((s8 *)(&sp88) + (0x40))) = 0x08CDC470;
    (*(s32 *)((s8 *)(&sp44) + (0x40))) = 0x08CDC470;
    sp40 = 0x08CDC470;
}
#endif
