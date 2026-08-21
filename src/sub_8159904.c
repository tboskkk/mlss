#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8159904 needs.

asm_unified(".include \"asm/macros.inc\"");

u32* sub_8159904(u32* param_1, u32 param_2) {
    u32* puVar1;
    
    puVar1 = param_1 + 0x14B;
    *puVar1 = param_2;
    return puVar1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159910.s\"");
#else
void sub_8159910(void *arg0, s32 arg1) {
    (*(u16 *)((s8 *)(arg0) + (0x528))) = (u16) (4 | (*(u16 *)((s8 *)(arg0) + (0x528))));
    (*(s32 *)((s8 *)(arg0) + (0x534))) = arg1;
    (*(s32 *)((s8 *)(arg0) + (0x538))) = (s32) ((s32) (arg1 - (*(s32 *)((s8 *)(arg0) + (0x530)))) / 10);
}
#endif
