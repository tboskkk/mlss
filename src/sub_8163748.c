#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163748 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8163748(s32 *arg0) {
    s32 var_r1_7;

    var_r1_7 = 0;
    if (*arg0 == 0) {
        var_r1_7 = 1;
    }
    return var_r1_7;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816375C.s\"");
#else
#error "TODO: write sub_816375C to match asm/nonmatching/sub_816375C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81637AC.s\"");
#else
#error "TODO: write sub_81637AC to match asm/nonmatching/sub_81637AC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163804.s\"");
#else
#error "TODO: write sub_8163804 to match asm/nonmatching/sub_8163804.s, then delete this #error"
#endif
