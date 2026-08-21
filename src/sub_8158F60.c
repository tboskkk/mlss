#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8158F60 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158F60.s\"");
#else
void sub_8158F60(void *arg0) {
    u16 temp_r0_11;

    temp_r0_11 = (*(u16 *)((s8 *)(arg0) + (0x1F2A))) - 1;
    (*(u16 *)((s8 *)(arg0) + (0x1F2A))) = temp_r0_11;
    if ((s32) (temp_r0_11 << 0x10) < 0) {
        (*(s16 *)((s8 *)(arg0) + (0x1F28))) = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158F88.s\"");
#else
#error "TODO: write sub_8158F88 to match asm/nonmatching/sub_8158F88.s, then delete this #error"
#endif
