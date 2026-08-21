#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DC3F0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DC3F0.s\"");
#else
s32 sub_81DBAE8(s32 *);                         /* extern */

void sub_81DC3F0(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 spC;

    sp0 = arg0;
    sp4 = arg1;
    sp8 = arg2;
    spC = arg3;
    sub_81DBAE8(&sp0);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DC434.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
