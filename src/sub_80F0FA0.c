#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F0FA0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0FA0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1054.s\"");
#else
s32 sub_8047A5C(s32, s32, u16, s32, s32);       /* extern */

s32 sub_80F1054(s32 arg0, s32 arg1, void *arg3) {
    s32 temp_r0_9;
    s32 var_r5_16;

    temp_r0_9 = (*(s32 *)((s8 *)(arg3) + (0)));
    var_r5_16 = 1;
    if (temp_r0_9 & 1) {
        var_r5_16 = -1;
    }
    sub_8047A5C(arg1, ((temp_r0_9 >> 1) & 1) + 1, (*(u16 *)((s8 *)(arg3) + (4))), var_r5_16, (s32) (*(u16 *)((s8 *)(arg3) + (8))));
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1088.s\"");
#else
s32 sub_8046A90(s32, s32, s32, s32, s32);   /* extern */
s32 sub_8046B30(s32, s32, s32, s32, s32);   /* extern */

s32 sub_80F1088(s32 arg0, s32 arg1, void *arg3) {
    s32 temp_r2_10;
    s32 temp_r2_27;

    temp_r2_10 = (*(s32 *)((s8 *)(arg3) + (0)));
    if (4 & temp_r2_10) {
        sub_8046A90(arg1, ((temp_r2_10 >> 1) & 1) + 1, temp_r2_10 & 1, M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */), (s32) (*(u16 *)((s8 *)(arg3) + (8))));
    }
    temp_r2_27 = (*(s32 *)((s8 *)(arg3) + (0)));
    if (8 & temp_r2_27) {
        sub_8046B30(arg1, ((temp_r2_27 >> 1) & 1) + 1, temp_r2_27 & 1, M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */), (s32) (*(u16 *)((s8 *)(arg3) + (8))));
    }
    return 1;
}
#endif
