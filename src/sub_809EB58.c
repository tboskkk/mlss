#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_809EB58 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809EB58.s\"");
#else
u32* sub_809EB58(u32* param_1) {
    u32* puVar1;
    
    puVar1 = param_1;
    puVar1 = (u32*)((s32)puVar1 + 0x80);
    *puVar1 = 0;
    *(u32**)((s32)param_1 + 0x4C) = (u32*)0x0809EA4D;
    puVar1 = (u32*)((s32)param_1 + 0xAC);
    *(u16*)puVar1 = 0;
    return param_1;
}
#endif

extern s32 sub_808750C;

void sub_809EB70(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}
