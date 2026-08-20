#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8029024 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029024.s\"");
#else
u32 sub_8029024(u32 param_1, u8 param_2) {
    u32 *ptr = (u32*)(param_1 + 0x12B);
    *ptr = (u32)param_2;
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029030.s\"");
#else
void sub_8029030(void *arg0, s32 arg1, s32 arg2) {
    (*(u8 *)((s8 *)(arg0) + (0x12D))) = (u8) ((((((*(u8 *)((s8 *)(arg0) + (0x12D))) | 1) & ~2) | ((arg1 & 1) * 2)) & ~0xC) | ((arg2 & 3) * 4));
}
#endif
