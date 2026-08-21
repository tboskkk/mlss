#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8070DCC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070DCC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070E4C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070EC0.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_806EB18;

void sub_8070EC0(void *arg0) {
    sub_8082E1C(arg0, 5, 0, 0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806EB18;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070EDC.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_8070EDC(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070F04.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070F64.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_806FBD0;

void sub_8070F64(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0x1D, 0, 0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 5;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806FBD0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070F98.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_806F90C;

void sub_8070F98(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0x11C);
        sub_8082E1C(arg0, 0x16, 0, 0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 4;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806F90C;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070FD0.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80871A8();                                  /* extern */
extern s32 sub_80711A4;

s32 sub_8070FD0(void *arg0) {
    s32 temp_r0_8;

    temp_r0_8 = sub_80871A8();
    if (temp_r0_8 == 0) {
        stop_sfx_80195A8(0xA7);
        sub_8082E1C(arg0, 4, 0x40E7, 0);
        (*(s32 *)((s8 *)(arg0) + (0x80))) = temp_r0_8;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80711A4;
        play_sfx_80195B4(0x55, -1);
        return 0;
    }
    return temp_r0_8;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8071018.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8071054.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_807B7A8(s32);                           /* extern */
s32 sub_807F47C(void *);                        /* extern */
s32 sub_807FE40(s32);                           /* extern */

void sub_8071054(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0xA7);
        sub_807F47C(arg0);
        sub_807B7A8((*(s32 *)((s8 *)(arg0) + (0x28))));
        sub_807FE40((*(s32 *)((s8 *)(arg0) + (0x28))));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8071080.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_806F84C;

void sub_8071080(void *arg0) {
    s32 var_r1_9;
    s32 var_r2_15;
    s32 var_r3_21;

    var_r1_9 = (*(s32 *)((s8 *)(arg0) + (0x38)));
    if (var_r1_9 < 0) {
        var_r1_9 += 0xFF;
    }
    var_r2_15 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
    if (var_r2_15 < 0) {
        var_r2_15 += 0xFF;
    }
    var_r3_21 = (*(s32 *)((s8 *)(arg0) + (0x40)));
    if (var_r3_21 < 0) {
        var_r3_21 += 0xFF;
    }
    sub_80DF024(0x209E, var_r1_9 >> 8, var_r2_15 >> 8, var_r3_21 >> 8, arg0);
    sub_8082E1C(arg0, 2, 0x40E7, 0);
    (*(s32 *)((s8 *)(arg0) + (0x9C))) = 0x300;
    (*(s32 *)((s8 *)((arg0 + 0x9C)) + (4))) = 0x33;
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806F84C;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80710E0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8071110.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807116C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80711A4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8071204.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8071244.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807127C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80712B0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80712D8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8071390.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8071424.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807148C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8071620.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80716C4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807175C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80717F0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8071858.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8071900.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807197C.s\"");
#else
void *sub_807BF34(s32, s32, s32, s32, s32, u32, s32); /* extern */
s32 sub_807FB64(s32);                           /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_8072390;

void sub_807197C(void *arg0) {
    s32 var_r0_33;
    s32 var_r1_83;
    s32 var_r2_21;
    s32 var_r2_89;
    s32 var_r3_27;
    s32 var_r3_95;
    void *temp_r0_49;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_807FB64((*(s32 *)((s8 *)((*(void **)((s8 *)(*(void **)0x03000FD8) + (0x58)))) + (0x10))));
        var_r2_21 = (*(s32 *)((s8 *)(arg0) + (0x38)));
        if (var_r2_21 < 0) {
            var_r2_21 += 0xFF;
        }
        var_r3_27 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
        if (var_r3_27 < 0) {
            var_r3_27 += 0xFF;
        }
        var_r0_33 = (*(s32 *)((s8 *)(arg0) + (0x40)));
        if (var_r0_33 < 0) {
            var_r0_33 += 0xFF;
        }
        temp_r0_49 = sub_807BF34((*(s32 *)((s8 *)(arg0) + (0x28))), 0x40B8, var_r2_21 >> 8, var_r3_27 >> 8, var_r0_33 >> 8, (u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x11))) << 0x19) >> 0x1F, 1);
        (*(void **)((s8 *)(arg0) + (0x30))) = temp_r0_49;
        (*(u8 *)((s8 *)(temp_r0_49) + (0x74))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x74)));
        (*(s8 *)((s8 *)(temp_r0_49) + (0x75))) = (s8) ((*(u8 *)((s8 *)(arg0) + (0x75))) - 1);
        (*(u8 *)((s8 *)(temp_r0_49) + (0x79))) = (u8) ((*(u8 *)((s8 *)(temp_r0_49) + (0x79))) | 8);
        (*(s32 *)((s8 *)(temp_r0_49) + (0x4C))) = 0;
        sub_8082E1C(arg0, 2, 0x40B7, 0);
        sub_8082E1C((*(void **)((s8 *)(arg0) + (0x30))), 2, 0, 0);
        var_r1_83 = (*(s32 *)((s8 *)(arg0) + (0x38)));
        if (var_r1_83 < 0) {
            var_r1_83 += 0xFF;
        }
        var_r2_89 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
        if (var_r2_89 < 0) {
            var_r2_89 += 0xFF;
        }
        var_r3_95 = (*(s32 *)((s8 *)(arg0) + (0x40)));
        if (var_r3_95 < 0) {
            var_r3_95 += 0xFF;
        }
        sub_80DF024(0x21F2, var_r1_83 >> 8, var_r2_89 >> 8, var_r3_95 >> 8, arg0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8072390;
        (*(s16 *)((s8 *)(arg0) + (0xAE))) = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8071A64.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8071B14.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8071BD4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8071EA8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80720A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
