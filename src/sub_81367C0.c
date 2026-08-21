#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81367C0 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 process_add(void *, u8);                    /* extern */

void *sub_81367C0(void *arg0, u8 arg1) {
    process_add(arg0, arg1);
    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x08CDC4A0;
    return arg0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81367DC.s\"");
#else
#error "TODO: write sub_81367DC to match asm/nonmatching/sub_81367DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81368AC.s\"");
#else
#error "TODO: write sub_81368AC to match asm/nonmatching/sub_81368AC.s, then delete this #error"
#endif
