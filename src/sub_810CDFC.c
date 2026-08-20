#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810CDFC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810CDFC.s\"");
#else
void sub_810CDFC(s32 arg0) {
    s32 var_r0_18;
    s32 var_r0_23;

    if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) <= 0x3F) {
        var_r0_18 = 8;
    } else {
        var_r0_23 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
        if (var_r0_23 < 0) {
            var_r0_23 += 0xFF;
        }
        var_r0_18 = var_r0_23 >> 8;
    }
    *(s32 *)0x04000018 = (u16) (var_r0_18 - 7) | ((M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) - 6) << 0x10);
    *(s32 *)0x04000048 = 0x3F3B3F3F;
    *(s32 *)0x04000040 = 0x7FF07FF0;
    *(s32 *)0x04000044 = (*(u16 *)0x0200001A + 0x99) | ((*(u16 *)0x0200001A + 0x8E) << 8) | (((*(u16 *)0x0200001A + 0x99) | ((*(u16 *)0x0200001A + 0x8E) << 8)) << 0x10);
}
#endif
