#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806E884 needs.

asm_unified(".include \"asm/macros.inc\"");



extern s32 sub_806EADC;

int sub_8082E1C();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E884.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E8E8.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_806E414;

void sub_806E8E8(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 5, 0, 0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0xA;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806E414;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E91C.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_806DBD4;

void sub_806E91C(void *arg0) {
    s32 var_r1_29;
    s32 var_r2_35;
    s32 var_r3_41;

    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8082E1C(arg0, 0xD, 0, 0);
        sub_8082E1C((*(void **)((s8 *)(arg0) + (0x30))), 0xD, 0, 0);
        stop_sfx_80195A8(0x6C);
        play_sfx_80195B4(0x8C, -1);
        var_r1_29 = (*(s32 *)((s8 *)(arg0) + (0x38)));
        if (var_r1_29 < 0) {
            var_r1_29 += 0xFF;
        }
        var_r2_35 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
        if (var_r2_35 < 0) {
            var_r2_35 += 0xFF;
        }
        var_r3_41 = (*(s32 *)((s8 *)(arg0) + (0x40)));
        if (var_r3_41 < 0) {
            var_r3_41 += 0xFF;
        }
        sub_80DF024(0x1FA6, var_r1_29 >> 8, var_r2_35 >> 8, var_r3_41 >> 8, arg0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806DBD4;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E98C.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_806D6A8;

void sub_806E98C(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 6, 0, 0);
        sub_8082E1C((*(void **)((s8 *)(arg0) + (0x30))), 6, 0, 0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 4;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806D6A8;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E9CC.s\"");
#else
void *sub_807C0D0(void *, s32, s32);                /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_806E9CC(void *arg0) {
    void *temp_r0_10;

    temp_r0_10 = sub_807C0D0(arg0, 0x4115, 0);
    (*(u8 *)((s8 *)(temp_r0_10) + (0x79))) = (u8) ((*(u8 *)((s8 *)(temp_r0_10) + (0x79))) | 1 | 8);
    (*(s8 *)((s8 *)(temp_r0_10) + (0x75))) = (s8) ((*(u8 *)((s8 *)(arg0) + (0x75))) + 1);
    sub_8082E1C(arg0, 0, 0, 0);
    (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806EA10.s\"");
#else
void *sub_807C0D0(void *, s32, s32);                /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_806EA10(void *arg0) {
    void *temp_r0_10;

    temp_r0_10 = sub_807C0D0(arg0, 0x4113, 0);
    (*(u8 *)((s8 *)(temp_r0_10) + (0x79))) = (u8) ((*(u8 *)((s8 *)(temp_r0_10) + (0x79))) | 1 | 8);
    (*(s8 *)((s8 *)(temp_r0_10) + (0x75))) = (s8) ((*(u8 *)((s8 *)(arg0) + (0x75))) + 1);
    sub_8082E1C(arg0, 0, 0, 0);
    (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806EA54.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_806EAA8(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0x0A, 0, 0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x3C;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806EADC;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806EADC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806EB18.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806ECA4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806EDBC.s\"");
#else
s32 sub_807CFB8(s32, s32, s32, s32, s32);       /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8083E78(void *);                            /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
s16 sub_8117C50(s32, s32, s32);             /* extern */
extern s32 sub_8070A50;

void sub_806EDBC(void *arg0) {
    s16 temp_r6_162;
    s32 temp_r0_25;
    s32 temp_r3_136;
    s32 temp_r3_165;
    s32 var_r0_120;
    s32 var_r0_130;
    s32 var_r0_137;
    s32 var_r1_171;
    s32 var_r1_29;
    s32 var_r1_78;
    s32 var_r2_177;
    s32 var_r2_35;
    s32 var_r2_84;
    s32 var_r3_142;
    s32 var_r3_41;
    s32 var_r3_90;
    u16 temp_r0_64;
    void *temp_r2_9;

    temp_r2_9 = (*(void **)((s8 *)(arg0) + (0x2C)));
    if (!(0x20 & (*(u8 *)((s8 *)((*(void **)((s8 *)(temp_r2_9) + (8)))) + (0x12))))) {
        (*(s32 *)((s8 *)(temp_r2_9) + (0x10))) = (s32) ((*(s32 *)((s8 *)(temp_r2_9) + (0x10))) + 0x100);
    }
    temp_r0_25 = (*(s32 *)((s8 *)(arg0) + (0x9C))) - 1;
    (*(s32 *)((s8 *)(arg0) + (0x9C))) = temp_r0_25;
    if (temp_r0_25 <= 0) {
        var_r1_29 = (*(s32 *)((s8 *)(arg0) + (0x38)));
        if (var_r1_29 < 0) {
            var_r1_29 += 0xFF;
        }
        var_r2_35 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
        if (var_r2_35 < 0) {
            var_r2_35 += 0xFF;
        }
        var_r3_41 = (*(s32 *)((s8 *)(arg0) + (0x40)));
        if (var_r3_41 < 0) {
            var_r3_41 += 0xFF;
        }
        sub_80DF024(0x202E, var_r1_29 >> 8, var_r2_35 >> 8, var_r3_41 >> 8, arg0);
        (*(s32 *)((s8 *)(arg0) + (0x9C))) = 0xA;
    }
    if (!(8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12))))) {
        return;
    }
    temp_r0_64 = (*(u16 *)((s8 *)(arg0) + (0xAC))) - 1;
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_64;
    if ((s32) (temp_r0_64 << 0x10) <= 0) {
        play_sfx_80195B4(0xD5, -1);
        sub_8082E1C(arg0, 4, 0, 0);
        var_r1_78 = (*(s32 *)((s8 *)(arg0) + (0x38)));
        if (var_r1_78 < 0) {
            var_r1_78 += 0xFF;
        }
        var_r2_84 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
        if (var_r2_84 < 0) {
            var_r2_84 += 0xFF;
        }
        var_r3_90 = (*(s32 *)((s8 *)(arg0) + (0x40)));
        if (var_r3_90 < 0) {
            var_r3_90 += 0xFF;
        }
        sub_80DF024(0x2059, var_r1_78 >> 8, var_r2_84 >> 8, var_r3_90 >> 8, arg0);
        var_r0_120 = (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x6C)))) + (0xC))) * 0x66 * (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x10A)));
        if (var_r0_120 < 0) {
            var_r0_120 += 0xFF;
        }
        var_r0_130 = M2C_ERROR(/* unknown instruction: ldsh $r5, ($mem_loc_fictive_) */) * 0x33 * (*(u16 *)((s8 *)((*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x28)))) + (0x10C)));
        if (var_r0_130 < 0) {
            var_r0_130 += 0xFF;
        }
        temp_r3_136 = (var_r0_120 >> 8) - (var_r0_130 >> 8);
        var_r0_137 = temp_r3_136;
        if (temp_r3_136 < 0) {
            var_r0_137 += 0xFF;
        }
        var_r3_142 = var_r0_137 >> 8;
        if (var_r3_142 <= 0) {
            var_r3_142 = 1;
        }
        temp_r6_162 = sub_8117C50(M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */), (s32) (var_r3_142 * 0x3C) / 100);
        temp_r3_165 = sub_8083E78((*(void **)((s8 *)(arg0) + (0x28))));
        var_r1_171 = (*(s32 *)((s8 *)(arg0) + (0x38)));
        if (var_r1_171 < 0) {
            var_r1_171 += 0xFF;
        }
        var_r2_177 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
        if (var_r2_177 < 0) {
            var_r2_177 += 0xFF;
        }
        sub_807CFB8(temp_r6_162 - M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), var_r1_171 >> 8, var_r2_177 >> 8, temp_r3_165, 1);
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xF6))) = temp_r6_162;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8070A50;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806EF38.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806F034.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806F2D8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806F3F4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806F47C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806F508.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806F5F0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
