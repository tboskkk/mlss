#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813B878 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B878.s\"");
#else
s32 sub_813B878(void *arg0, void *arg1) {
    s32 temp_r1_14;
    s32 temp_r2_12;
    s32 var_r4_8;

    var_r4_8 = 0;
    temp_r2_12 = (*(s32 *)((s8 *)(arg1) + (0x10)));
    temp_r1_14 = (*(s32 *)((s8 *)(arg0) + (0x10)));
    if ((temp_r1_14 >= (s32) (temp_r2_12 - (*(u16 *)((s8 *)(arg1) + (0x276))))) && ((s32) (temp_r1_14 - (*(u16 *)((s8 *)(arg0) + (0x276)))) <= temp_r2_12)) {
        var_r4_8 = 1;
    }
    return var_r4_8;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B8A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
