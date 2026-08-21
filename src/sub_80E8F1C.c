#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E8F1C needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_80E8F1C(void *arg0, s32 arg1) {
    return (u32) ((arg1 - ((0xC & *(*(u16 **)((s8 *)((*(void **)((s8 *)(arg0) + (4)))) + (0x188)))) << 0xC)) << 0x10) >> 0x15;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E8F38.s\"");
#else
#error "TODO: write sub_80E8F38 to match asm/nonmatching/sub_80E8F38.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E8FB8.s\"");
#else
#error "TODO: write sub_80E8FB8 to match asm/nonmatching/sub_80E8FB8.s, then delete this #error"
#endif
