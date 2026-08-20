#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81069B4 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_81069B4(s8 arg0) {
    void *temp_r2_11;

    (*(s8 *)((s8 *)(*(void **)0x03000FD8) + (0x3A5))) = arg0;
    temp_r2_11 = *(void **)0x03000FD8;
    (*(u8 *)((s8 *)(temp_r2_11) + (0xB))) = (u8) ((*(u8 *)((s8 *)(temp_r2_11) + (0xB))) | 0x40);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81069D4.s\"");
#else
#error "TODO: write sub_81069D4 to match asm/nonmatching/sub_81069D4.s, then delete this #error"
#endif
