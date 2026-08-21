#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805A0EC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805A0EC.s\"");
#else
void sub_805A0EC(s32 arg0, s32 arg1, u16 *arg2, u16 *arg3) {
    u32 temp_r1_8;

    temp_r1_8 = (u32) (arg1 << 0x10) >> 0xF;
    *arg2 = *(arg0 + 0x36 + temp_r1_8);
    *arg3 = *(arg0 + 0x3C + temp_r1_8);
}
#endif
