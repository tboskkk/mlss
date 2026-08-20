#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81501E4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81501E4.s\"");
#else
s32 sub_81501E4(s16 arg0) {
    s16 temp_r1_8;

    temp_r1_8 = arg0;
    if ((s32) temp_r1_8 <= 0xD0) {
        return 0x800;
    }
    if (((s32) temp_r1_8 <= 0x100) || ((s32) temp_r1_8 <= 0x130)) {
        return 0xA00;
    }
    if (((s32) temp_r1_8 <= 0x160) || ((s32) temp_r1_8 <= 0x190)) {
        return 0xC00;
    }
    if ((s32) temp_r1_8 <= 0x1C0) {
        return 0x1200;
    }
    if ((s32) temp_r1_8 > 0x200) {
        return 0;
    }
    return 0x1400;
}
#endif
