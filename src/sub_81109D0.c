#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81109D0 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_808750C;

void sub_81109D0(void *arg0) {
    s32 temp_r0_10;

    temp_r0_10 = (*(s32 *)((s8 *)(arg0) + (0x18))) + 0xFFFFFE00;
    (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r0_10;
    if (temp_r0_10 <= 0) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81109F4.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_81101BC;

void sub_81109F4(void *arg0) {
    void *temp_r2_12;

    sub_8082E1C(arg0, 2, 0, 0);
    temp_r2_12 = (*(void **)((s8 *)(arg0) + (8)));
    (*(u8 *)((s8 *)(temp_r2_12) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_12) + (0x12)))) | 2);
    (*(s8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x113))) = 0;
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_81101BC;
}
#endif

s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_807FB64(void *);                        /* extern */
s32 sub_80883A0(void *, s32);                   /* extern */
extern s32 sub_8110A94;

void sub_8110A30(void *arg0) {
    s32 temp_r0_24;
    s32 temp_r0_29;
    s32 temp_r0_37;
    void *temp_r1_18;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_80883A0(arg0, 0x20);
        temp_r1_18 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x28)));
        temp_r0_24 = (*(s32 *)((s8 *)(temp_r1_18) + (0xD8))) + 0x2000;
        (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r0_24;
        (*(s32 *)((s8 *)(arg0) + (0x38))) = temp_r0_24;
        temp_r0_29 = (*(s32 *)((s8 *)(temp_r1_18) + (0xDC)));
        (*(s32 *)((s8 *)(arg0) + (0x14))) = temp_r0_29;
        (*(s32 *)((s8 *)(arg0) + (0x3C))) = temp_r0_29;
        temp_r0_37 = (*(s32 *)((s8 *)(temp_r1_18) + (0xE0))) + 0x800;
        (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r0_37;
        (*(s32 *)((s8 *)(arg0) + (0x40))) = temp_r0_37;
        sub_807FB64((*(void **)((s8 *)(arg0) + (8))));
        stop_sfx_80195A8(0x119);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8110A94;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110A94.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110B04.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110B3C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110B84.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110BF8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110C88.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110CB0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110E30.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
