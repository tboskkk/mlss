#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8084E84 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8084E84.s\"");
#else
s32 sub_8084E84(s32 arg0, u8 arg1) {
    return *(arg0 + 0xC + (arg1 * 0x14));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8084E98.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
