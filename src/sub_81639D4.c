#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81639D4 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_81639D4(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (0x44))) = arg1;
    (*(s16 *)((s8 *)(arg0) + (0x48))) = 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81639E0.s\"");
#else
s32 sub_8161E38();                              /* extern */

void sub_81639E0(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (0x44))) = arg1;
    (*(s16 *)((s8 *)(arg0) + (0x48))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x40))) = 0;
    sub_8161E38();
}
#endif
