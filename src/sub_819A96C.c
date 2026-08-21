#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_819A96C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819A96C.s\"");
#else
u16 sub_819A96C(s32 arg0) {
    s32 temp_r3_13;
    u16 temp_r1_19;
    u32 temp_r0_7;

    temp_r0_7 = arg0 << 0x10;
    temp_r3_13 = (temp_r0_7 >> 0x18) - 0x24;
    if (temp_r3_13 >= 0) {
        temp_r1_19 = *(s32 *)(0x0821C9A8 + (temp_r3_13 * 2));
        return (u16) (0x800 - (temp_r1_19 + ((u32) ((*(s32 *)(0x0821C9A8 + ((temp_r3_13 + 1) * 2)) - temp_r1_19) * ((u32) (0xFF0000 & temp_r0_7) >> 0x10)) >> 8)));
    }
    return 0U;
}
#endif
