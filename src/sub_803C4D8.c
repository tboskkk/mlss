#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_803C4D8 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_803C4D8(void *arg0) {
    u16 temp_r1_11;

    temp_r1_11 = (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (4)));
    if (((u32) (u16) (temp_r1_11 - 0x10) <= 8U) || ((u32) (u16) (temp_r1_11 - 0x1D) <= 4U)) {
        return 1;
    }
    return 0;
}
