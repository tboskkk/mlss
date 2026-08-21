#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FA7A0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FA7A0.s\"");
#else
s32 sub_81218C8(s32);                           /* extern */
s32 sub_81218D4(s32);                           /* extern */

s32 sub_80FA7A0(void *arg0, s32 *arg2) {
    s32 temp_r2_7;

    temp_r2_7 = *arg2;
    switch (temp_r2_7) {                            /* irregular */
    case 0:
        sub_81218C8((*(s32 *)((s8 *)(arg0) + (0x14))));
        break;
    case 1:
        sub_81218D4((*(s32 *)((s8 *)(arg0) + (0x14))));
        break;
    }
    return 1;
}
#endif
