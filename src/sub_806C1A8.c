#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806C1A8 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_806B7BC;

void sub_806C1A8(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 8;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806B7BC;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C1C8.s\"");
#else
#error "TODO: write sub_806C1C8 to match asm/nonmatching/sub_806C1C8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C224.s\"");
#else
#error "TODO: write sub_806C224 to match asm/nonmatching/sub_806C224.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C294.s\"");
#else
#error "TODO: write sub_806C294 to match asm/nonmatching/sub_806C294.s, then delete this #error"
#endif
