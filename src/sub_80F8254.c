#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F8254 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8254.s\"");
#else
s32 sub_80F8254(s32 arg0, s32 arg1, s32 *arg2) {
    void *temp_r3_7;

    temp_r3_7 = *(void **)0x03000FD8;
    (*(s16 *)((s8 *)(temp_r3_7) + (0x2B4))) = (s16) *arg2;
    (*(u8 *)((s8 *)(temp_r3_7) + (0x2C1))) = (u8) ((*(u8 *)((s8 *)(temp_r3_7) + (0x2C1))) | 8);
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F827C.s\"");
#else
s32 sub_80F827C(s32 arg0, s32 arg1, s32 *arg2) {
    *(u16 *)0x030003C4 = (0xFFFFFC00 & *(u16 *)0x030003C4) | (0x3FF & ~*arg2 & 0x3FF);
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F82A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
