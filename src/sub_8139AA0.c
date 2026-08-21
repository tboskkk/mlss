#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8139AA0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139AA0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139BB0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139CAC.s\"");
#else
void sub_8139CAC(void *arg0, s32 arg1, u16 arg2, u16 arg3) {
    s32 var_r0_46;
    u16 temp_r5_10;

    temp_r5_10 = arg2;
    if (4 & temp_r5_10) {
        (*(s16 *)((s8 *)(arg0) + (0))) = (s16) ((0 - M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */)) * 0x10);
        (*(s16 *)((s8 *)(arg0) + (6))) = (s16) ((0 - M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */)) * 0x10);
        (*(s16 *)((s8 *)(arg0) + (2))) = (s16) (M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */) * 0x10);
        var_r0_46 = M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */);
        goto block_4;
    }
    if (8 & temp_r5_10) {
        (*(s16 *)((s8 *)(arg0) + (0))) = (s16) ((0 - M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) * 0x10);
        (*(s16 *)((s8 *)(arg0) + (6))) = (s16) ((0 - M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) * 0x10);
        (*(s16 *)((s8 *)(arg0) + (2))) = (s16) (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) * 0x10);
        var_r0_46 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
block_4:
        (*(s16 *)((s8 *)(arg0) + (4))) = (s16) (var_r0_46 * 0x10);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139D44.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
