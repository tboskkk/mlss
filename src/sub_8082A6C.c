#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8082A6C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082A6C.s\"");
#else
s32 sub_80214A4(s32, s32, s32, s32);            /* extern */

void sub_8082A6C(s32 arg0) {
    s32 temp_r2_12;

    if (arg0 != 0) {
        temp_r2_12 = 0xF000 & arg0;
        if ((temp_r2_12 != 0x2000) && (temp_r2_12 != 0xB000) && (temp_r2_12 != 0x4000) && (temp_r2_12 != 0x7000)) {
            sub_80214A4(0, arg0, -1, 1);
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082AAC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
