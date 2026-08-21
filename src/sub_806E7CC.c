#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806E7CC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E7CC.s\"");
#else
extern s32 sub_806D61C;

void sub_806E7CC(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x1E;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806D61C;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E804.s\"");
#else
#error "TODO: write sub_806E804 to match asm/nonmatching/sub_806E804.s, then delete this #error"
#endif
