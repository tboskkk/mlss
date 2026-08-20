#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806E778 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E778.s\"");
#else
u32 sub_806E778(u32 param_1) {
    u32 *puVar1;
    u32 uVar2;

    puVar1 = (u32 *)((u32)param_1 + 0x80);
    uVar2 = *puVar1;
    if (uVar2 != 0) {
        *(u32 *)(param_1 + 0x4C) = uVar2;
        *(u32 *)(*(u32 *)(param_1 + 0x30) + 0x4C) = uVar2;
    }
    return uVar2;
}
#endif
