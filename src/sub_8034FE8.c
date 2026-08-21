#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8034FE8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8034FE8.s\"");
#else
s32 sub_80400B0(void *, s32, s32, s32);     /* extern */
s32 sub_8045A94(void *, s32, s32, s32, s32); /* extern */

void sub_8034FE8(void *arg0) {
    s32 var_r0_45;
    void *temp_r1_66;

    sub_80400B0((*(void **)((s8 *)(arg0) + (0x204))), 4, 0xEE >> ((u32) ((*(u8 *)((s8 *)(arg0) + (0xFB))) << 0x1D) >> 0x1F), M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */));
    M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (4 & (*(u8 *)((s8 *)(arg0) + (0xFB)))) {
        var_r0_45 = 0x10;
    } else {
        var_r0_45 = 0xA;
    }
    sub_8045A94((*(void **)((s8 *)(arg0) + (0x204))), 2, 1, M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */), var_r0_45);
    (*(s8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x23B))) = 0;
    temp_r1_66 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r1_66) + (0x20F))) = (u8) ((*(u8 *)((s8 *)(temp_r1_66) + (0x20F))) | 4);
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (4))) = 0x56;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (4))) = 0x56;
    (*(s32 *)((s8 *)(arg0) + (0x208))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x208))) & 0xFFFE7FFF);
    (*(u8 *)((s8 *)(arg0) + (0x20B))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20B))) | 0x80);
    play_sfx_80195B4(0x2B, -1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80350B4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8035974.s\"");
#else
s32 sub_8020D40(void *);                        /* extern */
s32 sub_802C4D4(void *, s32, s32);              /* extern */
s32 sub_802DDB4(void *, void *, s32, s32);      /* extern */
s32 sub_80400B0(void *, s32, s32, s32);     /* extern */
s32 sub_8049000(void *, s32);                   /* extern */
s32 sub_804FC90(void *);                        /* extern */

void sub_8035974(void *arg0) {
    s16 *var_r0_84;
    s16 var_r1_77;
    u8 *var_r8_78;
    u8 temp_r2_191;
    void *temp_r1_14;
    void *temp_r2_222;
    void *temp_r2_60;
    void *var_r6_24;
    void *var_r7_20;

    temp_r1_14 = (*(void **)((s8 *)(arg0) + (0x200)));
    if ((*(u8 *)((s8 *)(temp_r1_14) + (0x54))) == 0) {
        var_r7_20 = temp_r1_14;
        var_r6_24 = (*(void **)((s8 *)(arg0) + (0x204)));
        sub_802C4D4(arg0, 1, 1);
        sub_804FC90((*(void **)((s8 *)(arg0) + (0x200))));
        sub_802DDB4(arg0, (*(void **)((s8 *)(arg0) + (0x200))), 0, 0);
    } else {
        var_r7_20 = (*(void **)((s8 *)(arg0) + (0x204)));
        var_r6_24 = temp_r1_14;
    }
    if ((0x1C & (*(u8 *)((s8 *)(arg0) + (0x246)))) == 8) {
        (*(s16 *)((s8 *)(var_r7_20) + (4))) = 0x5C;
        (*(s16 *)((s8 *)(var_r6_24) + (4))) = 0x5C;
        temp_r2_60 = (*(void **)((s8 *)(var_r7_20) + (0x36C)));
        if (!(0x20 & (*(u8 *)((s8 *)(temp_r2_60) + (0x12)))) && ((*(u16 *)((s8 *)(temp_r2_60) + (0x16))) == 0x54)) {
            sub_8020D40(temp_r2_60);
        }
        var_r1_77 = 0x14;
        var_r8_78 = arg0 + 0xFB;
        if (!(4 & (*(u8 *)((s8 *)(arg0) + (0xFB))))) {
            var_r1_77 = 0x1E;
        }
        var_r0_84 = arg0 + 0x272;
    } else {
        (*(s16 *)((s8 *)(var_r7_20) + (4))) = 0x59;
        (*(s16 *)((s8 *)(var_r6_24) + (4))) = 0x59;
        var_r1_77 = 0x14;
        var_r8_78 = arg0 + 0xFB;
        if (!(4 & (*(u8 *)((s8 *)(arg0) + (0xFB))))) {
            var_r1_77 = 0xA;
        }
        var_r0_84 = arg0 + 0x272;
    }
    *var_r0_84 = var_r1_77;
    *(*(s8 **)((s8 *)(var_r7_20) + (0x368))) = 0xB;
    *(*(s8 **)((s8 *)(var_r6_24) + (0x368))) = 0xB;
    (*(u8 *)((s8 *)(var_r7_20) + (0x351))) = (u8) ((*(u8 *)((s8 *)(var_r7_20) + (0x351))) | 0x40);
    (*(u8 *)((s8 *)(var_r6_24) + (0x351))) = (u8) ((*(u8 *)((s8 *)(var_r6_24) + (0x351))) | 0x40);
    (*(u8 *)((s8 *)(var_r7_20) + (0x358))) = (u8) ((*(u8 *)((s8 *)(var_r7_20) + (0x358))) | 8);
    (*(u8 *)((s8 *)(var_r6_24) + (0x358))) = (u8) ((*(u8 *)((s8 *)(var_r6_24) + (0x358))) | 8);
    (*(u8 *)((s8 *)(var_r6_24) + (0x20D))) = (u8) ((*(u8 *)((s8 *)(var_r6_24) + (0x20D))) | 0x20);
    (*(u8 *)((s8 *)(var_r6_24) + (0x35A))) = (u8) ((*(u8 *)((s8 *)(var_r6_24) + (0x35A))) | 2);
    (*(u8 *)((s8 *)(var_r6_24) + (0x212))) = (u8) ((*(u8 *)((s8 *)(var_r6_24) + (0x212))) | 0x40);
    (*(u8 *)((s8 *)(arg0) + (0x208))) = (u8) (-2 & (*(u8 *)((s8 *)(arg0) + (0x208))));
    (*(u8 *)((s8 *)(arg0) + (0x20B))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20B))) | 0x80);
    (*(u8 *)((s8 *)(var_r6_24) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(var_r6_24) + (0x214)))) | 1);
    if ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x54))) == 1) {
        temp_r2_191 = (*(u8 *)((s8 *)(var_r6_24) + (0x24)));
        (*(u8 *)((s8 *)(var_r6_24) + (0x24))) = (u8) ((-8 & temp_r2_191) | ((((u32) (temp_r2_191 << 0x1D) >> 0x1D) + 4) & 7));
    }
    sub_8049000(var_r6_24, 0x103F);
    sub_80400B0(var_r6_24, 0x10, 0xEE >> ((u32) (*var_r8_78 << 0x1D) >> 0x1F), M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */));
    temp_r2_222 = (*(void **)((s8 *)(var_r6_24) + (0x294)));
    (*(u8 *)((s8 *)(temp_r2_222) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_222) + (0x12)))) | 2);
    (*(s8 *)((s8 *)((*(void **)((s8 *)(var_r6_24) + (0x294)))) + (0x20))) = (s8) (((u8) *var_r8_78 >> 3) << ((u32) ((*(u8 *)((s8 *)(arg0) + (0x20A))) << 0x1E) >> 0x1F));
    (*(u8 *)((s8 *)(arg0) + (0x246))) = (u8) ((-0x1D & (*(u8 *)((s8 *)(arg0) + (0x246)))) | 8);
    play_sfx_80195B4(0x3C, -1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8035B98.s\"");
#else
s32 sub_802C4D4(void *, s32, s32);              /* extern */
s32 sub_802DDB4(void *, void *, s32, s32);      /* extern */
s32 sub_80400B0(void *, s32, s32, s32);     /* extern */
s32 sub_8045A94(void *, s32, s32, s32, s32);    /* extern */
s32 sub_804FC90(void *);                        /* extern */

void sub_8035B98(void *arg0) {
    s32 temp_r2_149;
    s32 temp_r2_81;
    s32 temp_r2_92;
    s32 temp_r3_145;
    s32 temp_r3_89;
    s32 temp_r5_78;
    s32 var_r0_182;
    s32 var_r0_239;
    s32 var_r0_37;
    s32 var_r12_141;
    s32 var_r1_48;
    s32 var_r2_189;
    s32 var_r3_218;
    s32 var_r5_201;
    void *temp_r0_171;
    void *temp_r0_217;
    void *temp_r1_117;
    void *temp_r1_129;
    void *temp_r1_57;
    void *temp_r1_62;
    void *temp_r1_66;
    void *temp_r1_69;
    void *temp_r2_116;
    void *temp_r2_128;
    void *temp_r3_77;
    void *temp_r4_178;
    void *temp_r5_142;
    void *temp_r6_146;
    void *temp_r6_72;

    sub_802C4D4(arg0, 1, 1);
    sub_804FC90((*(void **)((s8 *)(arg0) + (0x200))));
    sub_802DDB4(arg0, (*(void **)((s8 *)(arg0) + (0x200))), 0, 0);
    (*(u8 *)((s8 *)(arg0) + (0x246))) = (u8) (-3 & (*(u8 *)((s8 *)(arg0) + (0x246))));
    var_r0_37 = (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0xC)));
    if (var_r0_37 < 0) {
        var_r0_37 += 0xFF;
    }
    (*(s16 *)((s8 *)(arg0) + (0x248))) = (s16) (var_r0_37 >> 8);
    var_r1_48 = (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x10)));
    if (var_r1_48 < 0) {
        var_r1_48 += 0xFF;
    }
    (*(s16 *)((s8 *)(arg0) + (0x24A))) = (s16) (var_r1_48 >> 8);
    temp_r1_57 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(s32 *)((s8 *)(temp_r1_57) + (0xC))) = (s32) ((*(s32 *)((s8 *)(temp_r1_57) + (0xC))) & 0xFFFFFF00);
    temp_r1_62 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(s32 *)((s8 *)(temp_r1_62) + (0x10))) = (s32) ((*(s32 *)((s8 *)(temp_r1_62) + (0x10))) & 0xFFFFFF00);
    temp_r1_66 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(s32 *)((s8 *)(temp_r1_66) + (0x34))) = (s32) (*(s32 *)((s8 *)(temp_r1_66) + (0xC)));
    temp_r1_69 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(s32 *)((s8 *)(temp_r1_69) + (0x38))) = (s32) (*(s32 *)((s8 *)(temp_r1_69) + (0x10)));
    temp_r6_72 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r3_77 = (*(void **)((s8 *)(arg0) + (0x200)));
    temp_r5_78 = (*(s32 *)((s8 *)(temp_r3_77) + (0xC)));
    temp_r2_81 = (*(s32 *)((s8 *)(temp_r6_72) + (0xC)));
    if ((temp_r2_81 >= (s32) (temp_r5_78 + 0xFFFFFC00)) && (temp_r2_81 <= (s32) (temp_r5_78 + 0x400))) {
        temp_r3_89 = (*(s32 *)((s8 *)(temp_r3_77) + (0x10)));
        temp_r2_92 = (*(s32 *)((s8 *)(temp_r6_72) + (0x10)));
        if ((temp_r2_92 >= (s32) (temp_r3_89 + 0xFFFFFC00)) && (temp_r2_92 <= (s32) (temp_r3_89 + 0x400))) {
            (*(s32 *)((s8 *)(temp_r6_72) + (0xC))) = temp_r5_78;
            (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x10))) = (s32) (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x10)));
        }
    }
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (4))) = 0x65;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (4))) = 0x65;
    temp_r2_116 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_117 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_117) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r1_117) + (0x351))) | 0x40);
    (*(u8 *)((s8 *)(temp_r2_116) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r2_116) + (0x351))) | 0x40);
    temp_r2_128 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_129 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_129) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r1_129) + (0x358))) | 8);
    (*(u8 *)((s8 *)(temp_r2_128) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r2_128) + (0x358))) | 8);
    var_r12_141 = 0x30;
    temp_r5_142 = (*(void **)((s8 *)(arg0) + (0x200)));
    temp_r3_145 = (*(s32 *)((s8 *)(temp_r5_142) + (0x14))) + (*(s32 *)((s8 *)(temp_r5_142) + (0x18)));
    temp_r6_146 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r2_149 = (*(s32 *)((s8 *)(temp_r6_146) + (0x14))) + (*(s32 *)((s8 *)(temp_r6_146) + (0x18)));
    if ((temp_r3_145 > temp_r2_149) && (((u32) (((*(u8 *)((s8 *)(temp_r5_142) + (0x26))) & (*(u8 *)((s8 *)(temp_r6_146) + (0x26)))) << 0x1A) >> 0x1E) != 0)) {
        var_r12_141 = (temp_r3_145 - temp_r2_149) + 0x30;
    }
    temp_r0_171 = (*(void **)((s8 *)(arg0) + (0x200)));
    temp_r4_178 = (*(void **)((s8 *)(arg0) + (0x204)));
    var_r0_182 = ((*(s32 *)((s8 *)(temp_r0_171) + (0x14))) + (*(s32 *)((s8 *)(temp_r0_171) + (0x18)))) - ((*(s32 *)((s8 *)(temp_r4_178) + (0x14))) + (*(s32 *)((s8 *)(temp_r4_178) + (0x18))));
    if (var_r0_182 < 0) {
        var_r0_182 += 0xFF;
    }
    var_r2_189 = (var_r0_182 >> 8) + 0x30;
    if (var_r2_189 > var_r12_141) {
        var_r2_189 = var_r12_141;
    }
    var_r5_201 = 0x6B;
    if (4 & (*(u8 *)((s8 *)(arg0) + (0xFB)))) {
        var_r5_201 = 0x35;
    }
    sub_80400B0(temp_r4_178, var_r2_189, var_r5_201, M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */));
    temp_r0_217 = (*(void **)((s8 *)(arg0) + (0x200)));
    var_r3_218 = (*(s32 *)((s8 *)(temp_r0_217) + (0xC)));
    if (var_r3_218 < 0) {
        var_r3_218 += 0xFF;
    }
    if ((s32) (*(s32 *)((s8 *)(temp_r0_217) + (0x10))) < 0) {

    }
    if (4 & (*(u8 *)((s8 *)(arg0) + (0xFB)))) {
        var_r0_239 = 0x10;
    } else {
        var_r0_239 = 0xA;
    }
    sub_8045A94((*(void **)((s8 *)(arg0) + (0x204))), 2, 0, var_r3_218 >> 8, var_r0_239);
    (*(u8 *)((s8 *)(arg0) + (0x20B))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20B))) | 0x80);
    play_sfx_80195B4(0x2B, -1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8035DB0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8036E14.s\"");
#else
s32 sub_802C4D4(void *, s32, s32);              /* extern */
s32 sub_802DDB4(void *, void *, s32, s32);      /* extern */
s32 sub_8049000(void *, s32);                   /* extern */
s32 sub_804955C(void *, s32);                   /* extern */
s32 sub_804FC90(void *);                        /* extern */

void sub_8036E14(void *arg0) {
    void *temp_r0_122;
    void *temp_r1_104;
    void *temp_r1_133;
    void *temp_r1_51;
    void *temp_r1_64;
    void *temp_r1_75;
    void *temp_r2_50;
    void *temp_r2_62;

    sub_802C4D4(arg0, 1, 1);
    sub_804FC90((*(void **)((s8 *)(arg0) + (0x200))));
    sub_802DDB4(arg0, (*(void **)((s8 *)(arg0) + (0x200))), 0, 0);
    *(*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x368))) = 0xC;
    *(*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x368))) = 0xC;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (4))) = 0x6C;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (4))) = 0x6C;
    temp_r2_50 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_51 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_51) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r1_51) + (0x351))) | 0x40);
    (*(u8 *)((s8 *)(temp_r2_50) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r2_50) + (0x351))) | 0x40);
    temp_r2_62 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_64 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_64) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r1_64) + (0x358))) | 8);
    (*(u8 *)((s8 *)(temp_r2_62) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r2_62) + (0x358))) | 8);
    temp_r1_75 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r1_75) + (0x35A))) = (u8) ((*(u8 *)((s8 *)(temp_r1_75) + (0x35A))) | 2);
    sub_804955C((*(void **)((s8 *)(arg0) + (0x204))), 2);
    (*(s16 *)((s8 *)(arg0) + (0x26E))) = 0;
    (*(u8 *)((s8 *)(arg0) + (0x208))) = (u8) (-2 & (*(u8 *)((s8 *)(arg0) + (0x208))));
    (*(u8 *)((s8 *)(arg0) + (0x20B))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20B))) | 0x80);
    temp_r1_104 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_104) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(temp_r1_104) + (0x214)))) | 4);
    sub_8049000((*(void **)((s8 *)(arg0) + (0x200))), 0x104D);
    temp_r0_122 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r0_122) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(temp_r0_122) + (0x214)))) | 4);
    sub_8049000((*(void **)((s8 *)(arg0) + (0x204))), 0x1026);
    temp_r1_133 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(s8 *)((s8 *)((*(void **)((s8 *)(temp_r1_133) + (0x294)))) + (0x20))) = 8;
    (*(s8 *)((s8 *)(temp_r1_133) + (0x239))) = 8;
    (*(u8 *)((s8 *)(arg0) + (0x246))) = (u8) ((-0x1D & (*(u8 *)((s8 *)(arg0) + (0x246)))) | 0x14);
    play_sfx_80195B4(0x157, -1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8036F84.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8038140.s\"");
#else
s32 sub_802C4D4(void *, s32, s32);              /* extern */
s32 sub_802DDB4(void *, void *, s32, s32);      /* extern */
s32 sub_8049000(void *, s32);                   /* extern */
s32 sub_804955C(void *, s32);                   /* extern */
s32 sub_804FC90(void *);                        /* extern */

void sub_8038140(void *arg0) {
    void *temp_r0_150;
    void *temp_r1_132;
    void *temp_r1_53;
    void *temp_r1_66;
    void *temp_r1_84;
    void *temp_r1_92;
    void *temp_r1_99;
    void *temp_r2_52;
    void *temp_r2_64;
    void *temp_r2_77;

    sub_802C4D4(arg0, 1, 1);
    sub_804FC90((*(void **)((s8 *)(arg0) + (0x200))));
    sub_802DDB4(arg0, (*(void **)((s8 *)(arg0) + (0x200))), 0, 0);
    *(*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x368))) = 0xD;
    *(*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x368))) = 0xD;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (4))) = 0x77;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (4))) = 0x77;
    temp_r2_52 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_53 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_53) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r1_53) + (0x351))) | 0x40);
    (*(u8 *)((s8 *)(temp_r2_52) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r2_52) + (0x351))) | 0x40);
    temp_r2_64 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_66 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_66) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r1_66) + (0x358))) | 8);
    (*(u8 *)((s8 *)(temp_r2_64) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r2_64) + (0x358))) | 8);
    temp_r2_77 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r2_77) + (0x20D))) = (u8) ((*(u8 *)((s8 *)(temp_r2_77) + (0x20D))) | 0x20);
    temp_r1_84 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r1_84) + (0x20D))) = (u8) (-0x41 & (*(u8 *)((s8 *)(temp_r1_84) + (0x20D))));
    temp_r1_92 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r1_92) + (0x35A))) = (u8) ((*(u8 *)((s8 *)(temp_r1_92) + (0x35A))) | 1);
    temp_r1_99 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r1_99) + (0x35A))) = (u8) ((*(u8 *)((s8 *)(temp_r1_99) + (0x35A))) | 2);
    sub_804955C((*(void **)((s8 *)(arg0) + (0x204))), 2);
    (*(u8 *)((s8 *)(arg0) + (0x26A))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg0) + (0x26A))));
    (*(s16 *)((s8 *)(arg0) + (0x26E))) = 0;
    (*(u8 *)((s8 *)(arg0) + (0x208))) = (u8) (-2 & (*(u8 *)((s8 *)(arg0) + (0x208))));
    (*(u8 *)((s8 *)(arg0) + (0x20B))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20B))) | 0x80);
    temp_r1_132 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_132) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(temp_r1_132) + (0x214)))) | 4);
    sub_8049000((*(void **)((s8 *)(arg0) + (0x200))), 0x1034);
    temp_r0_150 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r0_150) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(temp_r0_150) + (0x214)))) | 4);
    sub_8049000((*(void **)((s8 *)(arg0) + (0x204))), 0x1040);
    (*(u8 *)((s8 *)(arg0) + (0x246))) = (u8) ((-0x1D & (*(u8 *)((s8 *)(arg0) + (0x246)))) | 0x18);
    play_sfx_80195B4(0x87, -1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80382CC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8039078.s\"");
#else
s32 sub_802C4D4(void *, s32, s32);              /* extern */
s32 sub_802DDB4(void *, void *, s32, s32);      /* extern */
s32 sub_80400B0(void *, s32, s32, s32);     /* extern */
s32 sub_8049000(void *, s32);                   /* extern */
s32 sub_804FC90(void *);                        /* extern */

void sub_8039078(void *arg0) {
    s16 var_r0_48;
    s32 var_r0_170;
    s32 var_r1_154;
    void *temp_r0_163;
    void *temp_r1_103;
    void *temp_r1_109;
    void *temp_r1_116;
    void *temp_r1_78;
    void *temp_r1_91;
    void *temp_r2_139;
    void *temp_r2_150;
    void *temp_r2_197;
    void *temp_r2_73;
    void *temp_r2_89;
    void *temp_r4_161;
    void *temp_r4_27;

    sub_802C4D4(arg0, 1, 1);
    sub_804FC90((*(void **)((s8 *)(arg0) + (0x200))));
    sub_802DDB4(arg0, (*(void **)((s8 *)(arg0) + (0x200))), 0, 0);
    temp_r4_27 = (*(void **)((s8 *)(arg0) + (0x200)));
    if ((*(u8 *)((s8 *)(temp_r4_27) + (0x54))) == 0) {
        *(*(s8 **)((s8 *)(temp_r4_27) + (0x368))) = 0xF;
        *(*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x368))) = 0xF;
        var_r0_48 = 0x88;
    } else {
        *(*(s8 **)((s8 *)(temp_r4_27) + (0x368))) = 0xE;
        *(*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x368))) = 0xE;
        var_r0_48 = 0x80;
    }
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (4))) = var_r0_48;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (4))) = var_r0_48;
    temp_r2_73 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_78 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_78) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r1_78) + (0x351))) | 0x40);
    (*(u8 *)((s8 *)(temp_r2_73) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r2_73) + (0x351))) | 0x40);
    temp_r2_89 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_91 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_91) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r1_91) + (0x358))) | 8);
    (*(u8 *)((s8 *)(temp_r2_89) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r2_89) + (0x358))) | 8);
    temp_r1_103 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r1_103) + (0x212))) = (u8) ((*(u8 *)((s8 *)(temp_r1_103) + (0x212))) | 0x40);
    temp_r1_109 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r1_109) + (0x20D))) = (u8) ((*(u8 *)((s8 *)(temp_r1_109) + (0x20D))) | 0x20);
    temp_r1_116 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r1_116) + (0x35A))) = (u8) ((*(u8 *)((s8 *)(temp_r1_116) + (0x35A))) | 2);
    (*(u8 *)((s8 *)(arg0) + (0x208))) = (u8) (-2 & (*(u8 *)((s8 *)(arg0) + (0x208))));
    (*(u8 *)((s8 *)(arg0) + (0x20B))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20B))) | 0x80);
    temp_r2_139 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r2_139) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(temp_r2_139) + (0x214)))) | 4);
    temp_r2_150 = (*(void **)((s8 *)(arg0) + (0x204)));
    var_r1_154 = 0x103F;
    if ((*(u8 *)((s8 *)(temp_r2_150) + (0x54))) == 0) {
        var_r1_154 = 0x1025;
    }
    sub_8049000(temp_r2_150, var_r1_154);
    temp_r4_161 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r0_163 = (*(void **)((s8 *)(arg0) + (0x200)));
    var_r0_170 = ((*(s32 *)((s8 *)(temp_r0_163) + (0x14))) + (*(s32 *)((s8 *)(temp_r0_163) + (0x18)))) - ((*(s32 *)((s8 *)(temp_r4_161) + (0x14))) + (*(s32 *)((s8 *)(temp_r4_161) + (0x18))));
    if (var_r0_170 < 0) {
        var_r0_170 += 0xFF;
    }
    sub_80400B0(temp_r4_161, (var_r0_170 >> 8) + 0x10, 0xEE >> ((u32) ((*(u8 *)((s8 *)(arg0) + (0xFB))) << 0x1D) >> 0x1F), M2C_ERROR(/* unknown instruction: ldsh $r5, ($mem_loc_fictive_) */));
    temp_r2_197 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x294)));
    (*(u8 *)((s8 *)(temp_r2_197) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_197) + (0x12)))) | 2);
    (*(s16 *)((s8 *)(arg0) + (0x26E))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x272))) = 0x1E;
    play_sfx_80195B4(0x3C, -1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8039250.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8039A00.s\"");
#else
s32 sub_802C4D4(void *, s32, s32);              /* extern */
s32 sub_802DDB4(void *, void *, s32, s32);      /* extern */
s32 sub_8049000(void *, s32);                   /* extern */
s32 sub_804955C(void *, s32);                   /* extern */
s32 sub_804FC90(void *);                        /* extern */

void sub_8039A00(void *arg0) {
    void *temp_r0_125;
    void *temp_r1_109;
    void *temp_r1_135;
    void *temp_r1_50;
    void *temp_r1_63;
    void *temp_r1_74;
    void *temp_r1_81;
    void *temp_r2_49;
    void *temp_r2_61;

    sub_802C4D4(arg0, 1, 1);
    sub_804FC90((*(void **)((s8 *)(arg0) + (0x200))));
    sub_802DDB4(arg0, (*(void **)((s8 *)(arg0) + (0x200))), 0, 0);
    *(*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x368))) = 0x10;
    *(*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x368))) = 0x10;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (4))) = 0x90;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (4))) = 0x90;
    temp_r2_49 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_50 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_50) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r1_50) + (0x351))) | 0x40);
    (*(u8 *)((s8 *)(temp_r2_49) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r2_49) + (0x351))) | 0x40);
    temp_r2_61 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_63 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_63) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r1_63) + (0x358))) | 8);
    (*(u8 *)((s8 *)(temp_r2_61) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r2_61) + (0x358))) | 8);
    temp_r1_74 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r1_74) + (0x20D))) = (u8) ((*(u8 *)((s8 *)(temp_r1_74) + (0x20D))) | 0x20);
    temp_r1_81 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r1_81) + (0x35A))) = (u8) ((*(u8 *)((s8 *)(temp_r1_81) + (0x35A))) | 2);
    sub_804955C((*(void **)((s8 *)(arg0) + (0x204))), 2);
    (*(s16 *)((s8 *)(arg0) + (0x26E))) = 0;
    (*(u8 *)((s8 *)(arg0) + (0x208))) = (u8) (-2 & (*(u8 *)((s8 *)(arg0) + (0x208))));
    (*(u8 *)((s8 *)(arg0) + (0x20B))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20B))) | 0x80);
    temp_r1_109 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_109) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(temp_r1_109) + (0x214)))) | 4);
    sub_8049000((*(void **)((s8 *)(arg0) + (0x200))), 0x104D);
    temp_r0_125 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r0_125) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(temp_r0_125) + (0x214)))) | 4);
    sub_8049000((*(void **)((s8 *)(arg0) + (0x204))), 0x1026);
    temp_r1_135 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(s8 *)((s8 *)((*(void **)((s8 *)(temp_r1_135) + (0x294)))) + (0x20))) = 8;
    (*(s8 *)((s8 *)(temp_r1_135) + (0x239))) = 8;
    play_sfx_80195B4(0x157, -1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8039B5C.s\"");
#else
s32 sub_802C4D4(void *, s32, s32);              /* extern */
s32 sub_802DDB4(void *, void *, s32, s32);      /* extern */
s32 sub_8049000(void *, s32);                   /* extern */
s32 sub_804955C(void *, s32);                   /* extern */
s32 sub_804FC90(void *);                        /* extern */

void sub_8039B5C(void *arg0) {
    void *temp_r0_126;
    void *temp_r1_110;
    void *temp_r1_50;
    void *temp_r1_63;
    void *temp_r1_74;
    void *temp_r1_81;
    void *temp_r2_49;
    void *temp_r2_61;

    sub_802C4D4(arg0, 1, 1);
    sub_804FC90((*(void **)((s8 *)(arg0) + (0x200))));
    sub_802DDB4(arg0, (*(void **)((s8 *)(arg0) + (0x200))), 0, 0);
    *(*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x368))) = 0x11;
    *(*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x368))) = 0x11;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (4))) = 0x98;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (4))) = 0x98;
    temp_r2_49 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_50 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_50) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r1_50) + (0x351))) | 0x40);
    (*(u8 *)((s8 *)(temp_r2_49) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r2_49) + (0x351))) | 0x40);
    temp_r2_61 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_63 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_63) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r1_63) + (0x358))) | 8);
    (*(u8 *)((s8 *)(temp_r2_61) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r2_61) + (0x358))) | 8);
    temp_r1_74 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r1_74) + (0x20D))) = (u8) ((*(u8 *)((s8 *)(temp_r1_74) + (0x20D))) | 0x20);
    temp_r1_81 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r1_81) + (0x35A))) = (u8) ((*(u8 *)((s8 *)(temp_r1_81) + (0x35A))) | 2);
    sub_804955C((*(void **)((s8 *)(arg0) + (0x204))), 2);
    (*(s16 *)((s8 *)(arg0) + (0x26E))) = 0;
    (*(u8 *)((s8 *)(arg0) + (0x208))) = (u8) (-2 & (*(u8 *)((s8 *)(arg0) + (0x208))));
    (*(u8 *)((s8 *)(arg0) + (0x20B))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20B))) | 0x80);
    temp_r1_110 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_110) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(temp_r1_110) + (0x214)))) | 4);
    sub_8049000((*(void **)((s8 *)(arg0) + (0x200))), 0x1034);
    temp_r0_126 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r0_126) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(temp_r0_126) + (0x214)))) | 4);
    sub_8049000((*(void **)((s8 *)(arg0) + (0x204))), 0x1040);
    play_sfx_80195B4(0x87, -1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8039C9C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803A438.s\"");
#else
s32 sub_802C4D4(void *, s32, s32);              /* extern */
s32 sub_802DDB4(void *, void *, s32, s32);      /* extern */
s32 sub_8049000(void *, s32);                   /* extern */
s32 sub_804955C(void *, s32);                   /* extern */
s32 sub_804FC90(void *);                        /* extern */

void sub_803A438(void *arg0) {
    s16 var_r0_33;
    s32 var_r1_134;
    s32 var_r2_144;
    void *temp_r1_51;
    void *temp_r1_63;
    void *temp_r1_75;
    void *temp_r1_82;
    void *temp_r2_121;
    void *temp_r2_24;
    void *temp_r2_47;
    void *temp_r2_62;
    void *temp_r3_107;

    sub_802C4D4(arg0, 1, 1);
    sub_804FC90((*(void **)((s8 *)(arg0) + (0x200))));
    sub_802DDB4(arg0, (*(void **)((s8 *)(arg0) + (0x200))), 0, 0);
    temp_r2_24 = (*(void **)((s8 *)(arg0) + (0x200)));
    if ((*(u8 *)((s8 *)(temp_r2_24) + (0x54))) == 0) {
        var_r0_33 = 0x61;
    } else {
        var_r0_33 = 0x4D;
    }
    (*(s16 *)((s8 *)(temp_r2_24) + (4))) = var_r0_33;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (4))) = var_r0_33;
    temp_r2_47 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_51 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_51) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r1_51) + (0x351))) | 0x40);
    (*(u8 *)((s8 *)(temp_r2_47) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r2_47) + (0x351))) | 0x40);
    temp_r2_62 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_63 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_63) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r1_63) + (0x358))) | 8);
    (*(u8 *)((s8 *)(temp_r2_62) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r2_62) + (0x358))) | 8);
    temp_r1_75 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r1_75) + (0x20D))) = (u8) ((*(u8 *)((s8 *)(temp_r1_75) + (0x20D))) | 0x20);
    temp_r1_82 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r1_82) + (0x35A))) = (u8) ((*(u8 *)((s8 *)(temp_r1_82) + (0x35A))) | 2);
    sub_804955C((*(void **)((s8 *)(arg0) + (0x204))), 2);
    (*(s16 *)((s8 *)(arg0) + (0x26E))) = 0;
    (*(u8 *)((s8 *)(arg0) + (0x20B))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20B))) | 0x80);
    (*(u8 *)((s8 *)(arg0) + (0x20A))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20A))) | 8);
    temp_r3_107 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r3_107) + (0x24))) = (u8) ((-8 & (*(u8 *)((s8 *)(temp_r3_107) + (0x24)))) | ((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x24))) << 0x1D) >> 0x1D));
    temp_r2_121 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r2_121) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(temp_r2_121) + (0x214)))) | 4);
    var_r1_134 = 0x1026;
    if ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x54))) == 0) {
        var_r1_134 = 0x1040;
    }
    sub_8049000((*(void **)((s8 *)(arg0) + (0x204))), var_r1_134);
    var_r2_144 = 0x87;
    if ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x54))) == 0) {
        var_r2_144 = 0x157;
    }
    play_sfx_80195B4(var_r2_144, -1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803A584.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
