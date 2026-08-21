#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816391C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816391C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816393C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163978.s\"");
#else
s32 sub_81638C4(s32);                           /* extern */
s32 sub_816391C(s32, s32, s32);                 /* extern */

void sub_8163978(s32 arg0, s32 arg4, u8 arg5) {
    u8 sp0;

    sp0 = arg5;
    sub_81638C4(arg0);
    sub_816391C(arg0, 3, arg4);
}
#endif

s32 sub_816391C(s32, s32, s32);             /* extern */

void sub_81639C4(s32 arg0, s32 arg1) {
    sub_816391C(arg0, 6, arg1);
}
