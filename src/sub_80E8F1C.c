#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E8F1C needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_80E8F1C(void *arg0, s32 arg1) {
    return (u32) ((arg1 - ((0xC & *(*(u16 **)((s8 *)((*(void **)((s8 *)(arg0) + (4)))) + (0x188)))) << 0xC)) << 0x10) >> 0x15;
}
