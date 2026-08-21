#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_802A608 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802A608.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802A740.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802B654.s\"");
#else
s32 sub_80465D8(void *);                        /* extern */
s32 sub_804D2CC(void *);                        /* extern */
s32 sub_804FB64(void *, void *, s32, s32);      /* extern */

void sub_802B654(void *arg0, void *arg1) {
    u8 var_r0_146;
    u8 var_r5_135;
    void *temp_r5_47;
    void *var_r8_55;

    if (0x10 & (*(u8 *)((s8 *)(arg1) + (0x35B)))) {
        if ((*(s32 *)((s8 *)(arg1) + (0x388))) != 0) {
            (*(s32 (**)(void *, void *, s32, s32))((s8 *)(((*(s32 *)((s8 *)(arg1) + (0x338))) + 0x60)) + (4)))(arg1 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), arg1 + 0x388, 1, 0);
        }
        temp_r5_47 = arg0 + 0x28;
        (*(s32 (**)(void *, void *, u8, s32))((s8 *)(((*(s32 *)((s8 *)(arg1) + (0x338))) + 0x60)) + (4)))(arg1 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), temp_r5_47, (*(u8 *)((s8 *)(arg0) + (0x10B))), 1);
        var_r8_55 = temp_r5_47;
    } else {
        if (!(1 & (*(u8 *)((s8 *)(arg0) + (0x209)))) && ((*(u8 *)((s8 *)(arg0) + (0x10E))) != 0)) {
            (*(s32 (**)(void *, void *, u8, s32))((s8 *)(((*(s32 *)((s8 *)(arg1) + (0x338))) + 0x60)) + (4)))(arg1 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), arg0 + (((*(u8 *)((s8 *)(arg0) + (0x10E))) * 4) + 0x28), (*(u8 *)((s8 *)(arg0) + (0x10F))), 0);
        }
        if ((*(u8 *)((s8 *)(arg0) + (0x110))) != 0) {
            (*(s32 (**)(void *, void *, u8, s32))((s8 *)(((*(s32 *)((s8 *)(arg1) + (0x338))) + 0x60)) + (4)))(arg1 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), arg0 + (((*(u8 *)((s8 *)(arg0) + (0x110))) * 4) + 0x28), (*(u8 *)((s8 *)(arg0) + (0x111))), 0);
        }
        if (((*(u8 *)((s8 *)(arg0) + (0x112))) != 0) && ((*(u8 *)((s8 *)(arg1) + (0x54))) == 1) && ((0x1C & (*(u8 *)((s8 *)(arg0) + (0x246)))) == 0x10)) {
            var_r5_135 = (*(u8 *)((s8 *)(arg0) + (0x112)));
        } else {
            var_r0_146 = (*(u8 *)((s8 *)(arg0) + (0x114)));
            if ((var_r0_146 != 0) || (var_r0_146 = (*(u8 *)((s8 *)(arg0) + (0x116))), (var_r0_146 != 0)) || (var_r0_146 = (*(u8 *)((s8 *)(arg0) + (0x11A))), var_r5_135 = 0, (var_r0_146 != 0))) {
                var_r5_135 = var_r0_146;
            }
        }
        var_r8_55 = arg0 + 0x28;
        if ((s32) var_r5_135 > 0) {
            (*(s32 (**)(void *, void *, s32, s32))((s8 *)(((*(s32 *)((s8 *)(arg1) + (0x338))) + 0x60)) + (4)))(arg1 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), arg0 + ((var_r5_135 * 4) + 0x28), (*(u8 *)((s8 *)(arg0) + (0x10B))) - var_r5_135, 0);
        }
    }
    sub_80465D8(arg1);
    (*(s32 (**)(void *))((s8 *)(((*(s32 *)((s8 *)(arg1) + (0x338))) + 0x68)) + (4)))(arg1 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */));
    sub_804D2CC(arg1);
    sub_804FB64(arg1, var_r8_55, 0, 0);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802B804.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802BD2C.s\"");
#else
s32 sub_802DF80(void *, s32);                   /* extern */
s32 sub_802E688(void *, u32);                       /* extern */
s32 sub_802E754(void *, s32, s32, s32);         /* extern */

s32 sub_802BD2C(void *arg0) {
    s32 temp_r0_180;
    s32 temp_r1_169;
    s32 temp_r1_47;
    s32 temp_r3_106;
    s32 temp_r3_141;
    s32 temp_r3_63;
    s32 temp_r3_77;
    s32 temp_r3_92;
    s32 temp_r4_28;
    s32 temp_r4_43;
    s32 var_r4_164;
    s8 *var_r1_261;
    u32 temp_r0_222;
    u8 temp_r1_51;
    u8 temp_r2_162;
    void *temp_r0_201;
    void *temp_r0_228;
    void *temp_r1_148;
    void *temp_r1_214;
    void *temp_r1_240;
    void *temp_r1_280;
    void *temp_r1_283;
    void *temp_r2_130;
    void *temp_r2_239;
    void *temp_r2_312;
    void *temp_r2_41;
    void *temp_r3_27;

    if (!(0x10 & (*(u8 *)((s8 *)(arg0) + (0x208))))) {

    } else {
        temp_r3_27 = (*(void **)((s8 *)(arg0) + (0x200)));
        temp_r4_28 = (*(s32 *)((s8 *)(temp_r3_27) + (0xC)));
        if ((temp_r4_28 == (*(s32 *)((s8 *)(temp_r3_27) + (0x34)))) && ((*(s32 *)((s8 *)(temp_r3_27) + (0x10))) == (*(s32 *)((s8 *)(temp_r3_27) + (0x38))))) {
            (*(u8 *)((s8 *)(arg0) + (0x26C))) = 0U;
        } else {
            temp_r2_41 = (*(void **)((s8 *)(arg0) + (0x204)));
            temp_r4_43 = temp_r4_28 - (*(s32 *)((s8 *)(temp_r2_41) + (0xC)));
            temp_r1_47 = (*(s32 *)((s8 *)(temp_r3_27) + (0x10))) - (*(s32 *)((s8 *)(temp_r2_41) + (0x10)));
            temp_r1_51 = (*(u8 *)((s8 *)(arg0) + (0x20A)));
            (*(u8 *)((s8 *)(arg0) + (0x20A))) = (u8) (-5 & temp_r1_51);
            temp_r3_63 = M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */);
            if (temp_r4_43 > temp_r3_63) {
                (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0xC))) = (s32) ((*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0xC))) + temp_r3_63);
                (*(u8 *)((s8 *)(arg0) + (0x20A))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20A))) | 4);
            }
            temp_r3_77 = M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */);
            if ((s64) (temp_r4_43 + temp_r3_77) < 0) {
                (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0xC))) = (s32) ((*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0xC))) - temp_r3_77);
                (*(u8 *)((s8 *)(arg0) + (0x20A))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20A))) | 4);
            }
            temp_r3_92 = M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */);
            if (temp_r1_47 > temp_r3_92) {
                (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x10))) = (s32) ((*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x10))) + temp_r3_92);
                (*(u8 *)((s8 *)(arg0) + (0x20A))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20A))) | 4);
            }
            temp_r3_106 = M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */);
            if ((s64) (temp_r1_47 + temp_r3_106) < 0) {
                (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x10))) = (s32) ((*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x10))) - temp_r3_106);
                (*(u8 *)((s8 *)(arg0) + (0x20A))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20A))) | 4);
            }
            if (!(4 & (*(u8 *)((s8 *)(arg0) + (0x20A))))) {
                (*(u8 *)((s8 *)(arg0) + (0x26C))) = 0U;
                if ((temp_r1_51 >> 2) & 1) {
                    temp_r1_280 = (*(void **)((s8 *)(arg0) + (0x204)));
                    (*(s32 *)((s8 *)(temp_r1_280) + (0xC))) = (s32) (*(s32 *)((s8 *)(temp_r1_280) + (0x34)));
                    temp_r1_283 = (*(void **)((s8 *)(arg0) + (0x204)));
                    (*(s32 *)((s8 *)(temp_r1_283) + (0x10))) = (s32) (*(s32 *)((s8 *)(temp_r1_283) + (0x38)));
                    sub_802DF80(arg0, 0);
                }
            } else {
                sub_802DF80(arg0, 0);
                temp_r2_130 = (*(void **)((s8 *)(arg0) + (0x200)));
                if ((*(s32 *)((s8 *)(temp_r2_130) + (0xC))) != (*(s32 *)((s8 *)(temp_r2_130) + (0x34)))) {
                    goto block_30;
                }
                if ((*(s32 *)((s8 *)(temp_r2_130) + (0x10))) == (*(s32 *)((s8 *)(temp_r2_130) + (0x38)))) {
                    temp_r3_141 = (*(s32 *)((s8 *)(temp_r2_130) + (0x14)));
                    if ((temp_r3_141 == (*(s32 *)((s8 *)(temp_r2_130) + (0x3C)))) && ((*(s32 *)((s8 *)(temp_r2_130) + (0x18))) == 0) && (temp_r1_148 = (*(void **)((s8 *)(arg0) + (0x204))), ((*(s32 *)((s8 *)(temp_r1_148) + (0x18))) == 0)) && ((s32) ((*(s32 *)((s8 *)(temp_r1_148) + (0x14))) + 0x1000) >= temp_r3_141)) {
                        temp_r2_162 = (*(u8 *)((s8 *)(arg0) + (0x26C))) + 1;
                        (*(u8 *)((s8 *)(arg0) + (0x26C))) = temp_r2_162;
                        var_r4_164 = 0;
                        temp_r1_169 = 0x1C & (*(u8 *)((s8 *)(arg0) + (0x246)));
                        if (((temp_r1_169 == 8) || (temp_r1_169 == 0xC)) && ((s8) temp_r2_162 == 0xA)) {
                            temp_r0_180 = 8 ^ temp_r1_169;
                            if ((sub_802E688(arg0, (u32) ((0 - temp_r0_180) | temp_r0_180) >> 0x1F) << 0x18) != 0) {
                                var_r4_164 = 1;
                            }
                        }
                        if (var_r4_164 != 0) {
                            sub_802E754(arg0, 0, 1, 1);
                            temp_r0_201 = (*(void **)((s8 *)(arg0) + (0x204)));
                            (*(u16 *)((s8 *)(temp_r0_201) + (0x260))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x100)));
                            (*(u16 *)((s8 *)(temp_r0_201) + (0x23E))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x100)));
                            temp_r1_214 = (*(void **)((s8 *)(arg0) + (0x204)));
                            temp_r0_222 = (u8) (*(u8 *)((s8 *)(arg0) + (0xFB))) >> 3;
                            (*(s8 *)((s8 *)(temp_r1_214) + (0x239))) = (s8) temp_r0_222;
                            (*(s8 *)((s8 *)((*(void **)((s8 *)(temp_r1_214) + (0x294)))) + (0x20))) = (s8) temp_r0_222;
                            temp_r0_228 = (*(void **)((s8 *)(arg0) + (0x204)));
                            (*(s16 *)((s8 *)(temp_r0_228) + (0x244))) = 0;
                            (*(s16 *)((s8 *)(temp_r0_228) + (0x242))) = 0;
                            temp_r2_239 = (*(void **)((s8 *)(arg0) + (0x200)));
                            temp_r1_240 = (*(void **)((s8 *)(arg0) + (0x204)));
                            (*(u8 *)((s8 *)(temp_r1_240) + (0x20C))) = (u8) ((*(u8 *)((s8 *)(temp_r1_240) + (0x20C))) | 0x40 | 0x80);
                            (*(u8 *)((s8 *)(temp_r2_239) + (0x20C))) = (u8) ((*(u8 *)((s8 *)(temp_r2_239) + (0x20C))) | 0x40 | 0x80);
                        }
                    } else {
                        var_r1_261 = arg0 + 0x26C;
                        goto block_31;
                    }
                } else {
block_30:
                    var_r1_261 = arg0 + 0x26C;
block_31:
                    *var_r1_261 = 0;
                }
            }
        }
        if ((s8) (*(u8 *)((s8 *)(arg0) + (0x26C))) == 0) {
            temp_r2_312 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x368)));
            if (M2C_ERROR(/* unknown instruction: ldsb $r1, ($mem_loc_fictive_) */) != -1) {
                (*(u8 *)((s8 *)(temp_r2_312) + (0x11))) = (u8) (*(u8 *)((s8 *)(temp_r2_312) + (0x15)));
                (*(s8 *)((s8 *)((*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x368)))) + (0x15))) = 0xFF;
            }
        }
    }
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802BFB0.s\"");
#else
void sub_802BFB0(void *arg0, s8 arg1) {
    s32 temp_r2_22;
    s32 var_r0_25;
    s32 var_r2_39;
    s32 var_r2_45;
    s32 var_r3_36;
    u32 temp_r1_35;

    (*(s8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (2))) = arg1;
    temp_r2_22 = M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */);
    var_r0_25 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) * temp_r2_22;
    if (var_r0_25 < 0) {
        var_r0_25 += 0xFF;
    }
    temp_r1_35 = (u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x353))) << 0x1A) >> 0x1E;
    var_r3_36 = (s32) (var_r0_25 >> 8) >> temp_r1_35;
    var_r2_39 = temp_r2_22 * M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (var_r2_39 < 0) {
        var_r2_39 += 0xFF;
    }
    var_r2_45 = (s32) (var_r2_39 >> 8) >> temp_r1_35;
    if (var_r3_36 > 0) {
        var_r3_36 = (var_r3_36 + 0x3F) & ~0x3F;
    } else if (var_r3_36 < 0) {
        var_r3_36 = 0 - (((0 - var_r3_36) + 0x3F) & ~0x3F);
    }
    if (var_r2_45 > 0) {
        var_r2_45 = (var_r2_45 + 0x3F) & ~0x3F;
    } else if (var_r2_45 < 0) {
        var_r2_45 = 0 - (((0 - var_r2_45) + 0x3F) & ~0x3F);
    }
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x242))) = (s16) var_r3_36;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x244))) = (s16) var_r2_45;
}
#endif
