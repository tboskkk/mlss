#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8029024 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029024.s\"");
#else
void sub_8029024(void *arg0, s8 arg1) {
    (*(s8 *)((s8 *)(arg0) + (0x12B))) = arg1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029030.s\"");
#else
void sub_8029030(void *arg0, s32 arg1, s32 arg2) {
    (*(u8 *)((s8 *)(arg0) + (0x12D))) = (u8) ((((((*(u8 *)((s8 *)(arg0) + (0x12D))) | 1) & ~2) | ((arg1 & 1) * 2)) & ~0xC) | ((arg2 & 3) * 4));
}
#endif
