#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813BB60 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813BB60.s\"");
#else
void sub_813BB60(void *arg1, void *arg2) {
    u16 temp_r0_34;
    u32 var_r0_14;

    if ((*(u16 *)((s8 *)(arg1) + (0x2DE))) == 0) {
        var_r0_14 = 0;
    } else {
        (*(s32 *)((s8 *)(arg1) + (0xC))) = (s32) ((*(s32 *)((s8 *)(arg1) + (0xC))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
        (*(s32 *)((s8 *)(arg1) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg1) + (0x10))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
        temp_r0_34 = (*(u16 *)((s8 *)(arg1) + (0x2DE))) - 1;
        (*(u16 *)((s8 *)(arg1) + (0x2DE))) = temp_r0_34;
        var_r0_14 = (u32) (0 - temp_r0_34) >> 0x1F;
    }
    if (var_r0_14 == 0) {
        (*(s32 *)((s8 *)(arg2) + (0))) = (s32) (*(s32 *)((s8 *)(arg2) + (4)));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813BBB8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
