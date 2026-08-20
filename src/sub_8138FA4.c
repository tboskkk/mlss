#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8138FA4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8138FA4.s\"");
#else
void sub_8138FA4(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (0x2F4))) = (s32) M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    (*(u16 *)((s8 *)(arg0) + (0x2F8))) = (u16) (*(u16 *)((s8 *)(((*(s32 *)((s8 *)(arg0) + (0x1B0))) + ((s32) (arg1 << 0x10) >> 0xF))) + (2)));
}
#endif
