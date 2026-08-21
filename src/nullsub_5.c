#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// nullsub_5 needs.

asm_unified(".include \"asm/macros.inc\"");

void nullsub_5(void) {
}

void nullsub_6(void) {
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DCDF4.s\"");
#else
s32 sub_81DD23C(s32);                               /* extern */

s32 sub_81DCDF4(s32 *arg0, s32 arg1) {
    s32 temp_r0_12;
    s32 temp_r0_18;

    *(s32 *)0x03001BD4 = 0;
    temp_r0_12 = sub_81DD23C(arg1);
    if (temp_r0_12 == -1) {
        temp_r0_18 = *(s32 *)0x03001BD4;
        if (temp_r0_18 != 0) {
            *arg0 = temp_r0_18;
        }
    }
    return temp_r0_12;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/strcmp.s\"");
#else
#error "TODO: write strcmp to match asm/nonmatching/strcmp.s, then delete this #error"
#endif
