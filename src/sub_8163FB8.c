#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163FB8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163FB8.s\"");
#else
void sub_8163FB8(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    (*(s32 *)((s8 *)(arg0) + (0))) = arg1;
    (*(s32 *)((s8 *)(arg0) + (4))) = arg2;
    (*(s32 *)((s8 *)(arg0) + (8))) = arg3;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163FF0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8164294.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8164654.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_816507C();                              /* extern */
s32 sub_81650DC(void *);                        /* extern */

void sub_81647E8(void *arg0, void *arg1, s32 arg2, s32 arg3) {
    s32 temp_r1_29;
    s32 temp_r1_39;
    struct struc_15 *temp_r5_49;
    u8 temp_r1_25;

    sub_816507C();
    (*(s32 *)((s8 *)(arg0) + (0x28))) = arg2;
    if (arg2 <= 3) {
        (*(s32 *)((s8 *)(arg0) + (0x28))) = 4;
    }
    (*(s32 *)((s8 *)(arg0) + (0x2C))) = arg3;
    if (arg3 <= 3) {
        (*(s32 *)((s8 *)(arg0) + (0x2C))) = 4;
    }
    temp_r1_25 = (*(u8 *)((s8 *)(arg1) + (0)));
    (*(s32 *)((s8 *)(arg0) + (0x30))) = (s32) temp_r1_25;
    (*(s32 *)((s8 *)(arg0) + (0x34))) = (s32) (*(u8 *)((s8 *)(arg1) + (1)));
    temp_r1_29 = temp_r1_25 * 8;
    if ((s32) ((*(s32 *)((s8 *)(arg0) + (0x28))) + temp_r1_29) > 0xEC) {
        (*(s32 *)((s8 *)(arg0) + (0x28))) = (s32) (0xEC - temp_r1_29);
    }
    temp_r1_39 = (*(s32 *)((s8 *)(arg0) + (0x34))) * 8;
    if ((s32) ((*(s32 *)((s8 *)(arg0) + (0x2C))) + temp_r1_39) > 0x9C) {
        (*(s32 *)((s8 *)(arg0) + (0x2C))) = (s32) (0x9C - temp_r1_39);
    }
    temp_r5_49 = arg0 + 8;
    sub_8199D78(temp_r5_49, (*(u8 **)((s8 *)(arg0) + (0x20))), 0x20, 0xC, (s32) ((u32) (((0x20 - (*(s32 *)((s8 *)(arg0) + (0x30)))) << 0x1B) + 0x0C000000) >> 0x18), 0, 0, 6, 1, 0);
    sub_8199D5C(temp_r5_49, 0, 6U, (s32) (arg1 + 2));
    (*(s32 *)((s8 *)(arg0) + (0x5C))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x58))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x64))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x68))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x6C))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x60))) = 0;
    sprite_hide_8021F20((*(struct Sprite **)((s8 *)(arg0) + (0))));
    *(*(s16 **)((s8 *)(arg0) + (0x50))) = 0 - (*(s32 *)((s8 *)(arg0) + (0x28)));
    *(*(s16 **)((s8 *)(arg0) + (0x54))) = 0 - (*(s32 *)((s8 *)(arg0) + (0x2C)));
    sub_81650DC(arg0);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81648A4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81649AC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8164B58.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
