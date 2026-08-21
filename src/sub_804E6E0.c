#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804E6E0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804E6E0.s\"");
#else
void sub_804E6E0(void *arg0, void **arg1, s32 arg2) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 sp18;
    u8 *sp1C;
    void **sp20;
    s32 sp24;
    s32 sp28;
    s32 sp2C;
    s32 temp_r0_114;
    s32 temp_r0_87;
    s32 temp_r1_202;
    s32 temp_r2_156;
    s32 temp_r2_455;
    s32 temp_r4_165;
    s32 temp_r5_161;
    s32 temp_r6_167;
    s32 var_r0_123;
    s32 var_r0_142;
    s32 var_r0_27;
    s32 var_r0_299;
    s32 var_r0_98;
    s32 var_r1_138;
    s32 var_r1_88;
    s32 var_r4_181;
    s32 var_r6_180;
    u16 temp_r0_76;
    u16 temp_r0_82;
    u16 temp_r2_73;
    u32 temp_r0_174;
    u8 temp_r1_172;
    u8 temp_r1_225;
    u8 temp_r1_255;
    u8 temp_r1_292;
    u8 temp_r1_313;
    u8 temp_r1_370;
    u8 temp_r2_341;
    u8 temp_r2_353;
    u8 temp_r3_413;
    u8 var_r2_175;
    void **var_r3_13;
    void *temp_r0_365;
    void *temp_r0_402;
    void *temp_r2_411;
    void *temp_r3_442;
    void *temp_r4_386;
    void *var_r7_33;

    var_r3_13 = arg1;
    sp0 = arg2;
    sp4 = (*(s32 *)((s8 *)(arg0) + (8))) - ((u16) (*(u16 *)((s8 *)(arg0) + (0x38))) >> 1);
    sp8 = (*(s32 *)((s8 *)(arg0) + (0xC)));
    spC = (*(s32 *)((s8 *)(arg0) + (0x10))) + (*(s32 *)((s8 *)(arg0) + (0x14)));
    var_r0_27 = 0;
    if (sp0 <= 0) {
        return;
    }
loop_2:
    var_r7_33 = *var_r3_13;
    sp10 = 0;
    sp24 = var_r0_27 + 1;
    sp20 = var_r3_13 + 4;
loop_3:
    sp1C = var_r7_33 + 0x54;
    if ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x48)))) + (0x54))) == (*(u8 *)((s8 *)(var_r7_33) + (0x54)))) {

    } else if (!(1 & (*(u8 *)((s8 *)(var_r7_33) + (0x20C))))) {

    } else if (0x20 & (*(u8 *)((s8 *)(var_r7_33) + (0x216)))) {

    } else {
        temp_r2_73 = (*(u16 *)((s8 *)(var_r7_33) + (0x272)));
        temp_r0_76 = (*(u16 *)((s8 *)(var_r7_33) + (0x276)));
        temp_r0_82 = (*(u16 *)((s8 *)(arg0) + (0x3C)));
        temp_r0_87 = (*(s32 *)((s8 *)(var_r7_33) + (0xC)));
        var_r1_88 = temp_r0_87 - (temp_r2_73 >> 1);
        sp28 = (s32) (*(u16 *)((s8 *)(arg0) + (0x38)));
        sp2C = (s32) temp_r0_82;
        sp18 = temp_r0_87;
        if (var_r1_88 < sp4) {
            var_r0_98 = var_r1_88 + temp_r2_73;
            var_r1_88 = sp4;
        } else {
            var_r0_98 = sp4 + sp28;
        }
        if ((s32) (var_r0_98 - var_r1_88) <= 0) {

        } else {
            temp_r0_114 = (*(s32 *)((s8 *)(var_r7_33) + (0x10)));
            sp14 = temp_r0_114;
            if (temp_r0_114 > sp8) {
                var_r0_123 = sp8 - (temp_r0_114 - temp_r0_76);
            } else {
                var_r0_123 = temp_r0_114 - (sp8 - temp_r0_82);
            }
            if (var_r0_123 <= 0) {

            } else {
                var_r1_138 = (*(s32 *)((s8 *)(var_r7_33) + (0x14))) + (*(s32 *)((s8 *)(var_r7_33) + (0x18)));
                if (var_r1_138 <= spC) {
                    var_r0_142 = var_r1_138 + (*(u16 *)((s8 *)(var_r7_33) + (0x274)));
                    var_r1_138 = spC;
                } else {
                    var_r0_142 = spC + (*(u16 *)((s8 *)(arg0) + (0x3A)));
                }
                if ((s32) (var_r0_142 - var_r1_138) <= 0) {

                } else {
                    temp_r2_156 = (s32) temp_r0_82 >> 0x1F;
                    temp_r5_161 = (*(s32 *)((s8 *)(arg0) + (0x1C))) - ((s32) (temp_r0_82 - temp_r2_156) >> 1);
                    temp_r4_165 = (*(s32 *)((s8 *)(var_r7_33) + (0x38))) - (temp_r0_76 >> 1);
                    temp_r6_167 = (*(s32 *)((s8 *)(arg0) + (0x18)));
                    if ((temp_r6_167 == (*(s32 *)((s8 *)(var_r7_33) + (0x34)))) && (temp_r5_161 == temp_r4_165)) {
                        temp_r1_172 = (*(u8 *)((s8 *)(arg0) + (1)));
                        temp_r0_174 = (u32) (temp_r1_172 << 0x1A) >> 0x1D;
                        var_r2_175 = temp_r1_172;
                        if (temp_r0_174 > 1U) {
                            if (temp_r0_174 <= 2U) {
                                var_r6_180 = 8;
                                var_r4_181 = 2;
                            } else if (temp_r0_174 <= 5U) {
                                var_r6_180 = 4;
                                var_r4_181 = 1;
                            } else if (temp_r0_174 <= 6U) {
                                var_r6_180 = 2;
                                var_r4_181 = 8;
                            } else {
                                goto block_33;
                            }
                        } else {
block_33:
                            var_r6_180 = 1;
                            var_r4_181 = 4;
                        }
                        goto block_52;
                    }
                    temp_r1_202 = (s32) (temp_r0_82 + temp_r0_76) >> 1;
                    if ((temp_r5_161 < (s32) (temp_r4_165 + temp_r1_202)) && (temp_r5_161 > (s32) (temp_r4_165 - temp_r1_202))) {
                        if (temp_r6_167 < sp18) {
                            var_r6_180 = 2;
                            var_r4_181 = 8;
                            if (!(0x20 & (*(u8 *)((s8 *)(var_r7_33) + (0x20C))))) {

                            } else {
                                temp_r1_225 = (*(u8 *)((s8 *)(arg0) + (1)));
                                var_r2_175 = temp_r1_225;
                                if (0x80 & temp_r1_225) {
                                    (*(s32 *)((s8 *)(arg0) + (8))) = (s32) (sp18 - ((s32) (sp28 + (*(u16 *)((s8 *)(var_r7_33) + (0x272)))) >> 1));
                                }
                                goto block_52;
                            }
                        } else {
                            var_r6_180 = 8;
                            var_r4_181 = 2;
                            if (0x20 & (*(u8 *)((s8 *)(var_r7_33) + (0x20C)))) {
                                temp_r1_255 = (*(u8 *)((s8 *)(arg0) + (1)));
                                var_r2_175 = temp_r1_255;
                                if (0x80 & temp_r1_255) {
                                    (*(s32 *)((s8 *)(arg0) + (8))) = (s32) (sp18 + ((s32) (sp28 + (*(u16 *)((s8 *)(var_r7_33) + (0x272)))) >> 1));
                                }
                                goto block_52;
                            }
                        }
                    } else if (temp_r5_161 > (s32) (sp14 - ((s32) (temp_r0_82 - temp_r2_156) >> 1))) {
                        var_r6_180 = 1;
                        var_r4_181 = 4;
                        if (0x20 & (*(u8 *)((s8 *)(var_r7_33) + (0x20C)))) {
                            temp_r1_292 = (*(u8 *)((s8 *)(arg0) + (1)));
                            var_r2_175 = temp_r1_292;
                            if (0x80 & temp_r1_292) {
                                var_r0_299 = sp2C + temp_r0_114;
                                goto block_51;
                            }
                            goto block_52;
                        }
                    } else {
                        var_r6_180 = 4;
                        var_r4_181 = 1;
                        if (0x20 & (*(u8 *)((s8 *)(var_r7_33) + (0x20C)))) {
                            temp_r1_313 = (*(u8 *)((s8 *)(arg0) + (1)));
                            var_r2_175 = temp_r1_313;
                            if (0x80 & temp_r1_313) {
                                var_r0_299 = temp_r0_114 - (*(u16 *)((s8 *)(var_r7_33) + (0x276)));
block_51:
                                (*(s32 *)((s8 *)(arg0) + (0xC))) = var_r0_299;
                            }
block_52:
                            if ((0x20 & (*(u8 *)((s8 *)(var_r7_33) + (0x20C)))) && (0x80 & var_r2_175)) {
                                temp_r2_341 = (*(u8 *)((s8 *)(arg0) + (2)));
                                (*(u8 *)((s8 *)(arg0) + (2))) = (u8) ((-0x10 & temp_r2_341) | (((u32) (temp_r2_341 << 0x1C) >> 0x1C) | var_r6_180));
                                temp_r2_353 = (*(u8 *)((s8 *)(var_r7_33) + (0x24)));
                                (*(u8 *)((s8 *)(var_r7_33) + (0x24))) = (u8) ((-0x79 & temp_r2_353) | ((((u32) (temp_r2_353 << 0x19) >> 0x1C) | var_r4_181) * 8));
                            }
                        }
                    }
                    temp_r0_365 = (*(void **)((s8 *)(arg0) + (0x48)));
                    temp_r1_370 = (*(u8 *)((s8 *)(temp_r0_365) + (0x350)));
                    if (!(0xF & temp_r1_370) || !(0x40 & temp_r1_370)) {
                        (*(u8 *)((s8 *)(temp_r0_365) + (0x350))) = (u8) (0x40 | temp_r1_370);
                        temp_r4_386 = (*(void **)((s8 *)(arg0) + (0x48)));
                        (*(u8 *)((s8 *)(temp_r4_386) + (0x33C))) = (u8) ((-0x80 & (*(u8 *)((s8 *)(temp_r4_386) + (0x33C)))) | (0x7F & *sp1C));
                        temp_r0_402 = (*(void **)((s8 *)(arg0) + (0x48)));
                        (*(u8 *)((s8 *)(temp_r0_402) + (0x33C))) = (u8) ((0x7F & (*(u8 *)((s8 *)(temp_r0_402) + (0x33C)))) | (sp10 << 7));
                        temp_r2_411 = (*(void **)((s8 *)(arg0) + (0x48)));
                        temp_r3_413 = (*(u8 *)((s8 *)(temp_r2_411) + (0x350)));
                        (*(u8 *)((s8 *)(temp_r2_411) + (0x350))) = (u8) ((-0x10 & temp_r3_413) | ((((u32) (temp_r3_413 << 0x1C) >> 0x1C) | var_r6_180) & 0xF));
                        (*(s8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x48)))) + (0x342))) = (s8) ((u32) ((*(u8 *)((s8 *)(arg0) + (0))) << 0x1A) >> 0x1D);
                    }
                }
            }
        }
    }
    if ((0x38 & (*(u8 *)((s8 *)(var_r7_33) + (0x20E)))) == 0x18) {
        temp_r3_442 = (*(void **)((s8 *)(var_r7_33) + (0x344)));
        if ((temp_r3_442 != NULL) && (1 & (*(u8 *)((s8 *)(temp_r3_442) + (0x20C))))) {
            var_r7_33 = temp_r3_442;
            temp_r2_455 = sp10 + 1;
            sp10 = temp_r2_455;
            if (temp_r2_455 <= 1) {
                goto loop_3;
            }
        }
    }
    var_r0_27 = sp24;
    var_r3_13 = sp20;
    if (var_r0_27 < sp0) {
        goto loop_2;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804EA68.s\"");
#else
#error "TODO: write sub_804EA68 to match asm/nonmatching/sub_804EA68.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804F904.s\"");
#else
#error "TODO: write sub_804F904 to match asm/nonmatching/sub_804F904.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FA30.s\"");
#else
#error "TODO: write sub_804FA30 to match asm/nonmatching/sub_804FA30.s, then delete this #error"
#endif
