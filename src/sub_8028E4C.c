#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8028E4C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8028E4C.s\"");
#else
void sub_8028E4C(void *arg0) {
    (*(s16 *)((s8 *)(arg0) + (0x2F8))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x2FC))) = 0;
    (*(u8 *)((s8 *)(arg0) + (0xF9))) = (u8) (-4 & (*(u8 *)((s8 *)(arg0) + (0xF9))));
}
#endif
