#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810FEF4 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_8110034;

void sub_810FEF4(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0xC;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8110034;
    }
}
