#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EA91C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA91C.s\"");
#else
u32 sub_80EA91C(u32* param1) {
    u32* r1 = param1 + 0x98 / sizeof(u32);
    *r1 = *param1;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA928.s\"");
#else
s32 sub_80EA928(void *arg1, s32 *arg2) {
    (*(s32 *)((s8 *)((((*(u8 *)((s8 *)(arg1) + (0xA6))) * 4) + arg1)) + (0x58))) = (s32) *arg2;
    (*(u8 *)((s8 *)(arg1) + (0xA6))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0xA6))) + 1);
    return 1;
}
#endif
