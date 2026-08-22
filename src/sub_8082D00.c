#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8082D00 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8082D00(void *arg0, s32 arg1, s32 arg2) {
    (*(u16 *)((s8 *)(arg0) + (0x778))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x778))) + arg1);
    (*(u16 *)((s8 *)(arg0) + (0x77A))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x77A))) + arg2);
}
