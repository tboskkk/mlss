#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8106994 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106994.s\"");
#else
s32 sub_810CA30();                              /* extern */

void sub_8106994(void *arg0) {
    (*(u8 *)((s8 *)(*(void **)0x03000FD8) + (0x2F9))) = (u8) (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x6C)))) + (0xA)));
    sub_810CA30();
}
#endif
