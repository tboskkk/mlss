#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8070C84 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8070C84(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070C8C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070CF0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8071080;

void sub_8070D60(void *arg0) {
    sub_8082E1C(arg0, 5, 0, 0);
    play_sfx_80195B4(0x46, -1);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8071080;
}

extern s32 sub_806F47C;

void sub_8070D88(void *arg0) {
    s32 temp_r0_25;

    (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x18))) + (*(s32 *)((s8 *)(arg0) + (0x8C))));
    (*(s32 *)((s8 *)(arg0) + (0x8C))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x8C))) - 0x80);
    if ((s32) (*(s32 *)((s8 *)(arg0) + (0x18))) <= 0) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
        temp_r0_25 = (*(s32 *)((s8 *)(arg0) + (0x9C))) - 1;
        (*(s32 *)((s8 *)(arg0) + (0x9C))) = temp_r0_25;
        if (temp_r0_25 == 0) {
            (*(s32 *)((s8 *)(arg0) + (0x8C))) = 0x300;
            return;
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806F47C;
    }
}
