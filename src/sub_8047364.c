#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047364 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047364.s\"");
#else
void sub_8047364(void *arg0, u8 arg1) {
    u8 temp_r0_26;
    u8 temp_r3_14;
    void *temp_r0_45;

    temp_r3_14 = (*(u8 *)((s8 *)(arg0) + (0x214)));
    temp_r0_26 = (((-0x39 & temp_r3_14) | ((u32) (temp_r3_14 << 0x1D) >> 0x1A)) & ~7) | (arg1 & 7);
    (*(u8 *)((s8 *)(arg0) + (0x214))) = temp_r0_26;
    if ((u32) ((u32) (temp_r0_26 << 0x1D) >> 0x1D) > 2U) {
        (*(s8 *)((s8 *)(arg0) + (2))) = (s8) ((*(u8 *)((s8 *)(arg0) + (0x24))) << 5);
        if ((7 & (*(u8 *)((s8 *)(arg0) + (0x214)))) == 3) {
            temp_r0_45 = (*(void **)((s8 *)(arg0) + (0x294)));
            sub_801E150(temp_r0_45, (*(u8 *)((s8 *)(temp_r0_45) + (0x21))), 0, 0, 0);
        }
    }
    (*(u8 *)((s8 *)(arg0) + (0x214))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x214))) | 0x40);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80473DC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80474D0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
