#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DA324 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_80DA368;

void sub_80DA324(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DA368;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DA340.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8087540(void *);                        /* extern */

void sub_80DA340(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 6, 0, 0);
        sub_8087540(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DA368.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DA39C.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80DA3E0;

void sub_80DA39C(void *arg0) {
    u16 temp_r0_11;
    void *temp_r2_21;

    temp_r0_11 = (*(u16 *)((s8 *)(arg0) + (0xAC))) - 1;
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_11;
    if ((s32) (temp_r0_11 << 0x10) < 0) {
        sub_8082E1C(arg0, 7, 0, 0);
        temp_r2_21 = (*(void **)((s8 *)(arg0) + (8)));
        (*(u8 *)((s8 *)(temp_r2_21) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_21) + (0x12)))) | 2);
        (*(u16 *)((s8 *)(arg0) + (0xAC))) = 0U;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DA3E0;
    }
}
#endif
