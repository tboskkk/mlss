#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_819B040 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819B040.s\"");
#else
void sub_819B040(void *arg0, s32 arg1) {
    (*(s16 *)((s8 *)(arg0) + (0))) = 0x83;
    (*(s32 *)((s8 *)(arg0) + (4))) = arg1;
    (*(s16 *)((s8 *)(arg0) + (8))) = 0;
    (*(s8 *)((s8 *)(arg0) + (2))) = 0x78;
    (*(s8 *)((s8 *)(arg0) + (3))) = 0;
    (*(s8 *)((s8 *)(arg0) + (0xC))) = 0;
    (*(s8 *)((s8 *)(arg0) + (0xE))) = 0x7F;
    (*(s8 *)((s8 *)(arg0) + (0xA))) = 1;
    (*(s8 *)((s8 *)(arg0) + (0xD))) = 0xC8;
    (*(s8 *)((s8 *)(arg0) + (0x10))) = 0;
    (*(s8 *)((s8 *)(arg0) + (0xF))) = 2;
    (*(s8 *)((s8 *)(arg0) + (0x11))) = 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819B070.s\"");
#else
#error "TODO: write sub_819B070 to match asm/nonmatching/sub_819B070.s, then delete this #error"
#endif
