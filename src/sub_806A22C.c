#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806A22C needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_806A2FC;

void sub_806A22C(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0xC;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806A2FC;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A24C.s\"");
#else
#error "TODO: write sub_806A24C to match asm/nonmatching/sub_806A24C.s, then delete this #error"
#endif
