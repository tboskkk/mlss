#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8151CDC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8151CDC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8152500.s\"");
#else
s32 sub_8150AC8(void *, s32);                   /* extern */
s32 sub_8150B8C(void *, s32 *);                 /* extern */
s32 sub_815FA70(void *, s32);                   /* extern */

void sub_8152500(void *arg0) {
    s32 sp0;
    s32 sp4;
    s32 temp_r0_68;
    s32 temp_r1_32;
    void *temp_r0_66;
    void *temp_r2_23;

    if (8 & (*(u16 *)((s8 *)(arg0) + (0x1CC4)))) {
        sub_8150AC8((*(void **)((s8 *)(arg0) + (0x1CB4))), 1);
        temp_r2_23 = (*(void **)((s8 *)(arg0) + (0x1C98)));
        if (((*(u16 *)((s8 *)(temp_r2_23) + (0x36))) ^ 1) & 1) {
            temp_r1_32 = (s32) (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x1CB4)))) + (0xC))) >> 8;
            if (temp_r1_32 > 0xA) {
                sub_815FA70(temp_r2_23, 0);
            } else if (temp_r1_32 > 4) {
                sub_815FA70(temp_r2_23, 4);
            } else if (temp_r1_32 > -5) {
                sub_815FA70(temp_r2_23, 5);
            } else {
                sub_815FA70(temp_r2_23, 6);
            }
        }
    }
    temp_r0_66 = (*(void **)((s8 *)(arg0) + (0x1C98)));
    temp_r0_68 = (*(s32 *)((s8 *)(temp_r0_66) + (4)));
    sp0 = temp_r0_68;
    sp4 = (*(s32 *)((s8 *)(temp_r0_66) + (8)));
    sp0 = temp_r0_68 - (*(s32 *)((s8 *)(arg0) + (0x1CB8)));
    sp4 -= (*(s32 *)((s8 *)(arg0) + (0x1CBC)));
    sub_8150B8C((*(void **)((s8 *)(arg0) + (0x1CB4))), &sp0);
}
#endif
