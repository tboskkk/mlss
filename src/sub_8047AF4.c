#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047AF4 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8047AF4(void *arg0) {
    return ((u8) (*(u8 *)((s8 *)(arg0) + (0x2B5))) >> 3) & 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047B08.s\"");
#else
s32 sub_80400B0(void *, s32, s32);              /* extern */
s32 sub_80401F0(void *, s32, s32);              /* extern */

void sub_8047B08(void *arg0, s32 arg1, s32 arg2) {
    if (arg1 == 0) {
        sub_80401F0(arg0, arg2, -1);
    } else {
        sub_80400B0(arg0, arg2, -1);
    }
    (*(s16 *)((s8 *)(arg0) + (0x23E))) = (s16) M2C_ERROR(/* unknown instruction: ldsh $r5, ($mem_loc_fictive_) */);
    (*(u8 *)((s8 *)(arg0) + (0x2B5))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x2B5))) | 8);
}
#endif
