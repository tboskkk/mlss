#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81639F8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81639F8.s\"");
#else
void sub_81639F8(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (0x44))) = arg1;
    (*(s16 *)((s8 *)(arg0) + (0x48))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x40))) = 0;
}
#endif

s32 sub_8163A08(void *arg0) {
    if (((*(s32 *)((s8 *)(arg0) + (0x44))) != 0) && ((*(s32 *)((s8 *)(arg0) + (0x40))) != 1)) {
        return 0;
    }
    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163A24.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163A44.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
