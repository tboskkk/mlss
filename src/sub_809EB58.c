#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_809EB58 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_809EA4C;

void sub_809EB58(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x80))) = 0;
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_809EA4C;
    (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0;
}

extern s32 sub_808750C;

void sub_809EB70(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809EB8C.s\"");
#else
#error "TODO: write sub_809EB8C to match asm/nonmatching/sub_809EB8C.s, then delete this #error"
#endif
