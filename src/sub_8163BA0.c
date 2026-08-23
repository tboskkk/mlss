#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163BA0 needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_8163BA0(u16 arg0) {
    s32 temp_r1_11;

    temp_r1_11 = *(s16 *)0x0300102C & arg0;
    return (u32) ((0 - temp_r1_11) | temp_r1_11) >> 0x1F;
}
