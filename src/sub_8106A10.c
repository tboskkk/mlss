#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8106A10 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_8104D14;

void sub_8106A10(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0xC)))) + (0x10)))) + (0x12)))) {
        (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8104D14;
    }
}
