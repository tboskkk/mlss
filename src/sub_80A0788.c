#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A0788 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A0788.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_80A0788(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A07B0.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_80A07B0(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A07D8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A0844.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_809FF4C;

void sub_80A0844(void *arg0) {
    s32 var_r1_21;
    s32 var_r2_27;
    s32 var_r3_33;
    void *temp_r2_13;

    sub_8082E1C(arg0, 0x20, 0, 0);
    temp_r2_13 = (*(void **)((s8 *)(arg0) + (8)));
    (*(u8 *)((s8 *)(temp_r2_13) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_13) + (0x12)))) | 2);
    var_r1_21 = (*(s32 *)((s8 *)(arg0) + (0x10)));
    if (var_r1_21 < 0) {
        var_r1_21 += 0xFF;
    }
    var_r2_27 = (*(s32 *)((s8 *)(arg0) + (0x14)));
    if (var_r2_27 < 0) {
        var_r2_27 += 0xFF;
    }
    var_r3_33 = (*(s32 *)((s8 *)(arg0) + (0x18)));
    if (var_r3_33 < 0) {
        var_r3_33 += 0xFF;
    }
    sub_80DF024(0x2AC7, var_r1_21 >> 8, var_r2_27 >> 8, var_r3_33 >> 8, arg0);
    play_sfx_80195B4(0xD5, -1);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_809FF4C;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A08A8.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_809F1EC;

void sub_80A08A8(void *arg0) {
    s32 var_r1_19;
    s32 var_r2_25;
    s32 var_r3_31;
    void *temp_r2_13;

    sub_8082E1C(arg0, 0x18, 0, 0);
    temp_r2_13 = (*(void **)((s8 *)(arg0) + (8)));
    (*(u8 *)((s8 *)(temp_r2_13) + (0x12))) = (u8) (-7 & (*(u8 *)((s8 *)(temp_r2_13) + (0x12))));
    var_r1_19 = (*(s32 *)((s8 *)(arg0) + (0x10)));
    if (var_r1_19 < 0) {
        var_r1_19 += 0xFF;
    }
    var_r2_25 = (*(s32 *)((s8 *)(arg0) + (0x14)));
    if (var_r2_25 < 0) {
        var_r2_25 += 0xFF;
    }
    var_r3_31 = (*(s32 *)((s8 *)(arg0) + (0x18)));
    if (var_r3_31 < 0) {
        var_r3_31 += 0xFF;
    }
    sub_80DF024(0x2AAF, var_r1_19 >> 8, var_r2_25 >> 8, var_r3_31 >> 8, arg0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_809F1EC;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A0900.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A0994.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A0AF4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A0B74.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A0BFC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A0D7C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
