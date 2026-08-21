#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DC49C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DC49C.s\"");
#else
u32* sub_81DC49C(void)
{
    u32** ptr = (u32**)0x08CDB630;
    u32* ret = *ptr;
    return ret + 2;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DC4B0.s\"");
#else
s32 sub_81DC4C8();                              /* extern */

void sub_81DC4B0(void) {
    *(s32 (**)())0x08CDB630 = sub_81DC4C8;
    sub_81DC4C8();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DC4C8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DC50C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/_lshrdi3.s\"");
#else
#error "TODO: write _lshrdi3 to match asm/nonmatching/_lshrdi3.s, then delete this #error"
#endif
