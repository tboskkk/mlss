#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_814B4C8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814B4C8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814B4F4.s\"");
#else
s32 sub_80FBB50(s32 *, s32, s32, s32, s32);     /* extern */
s32 sub_8139CAC(s32 *, s32, s32, s32);      /* extern */

s32 sub_814B4F4(void *arg0, s32 arg1) {
    s32 sp4;
    s32 var_r1_24;

    sub_8139CAC(&sp4, arg1, 0x24, 0xA);
    var_r1_24 = sub_80FBB50(&sp4, arg1, (*(s32 *)((s8 *)(arg0) + (0x200))), 0x30, 0x30);
    if ((var_r1_24 << 0x18) != 0) {
        var_r1_24 = 1;
    }
    return var_r1_24;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814B530.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814B5D0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
