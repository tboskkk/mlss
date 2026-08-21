#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EAE9C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAE9C.s\"");
#else
s32 sub_80EAE9C(s32 arg0, s32 *arg1, void *arg2) {
    if ((*(u8 *)((s8 *)(*(void **)0x03000FB8) + (0x30))) == (*(s32 *)((s8 *)(arg2) + (0)))) {
        *arg1 = (*(s32 *)((s8 *)(arg2) + (4)));
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAEBC.s\"");
#else
s32 sub_80EAEBC(s32 arg0, void *arg1, s32 *arg2, void *arg3) {
    if (((s32) (*(u8 *)((s8 *)((*(void **)((s8 *)(arg1) + (4)))) + (0x1B2))) >> (*(s32 *)((s8 *)(arg3) + (0)))) & 1) {
        *arg2 = (*(s32 *)((s8 *)(arg3) + (4)));
    }
    return 1;
}
#endif
