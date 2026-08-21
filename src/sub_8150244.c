#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8150244 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150244.s\"");
#else
s32 sub_8150244(s8 arg0) {
    s8 temp_r0_8;

    temp_r0_8 = arg0;
    if (temp_r0_8 == 0) {
        return 0x100;
    }
    if (temp_r0_8 == 1) {
        return 0x180;
    }
    if ((s32) temp_r0_8 <= 1) {
        return 0x10;
    }
    return 0x160;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150270.s\"");
#else
#error "TODO: write sub_8150270 to match asm/nonmatching/sub_8150270.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81502A8.s\"");
#else
#error "TODO: write sub_81502A8 to match asm/nonmatching/sub_81502A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815033C.s\"");
#else
#error "TODO: write sub_815033C to match asm/nonmatching/sub_815033C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150388.s\"");
#else
#error "TODO: write sub_8150388 to match asm/nonmatching/sub_8150388.s, then delete this #error"
#endif
