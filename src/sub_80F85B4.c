#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F85B4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F85B4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8624.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8694.s\"");
#else
s32 sub_80F7920(void *, s32, s32 *, void *); /* extern */
s32 sub_80F79F0(void *, u8, s32, s32);  /* extern */

s32 sub_80F8694(void *arg0, s32 arg2) {
    s32 *sp0;
    s32 sp4;
    s32 sp8;
    u8 temp_r0_12;
    u8 var_r0_15;

    temp_r0_12 = (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x179C)));
    if ((u32) temp_r0_12 <= 6U) {
        var_r0_15 = temp_r0_12 - 1;
    } else {
        var_r0_15 = temp_r0_12 - 7;
    }
    sp0 = &sp8;
    sub_80F7920(arg0, M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */), &sp4, &sp0 + 6);
    sp0 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    sub_80F79F0(arg0, var_r0_15, M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */), M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */));
    return 0;
}
#endif
