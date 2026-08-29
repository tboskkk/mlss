#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80482E0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80482E0.s\"");
#else
s32 sub_8040020();                              /* extern */

void sub_80482E0(void *arg0) {
    u8 temp_r2_121;
    void *temp_r1_143;
    void *temp_r1_151;
    void *temp_r3_132;

    sub_8040020();
    (*(u8 *)((s8 *)(arg0) + (0x33D))) = (u8) ((-0x80 & (*(u8 *)((s8 *)(arg0) + (0x33D)))) | ((u32) ((*(u8 *)((s8 *)(arg0) + (0x33C))) << 0x19) >> 0x19));
    (*(u8 *)((s8 *)(arg0) + (0x351))) = (u8) ((-0x21 & (*(u8 *)((s8 *)(arg0) + (0x351)))) | (((u32) ((*(u8 *)((s8 *)(arg0) + (0x350))) << 0x19) >> 0x1F) << 5));
    (*(u8 *)((s8 *)(arg0) + (0x33D))) = (u8) ((0x7F & (*(u8 *)((s8 *)(arg0) + (0x33D)))) | (((u8) (*(u8 *)((s8 *)(arg0) + (0x33C))) >> 7) << 7));
    (*(u8 *)((s8 *)(arg0) + (0x33F))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x33E)));
    (*(u8 *)((s8 *)(arg0) + (0x341))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x340)));
    (*(u8 *)((s8 *)(arg0) + (0x343))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x342)));
    (*(u8 *)((s8 *)(arg0) + (0x350))) = (s16) ((0xFFFFF87F & (u16) (*(u8 *)((s8 *)(arg0) + (0x350)))) | ((u32) ((*(u8 *)((s8 *)(arg0) + (0x350))) << 0x1C) >> 0x15));
    (*(u8 *)((s8 *)(arg0) + (0x351))) = (u8) ((-0x19 & (*(u8 *)((s8 *)(arg0) + (0x351)))) | (((u32) ((*(u8 *)((s8 *)(arg0) + (0x350))) << 0x1A) >> 0x1E) * 8));
    (*(u8 *)((s8 *)(arg0) + (0x345))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x344)));
    (*(u8 *)((s8 *)(arg0) + (0x354))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x238)));
    (*(u16 *)((s8 *)(arg0) + (0x362))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x242)));
    (*(u16 *)((s8 *)(arg0) + (0x364))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x244)));
    temp_r2_121 = (*(u8 *)((s8 *)(arg0) + (0x353)));
    (*(u8 *)((s8 *)(arg0) + (0x353))) = (u8) ((0x7F & temp_r2_121) | (((u32) (temp_r2_121 << 0x19) >> 0x1F) << 7));
    temp_r3_132 = (*(void **)((s8 *)(arg0) + (0x368)));
    (*(u8 *)((s8 *)(temp_r3_132) + (0x17))) = (u8) ((-0x80 & (*(u8 *)((s8 *)(temp_r3_132) + (0x17)))) | (0x7F & ((u32) ((*(u8 *)((s8 *)(temp_r3_132) + (0x16))) << 0x19) >> 0x19)));
    temp_r1_143 = (*(void **)((s8 *)(arg0) + (0x368)));
    (*(u8 *)((s8 *)(temp_r1_143) + (0x17))) = (u8) ((0x7F & (*(u8 *)((s8 *)(temp_r1_143) + (0x17)))) | (((u8) (*(u8 *)((s8 *)(temp_r1_143) + (0x16))) >> 7) << 7));
    temp_r1_151 = (*(void **)((s8 *)(arg0) + (0x368)));
    (*(u8 *)((s8 *)(temp_r1_151) + (0x16))) = (u8) (-0x80 & (*(u8 *)((s8 *)(temp_r1_151) + (0x16))));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8048438.s\"");
#else
s32 sub_8040CF4(void *, s16, s16);              /* extern */

void sub_8048438(void *arg0, u16 arg1, u16 arg2) {
    s16 temp_r3_43;
    s32 var_r0_70;
    s32 var_r1_35;
    s32 var_r1_47;
    u16 temp_r2_11;
    u16 temp_r5_9;
    u8 temp_r6_32;
    void *temp_r3_107;
    void *temp_r3_151;

    temp_r5_9 = arg1;
    temp_r2_11 = arg2;
    if (0x40 & (*(u8 *)((s8 *)(arg0) + (0x352)))) {
        if (2 & (*(u8 *)((s8 *)(arg0) + (0x20F)))) {
            temp_r6_32 = 0x20 & (*(u8 *)((s8 *)(arg0) + (0x216)));
            if (temp_r6_32 == 0) {
                var_r1_35 = (*(s32 *)((s8 *)(arg0) + (0xC)));
                if (var_r1_35 < 0) {
                    var_r1_35 += 0xFF;
                }
                temp_r3_43 = (var_r1_35 >> 8) - (s16) temp_r5_9;
                (*(s16 *)((s8 *)(arg0) + (6))) = temp_r3_43;
                var_r1_47 = (*(s32 *)((s8 *)(arg0) + (0x10))) - (*(s32 *)((s8 *)(arg0) + (0x14)));
                if (var_r1_47 < 0) {
                    var_r1_47 += 0xFF;
                }
                (*(u16 *)((s8 *)(arg0) + (8))) = (u16) (((var_r1_47 >> 8) - (s16) temp_r2_11) - 3);
                (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0))) = (u16) (temp_r3_43 + (s8) (*(u8 *)((s8 *)(arg0) + (0x23A))));
                var_r0_70 = (*(s32 *)((s8 *)(arg0) + (0x18)));
                if (var_r0_70 < 0) {
                    var_r0_70 += 0xFF;
                }
                (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (2))) = (u16) (((*(u16 *)((s8 *)(arg0) + (8))) - (var_r0_70 >> 8)) + ((s8) (*(u8 *)((s8 *)(arg0) + (0x23B))) + 4));
                (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0xE))) = 0xFFFFU;
                (*(s16 *)((s8 *)(arg0) + (0xA))) = (s16) temp_r6_32;
            }
        }
    } else {
        sub_8040CF4(arg0, (s16) temp_r5_9, (s16) temp_r2_11);
    }
    temp_r3_107 = (*(void **)((s8 *)(arg0) + (0x36C)));
    if (!(0x20 & (*(u8 *)((s8 *)(temp_r3_107) + (0x12)))) && (1 & (*(u8 *)((s8 *)(arg0) + (0x353))))) {
        (*(s16 *)((s8 *)(temp_r3_107) + (0))) = (s16) ((s8) (*(u8 *)((s8 *)(arg0) + (0x372))) + (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0))));
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (2))) = (s16) ((s8) (*(u8 *)((s8 *)(arg0) + (0x373))) + (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (2))));
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (0xE))) = (s16) ((s8) (*(u8 *)((s8 *)(arg0) + (0x374))) + (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0xE))));
        temp_r3_151 = (*(void **)((s8 *)(arg0) + (0x36C)));
        (*(u8 *)((s8 *)(temp_r3_151) + (0x1F))) = (u8) ((-4 & (*(u8 *)((s8 *)(temp_r3_151) + (0x1F)))) | ((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x1F))) << 0x1E) >> 0x1E));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804857C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8048704.s\"");
#else
s32 sub_80409F4();                              /* extern */

void sub_8048704(void *arg0) {
    u8 temp_r1_30;
    u8 temp_r1_49;
    u8 temp_r1_70;
    u8 temp_r2_39;
    void *temp_r2_12;

    sub_80409F4();
    temp_r2_12 = (*(void **)((s8 *)(arg0) + (0x36C)));
    if (!(0x20 & (*(u8 *)((s8 *)(temp_r2_12) + (0x12))))) {
        temp_r1_30 = (-3 & (*(u8 *)((s8 *)(arg0) + (0x378)))) | (((u32) ((*(u8 *)((s8 *)(temp_r2_12) + (0x11))) << 0x19) >> 0x1F) * 2);
        (*(u8 *)((s8 *)(arg0) + (0x378))) = temp_r1_30;
        temp_r2_39 = (-0xD & temp_r1_30) | ((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (0x1F))) << 0x1E) >> 0x1C);
        (*(u8 *)((s8 *)(arg0) + (0x378))) = temp_r2_39;
        temp_r1_49 = (-0x31 & temp_r2_39) | (((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (0x1F))) << 0x1C) >> 0x1E) * 0x10);
        (*(u8 *)((s8 *)(arg0) + (0x378))) = temp_r1_49;
        (*(u8 *)((s8 *)(arg0) + (0x378))) = (u8) ((temp_r1_49 & 0x3F) | (((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (0x12))) << 0x1D) >> 0x1E) << 6));
        temp_r1_70 = (-2 & (*(u8 *)((s8 *)(arg0) + (0x379)))) | ((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (0x12))) << 0x1C) >> 0x1F);
        (*(u8 *)((s8 *)(arg0) + (0x379))) = temp_r1_70;
        (*(u8 *)((s8 *)(arg0) + (0x379))) = (u8) ((temp_r1_70 & ~2) | (((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (0x12))) << 0x1B) >> 0x1F) * 2));
        (*(u8 *)((s8 *)(arg0) + (0x37B))) = (u8) (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (0x21)));
        (*(u8 *)((s8 *)(arg0) + (0x37C))) = (u8) (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (0x23)));
        (*(u16 *)((s8 *)(arg0) + (0x37E))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (0x2A)));
        (*(u16 *)((s8 *)(arg0) + (0x380))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (0x2C)));
        (*(u16 *)((s8 *)(arg0) + (0x382))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (4)));
        (*(u16 *)((s8 *)(arg0) + (0x384))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (6)));
        (*(u8 *)((s8 *)(arg0) + (0x378))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x378))) | 1);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80487F0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8049000.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80490CC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8049224.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80492DC.s\"");
#else
s32 sub_8049000(void *, s32);                   /* extern */

void sub_80492DC(void *arg0) {
    s32 var_r1_50;
    u8 temp_r2_9;

    temp_r2_9 = (*(u8 *)((s8 *)(arg0) + (0x54)));
    if (((temp_r2_9 == 0) && ((*(u16 *)((s8 *)(arg0) + (0x218))) == 0x103E)) || ((temp_r2_9 == 1) && ((*(u16 *)((s8 *)(arg0) + (0x218))) == 0x1053))) {
        (*(u8 *)((s8 *)(arg0) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg0) + (0x214)))) | 3);
        if ((*(u8 *)((s8 *)(arg0) + (0x54))) == 0) {
            var_r1_50 = 0x1001;
            if (8 & (*(u8 *)((s8 *)(arg0) + (0x35B)))) {
                var_r1_50 = 0x1028;
            }
        } else {
            var_r1_50 = 0x1002;
        }
        sub_8049000(arg0, var_r1_50);
    }
    (*(u8 *)((s8 *)(arg0) + (0x35A))) = (u8) (-5 & (*(u8 *)((s8 *)(arg0) + (0x35A))));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8049370.s\"");
#else
s32 sub_8049000(void *, s32);                   /* extern */

void sub_8049370(void *arg0, u8 arg1) {
    s32 var_r1_30;
    void *temp_r2_46;

    (*(u8 *)((s8 *)(arg0) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg0) + (0x214)))) | 4);
    if ((*(u8 *)((s8 *)(arg0) + (0x54))) == 0) {
        var_r1_30 = 0x1025;
        if (8 & (*(u8 *)((s8 *)(arg0) + (0x35B)))) {
            var_r1_30 = 0x1029;
        }
    } else {
        var_r1_30 = 0x103F;
    }
    sub_8049000(arg0, var_r1_30);
    temp_r2_46 = (*(void **)((s8 *)(arg0) + (0x294)));
    (*(u8 *)((s8 *)(temp_r2_46) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_46) + (0x12)))) | 2);
    if (arg1 == 0) {
        play_sfx_80195B4(0x3C, -1);
    } else {
        play_sfx_80195B4(0x3C, -1);
    }
    (*(s16 *)((s8 *)(arg0) + (4))) = 5;
    (*(u8 *)((s8 *)(arg0) + (0x212))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x212))) | 0x40);
    (*(u8 *)((s8 *)(arg0) + (0x359))) = (u8) (-0x11 & (*(u8 *)((s8 *)(arg0) + (0x359))));
    (*(u8 *)((s8 *)(arg0) + (0x353))) = (u8) (-5 & (*(u8 *)((s8 *)(arg0) + (0x353))));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8049430.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80494D4.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8020D40(s32);                           /* extern */
s32 sub_8049000(void *, s32);                   /* extern */

void sub_80494D4(void *arg0) {
    s32 var_r1_33;
    s32 var_r1_49;
    s32 var_r1_58;

    (*(u8 *)((s8 *)(arg0) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg0) + (0x214)))) | 3);
    sub_8020D40((*(s32 *)((s8 *)(arg0) + (0x36C))));
    if ((*(u8 *)((s8 *)(arg0) + (0x54))) == 0) {
        var_r1_33 = 0x1001;
        if (8 & (*(u8 *)((s8 *)(arg0) + (0x35B)))) {
            var_r1_33 = 0x1028;
        }
    } else {
        var_r1_33 = 0x1002;
    }
    sub_8049000(arg0, var_r1_33);
    var_r1_49 = 0x87;
    if ((*(u8 *)((s8 *)(arg0) + (0x54))) == 0) {
        var_r1_49 = 0x157;
    }
    stop_sfx_80195A8(var_r1_49);
    var_r1_58 = 0x156;
    if ((*(u8 *)((s8 *)(arg0) + (0x54))) == 0) {
        var_r1_58 = 0x158;
    }
    stop_sfx_80195A8(var_r1_58);
    (*(s16 *)((s8 *)(arg0) + (4))) = 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804955C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80496B4.s\"");
#else
s32 sub_8021ED8(void *);                        /* extern */

void sub_80496B4(void *arg0) {
    void *temp_r2_102;
    void *temp_r3_61;
    void *temp_r3_67;
    void *temp_r3_79;

    (*(s16 *)((s8 *)(arg0) + (0x370))) = 0x1045;
    sub_80210A8((*(void **)((s8 *)(arg0) + (0x36C))), 0, 0x1045, 1, -1, -1, -1, -1);
    sub_801E150((*(void **)((s8 *)(arg0) + (0x36C))), 1, -1, 0, 0);
    sub_8021ED8((*(void **)((s8 *)(arg0) + (0x36C))));
    (*(u8 *)((s8 *)(arg0) + (0x353))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x353))) | 1);
    (*(s8 *)((s8 *)(arg0) + (0x372))) = 0;
    (*(s8 *)((s8 *)(arg0) + (0x373))) = 0;
    (*(s8 *)((s8 *)(arg0) + (0x374))) = 0xFC;
    temp_r3_61 = (*(void **)((s8 *)(arg0) + (0x36C)));
    (*(u8 *)((s8 *)(temp_r3_61) + (0x11))) = (u8) (-0x41 & (*(u8 *)((s8 *)(temp_r3_61) + (0x11))));
    temp_r3_67 = (*(void **)((s8 *)(arg0) + (0x36C)));
    (*(u8 *)((s8 *)(temp_r3_67) + (0x1F))) = (u8) ((0xFC & (*(u8 *)((s8 *)(temp_r3_67) + (0x1F)))) | ((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x1F))) << 0x1E) >> 0x1E));
    temp_r3_79 = (*(void **)((s8 *)(arg0) + (0x36C)));
    (*(u8 *)((s8 *)(temp_r3_79) + (0x1F))) = (u8) ((-0xD & (*(u8 *)((s8 *)(temp_r3_79) + (0x1F)))) | (0xC & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x1F)))));
    (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (0))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0)));
    (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (2))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (2)));
    (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (0xE))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0xE)));
    temp_r2_102 = (*(void **)((s8 *)(arg0) + (0x36C)));
    (*(u8 *)((s8 *)(temp_r2_102) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_102) + (0x12)))) | 4);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80497A8.s\"");
#else
s32 sub_8021ED8(void *);                        /* extern */

void sub_80497A8(void *arg0) {
    void *temp_r2_115;
    void *temp_r3_63;
    void *temp_r3_69;
    void *temp_r3_81;

    (*(s16 *)((s8 *)(arg0) + (0x370))) = 0x1054;
    sub_80210A8((*(void **)((s8 *)(arg0) + (0x36C))), 0, 0x1054, 1, -1, -1, -1, -1);
    sub_801E150((*(void **)((s8 *)(arg0) + (0x36C))), 0, -1, 0, 0);
    sub_8021ED8((*(void **)((s8 *)(arg0) + (0x36C))));
    (*(u8 *)((s8 *)(arg0) + (0x353))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x353))) | 1);
    (*(s8 *)((s8 *)(arg0) + (0x372))) = 0;
    (*(s8 *)((s8 *)(arg0) + (0x373))) = 0xF0;
    (*(s8 *)((s8 *)(arg0) + (0x374))) = 0xFC;
    temp_r3_63 = (*(void **)((s8 *)(arg0) + (0x36C)));
    (*(u8 *)((s8 *)(temp_r3_63) + (0x11))) = (u8) (-0x41 & (*(u8 *)((s8 *)(temp_r3_63) + (0x11))));
    temp_r3_69 = (*(void **)((s8 *)(arg0) + (0x36C)));
    (*(u8 *)((s8 *)(temp_r3_69) + (0x1F))) = (u8) ((0xFC & (*(u8 *)((s8 *)(temp_r3_69) + (0x1F)))) | ((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x1F))) << 0x1E) >> 0x1E));
    temp_r3_81 = (*(void **)((s8 *)(arg0) + (0x36C)));
    (*(u8 *)((s8 *)(temp_r3_81) + (0x1F))) = (u8) ((-0xD & (*(u8 *)((s8 *)(temp_r3_81) + (0x1F)))) | (0xC & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x1F)))));
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (0))) = (s16) (M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */) + (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0))));
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (2))) = (s16) (M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */) + (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (2))));
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (0xE))) = (s16) (M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */) + (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0xE))));
    temp_r2_115 = (*(void **)((s8 *)(arg0) + (0x36C)));
    (*(u8 *)((s8 *)(temp_r2_115) + (0x12))) = (u8) (-7 & (*(u8 *)((s8 *)(temp_r2_115) + (0x12))));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80498B0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80499B8.s\"");
#else
s32 sub_8021ED8(void *);                        /* extern */

void sub_80499B8(void *arg0) {
    void *temp_r2_106;
    void *temp_r2_63;
    void *temp_r3_69;
    void *temp_r3_83;

    (*(s16 *)((s8 *)(arg0) + (0x370))) = 0x800B;
    sub_80210A8((*(void **)((s8 *)(arg0) + (0x36C))), 2, 0x800B, 1, -1, -1, -1, -1);
    sub_801E150((*(void **)((s8 *)(arg0) + (0x36C))), 2, -1, 0, 0);
    sub_8021ED8((*(void **)((s8 *)(arg0) + (0x36C))));
    (*(u8 *)((s8 *)(arg0) + (0x353))) = (u8) (-2 & (*(u8 *)((s8 *)(arg0) + (0x353))));
    (*(s8 *)((s8 *)(arg0) + (0x372))) = 0;
    (*(s8 *)((s8 *)(arg0) + (0x373))) = 0;
    (*(s8 *)((s8 *)(arg0) + (0x374))) = 0;
    temp_r2_63 = (*(void **)((s8 *)(arg0) + (0x36C)));
    (*(u8 *)((s8 *)(temp_r2_63) + (0x11))) = (u8) (-0x41 & (*(u8 *)((s8 *)(temp_r2_63) + (0x11))));
    temp_r3_69 = (*(void **)((s8 *)(arg0) + (0x36C)));
    (*(u8 *)((s8 *)(temp_r3_69) + (0x1F))) = (u8) ((-4 & (*(u8 *)((s8 *)(temp_r3_69) + (0x1F)))) | ((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x1F))) << 0x1E) >> 0x1E));
    temp_r3_83 = (*(void **)((s8 *)(arg0) + (0x36C)));
    (*(u8 *)((s8 *)(temp_r3_83) + (0x1F))) = (u8) ((-0xD & (*(u8 *)((s8 *)(temp_r3_83) + (0x1F)))) | (0xC & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x1F)))));
    (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (0))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0)));
    (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (2))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (2)));
    (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (0xE))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0xE)));
    temp_r2_106 = (*(void **)((s8 *)(arg0) + (0x36C)));
    (*(u8 *)((s8 *)(temp_r2_106) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_106) + (0x12)))) | 4);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8049AB4.s\"");
#else
s32 sub_8021ED8(void *);                        /* extern */
s32 sub_80409F4(void *);                        /* extern */
s32 sub_8049000(void *, s32);                   /* extern */

void sub_8049AB4(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 var_r1_124;
    void *temp_r2_52;
    void *temp_r4_58;
    void *temp_r4_72;

    switch (arg1) {                                 /* irregular */
    case 0:
        (*(s16 *)((s8 *)(arg0) + (0x370))) = 0x800B;
        sub_80210A8((*(void **)((s8 *)(arg0) + (0x36C))), 2, 0x800B, 1, -1, -1, -1, -1);
        sub_801E150((*(void **)((s8 *)(arg0) + (0x36C))), arg2, -1, 0, arg1);
        sub_8021ED8((*(void **)((s8 *)(arg0) + (0x36C))));
        (*(u8 *)((s8 *)(arg0) + (0x353))) = (u8) (-2 & (*(u8 *)((s8 *)(arg0) + (0x353))));
        temp_r2_52 = (*(void **)((s8 *)(arg0) + (0x36C)));
        (*(u8 *)((s8 *)(temp_r2_52) + (0x11))) = (u8) (-0x41 & (*(u8 *)((s8 *)(temp_r2_52) + (0x11))));
        temp_r4_58 = (*(void **)((s8 *)(arg0) + (0x36C)));
        (*(u8 *)((s8 *)(temp_r4_58) + (0x1F))) = (u8) ((-4 & (*(u8 *)((s8 *)(temp_r4_58) + (0x1F)))) | ((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x1F))) << 0x1E) >> 0x1E));
        temp_r4_72 = (*(void **)((s8 *)(arg0) + (0x36C)));
        (*(u8 *)((s8 *)(temp_r4_72) + (0x1F))) = (u8) ((-0xD & (*(u8 *)((s8 *)(temp_r4_72) + (0x1F)))) | (0xC & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x1F)))));
        (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x36C)))) + (0xE))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0xE)));
        return;
    case 1:
        sub_80409F4(arg0);
        (*(u16 *)((s8 *)(arg0) + (0x356))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x218)));
        (*(u8 *)((s8 *)(arg0) + (0x358))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg0) + (0x358)))) | ((u32) ((*(u8 *)((s8 *)(arg0) + (0x24))) << 0x1D) >> 0x1D));
        if ((*(u8 *)((s8 *)(arg0) + (0x54))) == 0) {
            var_r1_124 = 0x1032;
            if (8 & (*(u8 *)((s8 *)(arg0) + (0x35B)))) {
                var_r1_124 = 0x103D;
            }
        } else {
            var_r1_124 = 0x104B;
        }
        sub_8049000(arg0, var_r1_124);
        return;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8049BD8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
