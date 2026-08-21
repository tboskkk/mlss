#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_809D268 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_809D2A8;

s32 sub_809D268(void *arg0) {
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_809D2A8;
    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D274.s\"");
#else
#error "TODO: write sub_809D274 to match asm/nonmatching/sub_809D274.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D2A8.s\"");
#else
#error "TODO: write sub_809D2A8 to match asm/nonmatching/sub_809D2A8.s, then delete this #error"
#endif
