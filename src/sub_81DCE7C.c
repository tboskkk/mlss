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
#error "TODO: write sub_81DCE9C to match asm/nonmatching/sub_81DCE9C.s, then delete this #error"
#endif
