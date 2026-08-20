#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047AF4 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8047AF4(void *arg0) {
    return ((u8) (*(u8 *)((s8 *)(arg0) + (0x2B5))) >> 3) & 1;
}
