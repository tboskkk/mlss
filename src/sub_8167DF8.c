#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8167DF8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8167DF8.s\"");
#else
void sub_8167DF8(void *arg0) {
    if (8 & (*(u16 *)((s8 *)((void *)0x0300034C) + (0x2A)))) {
        (*(s32 *)((s8 *)(arg0) + (0x54))) = 4;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8167E14.s\"");
#else
#error "TODO: write sub_8167E14 to match asm/nonmatching/sub_8167E14.s, then delete this #error"
#endif
