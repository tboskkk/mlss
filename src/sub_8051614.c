#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8051614 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051614.s\"");
#else
void sub_8051614(void *arg1) {
    (*(s32 (**)())((s8 *)(arg1) + (0x1A0)))();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051628.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051740.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051A00.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051A80.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051ACC.s\"");
#else
s32 sub_8057C9C(s32, s32, s32);         /* extern */

void sub_8051ACC(void *arg0) {
    s32 var_r0_12;
    s32 var_r0_28;

    if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) < 0) {
        var_r0_12 = 0;
        goto block_3;
    }
    var_r0_12 = (*(u16 *)((s8 *)(arg0) + (0x20))) - 0xF0;
    if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) > var_r0_12) {
block_3:
        (*(s16 *)((s8 *)(arg0) + (0x1C))) = (s16) var_r0_12;
    }
    if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) < 0) {
        var_r0_28 = 0;
        goto block_7;
    }
    var_r0_28 = (*(u16 *)((s8 *)(arg0) + (0x22))) - 0xA0;
    if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) > var_r0_28) {
block_7:
        (*(s16 *)((s8 *)(arg0) + (0x1E))) = (s16) var_r0_28;
    }
    sub_8057C9C((*(s32 *)((s8 *)(arg0) + (0x44))), M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */), M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051B16.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
