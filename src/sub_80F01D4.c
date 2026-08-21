#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F01D4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F01D4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F028C.s\"");
#else
s32 sub_80E9C4C(void *, s32, s32, s32, s32, s32); /* extern */
s32 sub_80ECB20(s32, void *, s32 *);            /* extern */

void sub_80F028C(s32 *arg0, s32 arg1, u8 arg2, u16 arg3) {
    s32 sp8;
    s32 spC;
    void *temp_r2_18;

    temp_r2_18 = *(void **)0x03000FD0;
    if (!(1 & (*(u16 *)((s8 *)(temp_r2_18) + (0x148)))) || (!(1 & (*(u16 *)((s8 *)(temp_r2_18) + (0x1F0)))) && (1 & (*(u8 *)((s8 *)(temp_r2_18) + (0x55A)))))) {
        sp8 = 2;
        spC = arg1;
        sub_80E9C4C(temp_r2_18 + 0x4B0, 0, *(s32 *)0x03000FC0 + 0x38C, 0, 0x2F, (s32) arg2);
        sub_80ECB20(*arg0, *(void **)0x03000FD0 + 0xA8, &sp8);
        (*(u16 *)((s8 *)(*(void **)0x03000FD0) + (0x54C))) = arg3;
    }
}
#endif
