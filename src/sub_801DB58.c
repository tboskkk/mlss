#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801DB58 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801DB58.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801DC00.s\"");
#else
void sub_801DC00(void **arg0, s32 arg1) {
    s32 sp0;

    sp0 = (arg1 * 0x10) | arg1 | (arg1 << 8) | (arg1 << 0xC) | (arg1 << 0x10) | (arg1 << 0x14) | (arg1 << 0x18) | (arg1 << 0x1C);
    CpuFastSet(&sp0, *arg0, 0x01001400U);
}
#endif
