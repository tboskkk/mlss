#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F1C0C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1C0C.s\"");
#else
s32 sub_80F1C0C(u8 *arg2) {
    void *temp_r3_7;

    temp_r3_7 = *(void **)0x03000FD0;
    (*(u8 *)((s8 *)(temp_r3_7) + (0x55A))) = (u8) ((-2 & (*(u8 *)((s8 *)(temp_r3_7) + (0x55A)))) | (*arg2 & 1));
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1C34.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
