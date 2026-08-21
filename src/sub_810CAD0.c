#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810CAD0 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_810C05C;

void sub_810CAD0(void) {
    void *temp_r1_12;
    void *temp_r1_22;

    temp_r1_12 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x27C)));
    if (temp_r1_12 != NULL) {
        (*(s32 **)((s8 *)(temp_r1_12) + (4))) = &sub_810C05C;
    }
    temp_r1_22 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x280)));
    if (temp_r1_22 != NULL) {
        (*(s32 **)((s8 *)(temp_r1_22) + (4))) = &sub_810C05C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810CB04.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810CB84.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810CBC8.s\"");
#else
s32 sub_810B908(s32);                           /* extern */

void sub_810CBC8(void) {
    sub_810B908(0);
    sub_810B908(1);
}
#endif
