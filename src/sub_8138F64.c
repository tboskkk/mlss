#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8138F64 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8138F64.s\"");
#else
s32 sub_80FBD44(void *, u8 *);                      /* extern */

s32 sub_8138F64(void *arg0, u16 arg1) {
    u8 sp0;
    u16 var_r0_10;

    var_r0_10 = arg1;
    if ((u32) var_r0_10 >= (u32) (*(u8 *)((s8 *)(arg0) + (0x10B)))) {
        if ((sub_80FBD44(arg0, &sp0) << 0x18) != 0) {
            var_r0_10 = (u16) sp0;
            goto block_3;
        }
        return 0;
    }
block_3:
    return (*(s32 *)((s8 *)(((var_r0_10 * 4) + arg0)) + (0x28)));
}
#endif
