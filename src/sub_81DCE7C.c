#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DCE7C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DCE7C.s\"");
#else
s32 sub_81DCE7C(s32 arg0) {
    s32 *var_r2_8;
    s32 var_r1_7;

    var_r1_7 = 0;
    var_r2_8 = (s32 *)0x03001A78;
loop_2:
    if (*var_r2_8 != arg0) {
        var_r2_8 += 8;
        var_r1_7 += 1;
        if (var_r1_7 <= 0x13) {
            goto loop_2;
        }
    }
    return var_r1_7;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DCE9C.s\"");
#else
s32 sub_81DCE9C(s32 arg0) {
    s32 *var_r0_14;

    if (arg0 == M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) {
        var_r0_14 = (s32 *)0x03001A6C;
        goto block_7;
    }
    if (arg0 == M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) {
        var_r0_14 = (s32 *)0x03001A70;
        goto block_7;
    }
    if (arg0 != M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) {
        return arg0 - 0x20;
    }
    var_r0_14 = (s32 *)0x03001A74;
block_7:
    return *var_r0_14;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DCEE8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
