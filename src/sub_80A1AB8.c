#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A1AB8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A1AB8.s\"");
#else
extern s32 sub_80A19F8;

void sub_80A1AB8(void *arg0) {
    (*(s16 *)((s8 *)(arg0) + (0xB2))) = 0xFE4D;
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80A19F8;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A1B64.s\"");
#else
#error "TODO: write sub_80A1B64 to match asm/nonmatching/sub_80A1B64.s, then delete this #error"
#endif
