#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80197C4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80197C4.s\"");
#else
s32 sub_80197C4(s32 arg0) {
    s32 var_r1_9;
    s32 var_r2_8;

    var_r2_8 = 0;
    var_r1_9 = 1;
    do {
        var_r2_8 += 1;
        var_r1_9 *= 0xA;
    } while (var_r1_9 <= arg0);
    return var_r2_8;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80197E0.s\"");
#else
void sub_80197E0(void) {
    *(s8 *)0x03000C28 = 0;
    *(s32 *)0x03000C6C = *(s32 *)0x080000F4;
    *(s32 *)0x03000C78 = 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019808.s\"");
#else
#error "TODO: write sub_8019808 to match asm/nonmatching/sub_8019808.s, then delete this #error"
#endif
