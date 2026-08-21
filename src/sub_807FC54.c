#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807FC54 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8082CCC(s32, s32, s32, s32, s32, s32);  /* extern */

void sub_807FC54(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    sub_8082CCC((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x24C))), arg0, arg1, arg2, arg3, arg4);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FC88.s\"");
#else
#error "TODO: write sub_807FC88 to match asm/nonmatching/sub_807FC88.s, then delete this #error"
#endif
