#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8030484 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8030484.s\"");
#else
s32 sub_802C4D4(void *, s32, s32);              /* extern */
s32 sub_802DDB4(void *, void *, s32, s32);      /* extern */
s32 sub_80400B0(void *, s32, s32, s32);     /* extern */
s32 sub_8045A94(void *, s32, s32, s32, s32);    /* extern */
s32 sub_804FC90(void *);                        /* extern */

void sub_8030484(void *arg0) {
    s32 temp_r2_155;
    s32 temp_r2_80;
    s32 temp_r2_91;
    s32 temp_r3_154;
    s32 temp_r3_88;
    s32 temp_r5_77;
    s32 var_r0_186;
    s32 var_r0_239;
    s32 var_r0_36;
    s32 var_r12_151;
    s32 var_r1_193;
    s32 var_r1_47;
    s32 var_r3_218;
    void *temp_r0_152;
    void *temp_r0_175;
    void *temp_r0_217;
    void *temp_r1_127;
    void *temp_r1_139;
    void *temp_r1_153;
    void *temp_r1_56;
    void *temp_r1_61;
    void *temp_r1_65;
    void *temp_r1_68;
    void *temp_r2_126;
    void *temp_r2_138;
    void *temp_r3_76;
    void *temp_r4_182;
    void *temp_r6_71;

    sub_802C4D4(arg0, 1, 1);
    sub_804FC90((*(void **)((s8 *)(arg0) + (0x200))));
    sub_802DDB4(arg0, (*(void **)((s8 *)(arg0) + (0x200))), 0, 0);
    (*(u8 *)((s8 *)(arg0) + (0x246))) = (u8) (-3 & (*(u8 *)((s8 *)(arg0) + (0x246))));
    var_r0_36 = (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0xC)));
    if (var_r0_36 < 0) {
        var_r0_36 += 0xFF;
    }
    (*(s16 *)((s8 *)(arg0) + (0x248))) = (s16) (var_r0_36 >> 8);
    var_r1_47 = (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x10)));
    if (var_r1_47 < 0) {
        var_r1_47 += 0xFF;
    }
    (*(s16 *)((s8 *)(arg0) + (0x24A))) = (s16) (var_r1_47 >> 8);
    temp_r1_56 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(s32 *)((s8 *)(temp_r1_56) + (0xC))) = (s32) ((*(s32 *)((s8 *)(temp_r1_56) + (0xC))) & 0xFFFFFF00);
    temp_r1_61 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(s32 *)((s8 *)(temp_r1_61) + (0x10))) = (s32) ((*(s32 *)((s8 *)(temp_r1_61) + (0x10))) & 0xFFFFFF00);
    temp_r1_65 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(s32 *)((s8 *)(temp_r1_65) + (0x34))) = (s32) (*(s32 *)((s8 *)(temp_r1_65) + (0xC)));
    temp_r1_68 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(s32 *)((s8 *)(temp_r1_68) + (0x38))) = (s32) (*(s32 *)((s8 *)(temp_r1_68) + (0x10)));
    temp_r6_71 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r3_76 = (*(void **)((s8 *)(arg0) + (0x200)));
    temp_r5_77 = (*(s32 *)((s8 *)(temp_r3_76) + (0xC)));
    temp_r2_80 = (*(s32 *)((s8 *)(temp_r6_71) + (0xC)));
    if ((temp_r2_80 >= (s32) (temp_r5_77 + 0xFFFFFC00)) && (temp_r2_80 <= (s32) (temp_r5_77 + 0x400))) {
        temp_r3_88 = (*(s32 *)((s8 *)(temp_r3_76) + (0x10)));
        temp_r2_91 = (*(s32 *)((s8 *)(temp_r6_71) + (0x10)));
        if ((temp_r2_91 >= (s32) (temp_r3_88 + 0xFFFFFC00)) && (temp_r2_91 <= (s32) (temp_r3_88 + 0x400))) {
            (*(s32 *)((s8 *)(temp_r6_71) + (0xC))) = temp_r5_77;
            (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x10))) = (s32) (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x10)));
        }
    }
    *(*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x368))) = 3;
    *(*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x368))) = 3;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (4))) = 0x10;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (4))) = 0x10;
    temp_r2_126 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_127 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_127) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r1_127) + (0x351))) | 0x40);
    (*(u8 *)((s8 *)(temp_r2_126) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r2_126) + (0x351))) | 0x40);
    temp_r2_138 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_139 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_139) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r1_139) + (0x358))) | 8);
    (*(u8 *)((s8 *)(temp_r2_138) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r2_138) + (0x358))) | 8);
    var_r12_151 = 0x20;
    temp_r0_152 = (*(void **)((s8 *)(arg0) + (0x200)));
    temp_r1_153 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r3_154 = (*(s32 *)((s8 *)(temp_r0_152) + (0x14)));
    temp_r2_155 = (*(s32 *)((s8 *)(temp_r1_153) + (0x14)));
    if ((temp_r3_154 > temp_r2_155) && (((u32) (((*(u8 *)((s8 *)(temp_r0_152) + (0x26))) & (*(u8 *)((s8 *)(temp_r1_153) + (0x26)))) << 0x1A) >> 0x1E) != 0)) {
        var_r12_151 = (temp_r3_154 - temp_r2_155) + 0x20;
    }
    temp_r0_175 = (*(void **)((s8 *)(arg0) + (0x200)));
    temp_r4_182 = (*(void **)((s8 *)(arg0) + (0x204)));
    var_r0_186 = ((*(s32 *)((s8 *)(temp_r0_175) + (0x14))) + (*(s32 *)((s8 *)(temp_r0_175) + (0x18)))) - ((*(s32 *)((s8 *)(temp_r4_182) + (0x14))) + (*(s32 *)((s8 *)(temp_r4_182) + (0x18))));
    if (var_r0_186 < 0) {
        var_r0_186 += 0xFF;
    }
    var_r1_193 = (var_r0_186 >> 8) + 0x20;
    if (var_r1_193 > var_r12_151) {
        var_r1_193 = var_r12_151;
    }
    sub_80400B0(temp_r4_182, var_r1_193, 0xEE >> ((u32) ((*(u8 *)((s8 *)(arg0) + (0xFB))) << 0x1D) >> 0x1F), M2C_ERROR(/* unknown instruction: ldsh $r6, ($mem_loc_fictive_) */));
    temp_r0_217 = (*(void **)((s8 *)(arg0) + (0x200)));
    var_r3_218 = (*(s32 *)((s8 *)(temp_r0_217) + (0xC)));
    if (var_r3_218 < 0) {
        var_r3_218 += 0xFF;
    }
    if ((s32) (*(s32 *)((s8 *)(temp_r0_217) + (0x10))) < 0) {

    }
    if (4 & (*(u8 *)((s8 *)(arg0) + (0xFB)))) {
        var_r0_239 = 0xE;
    } else {
        var_r0_239 = 8;
    }
    sub_8045A94((*(void **)((s8 *)(arg0) + (0x204))), 2, 0, var_r3_218 >> 8, var_r0_239);
    (*(u8 *)((s8 *)(arg0) + (0x20B))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20B))) | 0x80);
    play_sfx_80195B4(0x2B, -1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80306A0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8031234.s\"");
#else
s32 sub_802C4D4(void *, s32, s32);              /* extern */
s32 sub_802DDB4(void *, void *, s32, s32);      /* extern */
s32 sub_80400B0(void *, s32, s32, s32);     /* extern */
s32 sub_8045A94(void *, s32, s32, s32, s32);    /* extern */
s32 sub_804FC90(void *);                        /* extern */

void sub_8031234(void *arg0) {
    s32 var_r0_142;
    s32 var_r0_36;
    s32 var_r1_47;
    s32 var_r1_94;
    s32 var_r3_121;
    u32 temp_r1_170;
    void *temp_r0_120;
    void *temp_r0_88;
    void *temp_r1_65;
    void *temp_r1_77;
    void *temp_r2_166;
    void *temp_r2_64;
    void *temp_r2_76;
    void *temp_r4_159;

    sub_802C4D4(arg0, 1, 1);
    sub_804FC90((*(void **)((s8 *)(arg0) + (0x200))));
    sub_802DDB4(arg0, (*(void **)((s8 *)(arg0) + (0x200))), 0, 0);
    (*(u8 *)((s8 *)(arg0) + (0x246))) = (u8) (-3 & (*(u8 *)((s8 *)(arg0) + (0x246))));
    var_r0_36 = (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0xC)));
    if (var_r0_36 < 0) {
        var_r0_36 += 0xFF;
    }
    (*(s16 *)((s8 *)(arg0) + (0x248))) = (s16) (var_r0_36 >> 8);
    var_r1_47 = (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x10)));
    if (var_r1_47 < 0) {
        var_r1_47 += 0xFF;
    }
    (*(s16 *)((s8 *)(arg0) + (0x24A))) = (s16) (var_r1_47 >> 8);
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (4))) = 0x2E;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (4))) = 0x2E;
    temp_r2_64 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_65 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_65) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r1_65) + (0x351))) | 0x40);
    (*(u8 *)((s8 *)(temp_r2_64) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r2_64) + (0x351))) | 0x40);
    temp_r2_76 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_77 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_77) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r1_77) + (0x358))) | 8);
    (*(u8 *)((s8 *)(temp_r2_76) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r2_76) + (0x358))) | 8);
    temp_r0_88 = (*(void **)((s8 *)(arg0) + (0x204)));
    var_r1_94 = (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x14))) - (*(s32 *)((s8 *)(temp_r0_88) + (0x14)));
    if (var_r1_94 < 0) {
        var_r1_94 += 0xFF;
    }
    sub_80400B0(temp_r0_88, (var_r1_94 >> 8) + 0x20, 0xEE >> ((u32) ((*(u8 *)((s8 *)(arg0) + (0xFB))) << 0x1D) >> 0x1F), M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    temp_r0_120 = (*(void **)((s8 *)(arg0) + (0x200)));
    var_r3_121 = (*(s32 *)((s8 *)(temp_r0_120) + (0xC)));
    if (var_r3_121 < 0) {
        var_r3_121 += 0xFF;
    }
    if ((s32) (*(s32 *)((s8 *)(temp_r0_120) + (0x10))) < 0) {

    }
    if (4 & (*(u8 *)((s8 *)(arg0) + (0xFB)))) {
        var_r0_142 = 0x10;
    } else {
        var_r0_142 = 0xA;
    }
    sub_8045A94((*(void **)((s8 *)(arg0) + (0x204))), 2, 0, var_r3_121 >> 8, var_r0_142);
    temp_r4_159 = (*(void **)((s8 *)(arg0) + (0x200)));
    temp_r2_166 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_170 = (u8) (*(u8 *)((s8 *)(arg0) + (0xFB))) >> 3;
    (*(s8 *)((s8 *)((*(void **)((s8 *)(temp_r2_166) + (0x294)))) + (0x20))) = (s8) temp_r1_170;
    (*(s8 *)((s8 *)(temp_r2_166) + (0x239))) = (s8) temp_r1_170;
    (*(s8 *)((s8 *)((*(void **)((s8 *)(temp_r4_159) + (0x294)))) + (0x20))) = (s8) temp_r1_170;
    (*(s8 *)((s8 *)(temp_r4_159) + (0x239))) = (s8) temp_r1_170;
    (*(u8 *)((s8 *)(arg0) + (0x20B))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20B))) | 0x80);
    play_sfx_80195B4(0x2B, -1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80313C0.s\"");
#else
s32 sub_802C4D4(void *, s32, s32);              /* extern */
s32 sub_802DDB4(void *, void *, s32, s32);      /* extern */
s32 sub_80400B0(void *, s32, s32, s32);     /* extern */
s32 sub_8049000(void *, s32);                   /* extern */
s32 sub_804FC90(void *);                        /* extern */

void sub_80313C0(void *arg0) {
    u32 temp_r1_121;
    void *temp_r1_26;
    void *temp_r1_42;
    void *temp_r1_53;
    void *temp_r1_65;
    void *temp_r1_72;
    void *temp_r2_116;
    void *temp_r2_134;
    void *temp_r2_41;
    void *temp_r2_52;
    void *temp_r2_80;
    void *temp_r4_110;

    sub_802C4D4(arg0, 1, 1);
    sub_804FC90((*(void **)((s8 *)(arg0) + (0x200))));
    sub_802DDB4(arg0, (*(void **)((s8 *)(arg0) + (0x200))), 0, 0);
    temp_r1_26 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r1_26) + (0x212))) = (u8) ((*(u8 *)((s8 *)(temp_r1_26) + (0x212))) | 0x40);
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (4))) = 0x37;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (4))) = 0x37;
    temp_r2_41 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_42 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_42) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r1_42) + (0x351))) | 0x40);
    (*(u8 *)((s8 *)(temp_r2_41) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r2_41) + (0x351))) | 0x40);
    temp_r2_52 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_53 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_53) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r1_53) + (0x358))) | 8);
    (*(u8 *)((s8 *)(temp_r2_52) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r2_52) + (0x358))) | 8);
    temp_r1_65 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r1_65) + (0x20D))) = (u8) ((*(u8 *)((s8 *)(temp_r1_65) + (0x20D))) | 0x20);
    temp_r1_72 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r1_72) + (0x35A))) = (u8) (-3 & (*(u8 *)((s8 *)(temp_r1_72) + (0x35A))));
    temp_r2_80 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r2_80) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(temp_r2_80) + (0x214)))) | 4);
    sub_8049000((*(void **)((s8 *)(arg0) + (0x204))), 0x103F);
    sub_80400B0((*(void **)((s8 *)(arg0) + (0x204))), 0x10, 0xEE >> ((u32) ((*(u8 *)((s8 *)(arg0) + (0xFB))) << 0x1D) >> 0x1F), M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */));
    temp_r4_110 = (*(void **)((s8 *)(arg0) + (0x200)));
    temp_r2_116 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_121 = (u8) (*(u8 *)((s8 *)(arg0) + (0xFB))) >> 3;
    (*(s8 *)((s8 *)((*(void **)((s8 *)(temp_r2_116) + (0x294)))) + (0x20))) = (s8) temp_r1_121;
    (*(s8 *)((s8 *)(temp_r2_116) + (0x239))) = (s8) temp_r1_121;
    (*(s8 *)((s8 *)((*(void **)((s8 *)(temp_r4_110) + (0x294)))) + (0x20))) = (s8) temp_r1_121;
    (*(s8 *)((s8 *)(temp_r4_110) + (0x239))) = (s8) temp_r1_121;
    temp_r2_134 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x294)));
    (*(u8 *)((s8 *)(temp_r2_134) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_134) + (0x12)))) | 2);
    (*(u8 *)((s8 *)(arg0) + (0x20B))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20B))) | 0x80);
    play_sfx_80195B4(0x3C, -1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8031518.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8031650.s\"");
#else
s32 sub_802C4D4(void *, s32, s32);              /* extern */
s32 sub_8049000(void *, s32);                   /* extern */
s32 sub_804E0D8(s32, s32, s32, s32);            /* extern */

void sub_8031650(void *arg0, void *arg1) {
    u32 temp_r0_44;

    sub_802C4D4(arg0, 1, 1);
    (*(s16 *)((s8 *)(arg1) + (4))) = 0x3A;
    (*(u8 *)((s8 *)(arg1) + (0x351))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x351))) | 0x40);
    (*(s8 *)((s8 *)(arg1) + (0x23B))) = 0;
    (*(u8 *)((s8 *)(arg1) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg1) + (0x214)))) | 4);
    sub_8049000(arg1, 0x1030);
    temp_r0_44 = (u8) (*(u8 *)((s8 *)(arg0) + (0xFB))) >> 3;
    (*(s8 *)((s8 *)((*(void **)((s8 *)(arg1) + (0x294)))) + (0x20))) = (s8) temp_r0_44;
    (*(s8 *)((s8 *)(arg1) + (0x239))) = (s8) temp_r0_44;
    sub_804E0D8((*(s32 *)((s8 *)(arg0) + (0xA8))), 4, (*(s32 *)((s8 *)(arg0) + (0x200))), 0);
    (*(s8 *)((s8 *)(arg1) + (0x355))) = 0x46;
    (*(u8 *)((s8 *)(arg0) + (0x20B))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20B))) | 0x80);
    play_sfx_80195B4(0x56, -1);
}
#endif
