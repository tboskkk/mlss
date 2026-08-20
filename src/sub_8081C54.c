#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8081C54 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_8081F84;

void sub_8081C54(void *arg0) {
    if (!(1 & (*(u8 *)((s8 *)((*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x28)))) + (0x111))))) {
        (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8081F84;
    }
}
