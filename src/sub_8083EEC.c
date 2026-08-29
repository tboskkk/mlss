#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8083EEC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8083EEC.s\"");
#else
u32 sub_8083EEC(void *arg0, s32 arg1) {
    s32 var_r0_25;
    u8 temp_r0_9;

    temp_r0_9 = (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0xF0)))) + (0x1D)));
    switch (arg1) {                                 /* irregular */
    case 0:
        return temp_r0_9 >> 6;
    case 1:
        var_r0_25 = (s32) temp_r0_9 >> 4;
block_9:
        return var_r0_25 & 3;
    case 2:
        var_r0_25 = (s32) temp_r0_9 >> 2;
        goto block_9;
    default:
        return -1U;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8083F20.s\"");
#else
s32 *sub_81980C8();                                 /* extern */

s32 sub_8083F20(s32 arg0, u8 *arg1, s32 arg2) {
    s32 temp_r3_11;
    s32 var_r6_9;
    u32 var_r0_38;
    u8 *var_r5_7;
    u8 temp_r1_17;
    u8 temp_r2_28;

    var_r5_7 = arg1;
    var_r6_9 = 0;
    temp_r3_11 = *sub_81980C8();
loop_1:
    temp_r1_17 = *var_r5_7;
    var_r5_7 += 1;
    if (temp_r1_17 == 0xFF) {
        var_r5_7 += 1;
        goto loop_1;
    }
    if ((s32) temp_r1_17 > 0xFB) {
        temp_r2_28 = *var_r5_7;
        var_r0_38 = (u32) (*(u32 *)((s8 *)((((temp_r2_28 >> 3) * 4) + (((0xFF - temp_r1_17) * 4) + temp_r3_11))) + (4))) >> ((temp_r2_28 & 7) * 4);
block_7:
        var_r6_9 += (var_r0_38 & 0xF) + (arg2 + 1);
        goto loop_1;
    }
    if (temp_r1_17 != 0) {
        var_r0_38 = (u32) (*(u32 *)((s8 *)(((((s32) temp_r1_17 >> 3) * 4) + temp_r3_11)) + (4))) >> ((temp_r1_17 & 7) * 4);
        goto block_7;
    }
    return var_r6_9;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8083F88.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8084004.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8084170.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
