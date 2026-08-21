#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8041A2C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8041A2C.s\"");
#else
s32 sub_8046980(void *);                        /* extern */
s32 sub_8046A10(void *);                        /* extern */

void sub_8041A2C(void *arg0, void **arg1, s32 arg2, u8 arg3) {
    void **sp0;
    s32 sp4;
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    u8 *sp18;
    s32 sp1C;
    s32 sp20;
    s32 sp24;
    s32 sp28;
    s32 sp2C;
    s32 sp30;
    s32 sp34;
    s32 sp38;
    u8 *sp3C;
    void *sp40;
    s32 sp44;
    s32 sp48;
    u8 *sp4C;
    s32 sp50;
    s32 temp_r0_255;
    s32 temp_r0_483;
    s32 temp_r0_492;
    s32 temp_r1_265;
    s32 temp_r1_286;
    s32 temp_r1_345;
    s32 temp_r1_494;
    s32 temp_r1_532;
    s32 temp_r1_566;
    s32 temp_r1_586;
    s32 temp_r1_59;
    s32 temp_r1_606;
    s32 temp_r1_623;
    s32 temp_r2_219;
    s32 temp_r2_529;
    s32 temp_r3_220;
    s32 temp_r3_256;
    s32 temp_r5_249;
    s32 temp_r6_495;
    s32 temp_r7_259;
    s32 temp_r7_750;
    s32 var_r0_230;
    s32 var_r0_271;
    s32 var_r0_574;
    s32 var_r0_594;
    s32 var_r0_614;
    s32 var_r1_689;
    s32 var_r2_285;
    s32 var_r3_305;
    s32 var_r7_319;
    s32 var_r9_177;
    s8 *var_r2_687;
    u16 temp_r0_216;
    u16 temp_r2_658;
    u16 temp_r2_721;
    u32 temp_r0_508;
    u32 var_r1_179;
    u32 var_r3_180;
    u8 temp_r1_171;
    u8 temp_r1_194;
    u8 temp_r2_646;
    u8 temp_r2_708;
    u8 temp_r3_166;
    u8 temp_r3_190;
    u8 temp_r3_20;
    u8 var_r0_688;
    void *temp_r2_96;

    sp0 = arg1;
    sp4 = (s32) arg3;
    temp_r3_20 = (*(u8 *)((s8 *)(arg0) + (0x20C)));
    if (!(1 & temp_r3_20)) {
        return;
    }
    if (0x20 & (*(u8 *)((s8 *)(arg0) + (0x216)))) {
        return;
    }
    if ((((u32) (temp_r3_20 << 0x19) >> 0x1F) | ((u32) ((*(u8 *)((s8 *)(arg0) + (0x20D))) << 0x1F) >> 0x1F)) == 0) {
        return;
    }
    sp8 = (*(s32 *)((s8 *)(arg0) + (0xC))) - ((u16) (*(u16 *)((s8 *)(arg0) + (0x272))) >> 1);
    spC = (*(s32 *)((s8 *)(arg0) + (0x10)));
    sp10 = (*(s32 *)((s8 *)(arg0) + (0x14)));
    temp_r1_59 = (*(s32 *)((s8 *)(arg0) + (0x18)));
    if ((temp_r1_59 > 0) || ((temp_r1_59 < 0) && ((s32) (*(s32 *)((s8 *)(arg0) + (0x40))) < 0))) {
        sp10 += temp_r1_59;
    }
    sp14 = 2;
    if (1 & (*(u8 *)((s8 *)(arg0) + (0x20D)))) {
        sp14 = arg2;
    }
    sp3C = arg0 + 0x24;
    if (sp14 == 0) {

    } else {
        sp18 = arg0 + 0x54;
loop_15:
        temp_r2_96 = *sp0;
        if (*sp18 == (*(u8 *)((s8 *)(temp_r2_96) + (0x54)))) {
            goto block_125;
        }
        if ((sp4 != 0) && !(0x20 & (*(u8 *)((s8 *)(temp_r2_96) + (0x210))))) {
            goto block_125;
        }
        if (!(1 & (*(u8 *)((s8 *)(temp_r2_96) + (0x20C))))) {
            goto block_125;
        }
        if ((0x20 & (*(u8 *)((s8 *)(temp_r2_96) + (0x216)))) && ((*(u8 *)((s8 *)(temp_r2_96) + (0x54))) != (s8) (*(u8 *)((s8 *)(arg0) + (0x29))))) {
            goto block_125;
        }
        sp40 = temp_r2_96 + 0x29;
        if (M2C_ERROR(/* unknown instruction: ldsb $r1, ($mem_loc_fictive_) */) == *sp18) {
            goto block_125;
        }
        if (!(0x38 & (*(u8 *)((s8 *)(temp_r2_96) + (0x20E))))) {
            temp_r3_166 = (*(u8 *)((s8 *)(arg0) + (0x20C)));
            temp_r1_171 = (*(u8 *)((s8 *)(temp_r2_96) + (0x20D)));
            var_r9_177 = ((u32) (temp_r1_171 << 0x1E) >> 0x1F) & ((u32) (temp_r3_166 << 0x19) >> 0x1F);
            var_r1_179 = (u32) (temp_r1_171 << 0x1F) >> 0x1F;
            var_r3_180 = temp_r3_166 << 0x1A;
        } else {
            temp_r3_190 = (*(u8 *)((s8 *)(arg0) + (0x20D)));
            temp_r1_194 = (*(u8 *)((s8 *)(temp_r2_96) + (0x20D)));
            var_r9_177 = ((u32) (temp_r1_194 << 0x1E) >> 0x1F) & ((u32) (temp_r3_190 << 0x1F) >> 0x1F);
            var_r1_179 = (u32) (temp_r1_194 << 0x1F) >> 0x1F;
            var_r3_180 = temp_r3_190 << 0x1E;
        }
        sp1C = (var_r3_180 >> 0x1F) & var_r1_179;
        if (var_r9_177 == 0) {
            goto block_125;
        }
        temp_r0_216 = (*(u16 *)((s8 *)(temp_r2_96) + (0x272)));
        sp20 = (s32) temp_r0_216;
        temp_r2_219 = (*(s32 *)((s8 *)(temp_r2_96) + (0xC)));
        temp_r3_220 = temp_r2_219 - (temp_r0_216 >> 1);
        sp28 = (s32) (*(u16 *)((s8 *)(arg0) + (0x272)));
        sp44 = temp_r2_219;
        if (temp_r3_220 < sp8) {
            var_r0_230 = (temp_r3_220 + sp20) - sp8;
        } else {
            var_r0_230 = (sp8 + sp28) - temp_r3_220;
        }
        if (var_r0_230 <= 0) {

        } else {
            temp_r5_249 = M2C_ERROR(/* unknown instruction: ldsh $r5, ($mem_loc_fictive_) */);
            sp24 = (s32) (*(u16 *)((s8 *)(temp_r2_96) + (0x276)));
            temp_r0_255 = (*(s32 *)((s8 *)(temp_r2_96) + (0x10)));
            temp_r3_256 = temp_r0_255 + temp_r5_249;
            temp_r7_259 = M2C_ERROR(/* unknown instruction: ldsh $r7, ($mem_loc_fictive_) */);
            sp2C = (s32) (*(u16 *)((s8 *)(arg0) + (0x276)));
            temp_r1_265 = spC + temp_r7_259;
            sp48 = temp_r0_255;
            if (temp_r3_256 > temp_r1_265) {
                var_r0_271 = temp_r1_265 - (temp_r3_256 - sp24);
            } else {
                var_r0_271 = temp_r3_256 - (temp_r1_265 - sp2C);
            }
            if (var_r0_271 <= 0) {

            } else {
                var_r2_285 = (*(s32 *)((s8 *)(temp_r2_96) + (0x14)));
                temp_r1_286 = (*(s32 *)((s8 *)(temp_r2_96) + (0x18)));
                if ((temp_r1_286 > 0) || ((temp_r1_286 < 0) && ((s32) (*(s32 *)((s8 *)(temp_r2_96) + (0x40))) < 0))) {
                    var_r2_285 += temp_r1_286;
                }
                if (var_r2_285 <= sp10) {
                    var_r3_305 = (var_r2_285 + (*(u16 *)((s8 *)(temp_r2_96) + (0x274)))) - sp10;
                } else {
                    var_r3_305 = (sp10 + (*(u16 *)((s8 *)(arg0) + (0x274)))) - var_r2_285;
                }
                if (var_r3_305 < 0) {

                } else {
                    var_r7_319 = 0;
                    sp30 = 0;
                    sp34 = 0;
                    sp38 = 0;
                    sp4C = temp_r2_96 + 0x54;
                    if (M2C_ERROR(/* unknown instruction: ldsb $r2, ($mem_loc_fictive_) */) == (*(u8 *)((s8 *)(temp_r2_96) + (0x54)))) {
                        sp34 = 2;
                        sp38 = 1;
                    } else {
                        temp_r1_345 = (*(s32 *)((s8 *)(arg0) + (0x3C))) + (*(s32 *)((s8 *)(arg0) + (0x40)));
                        if ((s32) (temp_r1_345 + (*(u16 *)((s8 *)(arg0) + (0x274)))) <= var_r2_285) {
                            sp34 = 1;
                            sp38 = 2;
                        } else if (temp_r1_345 >= (s32) (var_r2_285 + (*(u16 *)((s8 *)(temp_r2_96) + (0x274))))) {
                            sp34 = 2;
                            sp38 = 1;
                        }
                    }
                    if (sp34 == 2) {
                        if (M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */) != *sp4C) {
                            (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) (((*(s32 *)((s8 *)(arg0) + (0x18))) + var_r3_305) & 0xFFFFFF00);
                        }
                        (*(u8 *)((s8 *)(arg0) + (0x238))) = (u8) *sp4C;
                        (*(u8 *)((s8 *)(arg0) + (1))) = (u8) *sp4C;
                        if (8 & (*(u8 *)((s8 *)(arg0) + (0x2B5)))) {
                            sub_8046A10(arg0);
                        } else if ((s32) (*(s32 *)((s8 *)(arg0) + (0x25C))) < 0) {

                        } else {
                            (*(s32 *)((s8 *)(arg0) + (0x25C))) = -1;
                            (*(u8 *)((s8 *)(arg0) + (0x213))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x213))) & ~0x20);
                            (*(s32 *)((s8 *)(arg0) + (0x250))) = -1;
                            (*(s32 *)((s8 *)(arg0) + (0x24C))) = -1;
                            (*(u16 *)((s8 *)(arg0) + (0x23E))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x240)));
                        }
                    } else if (sp34 == 1) {
                        if ((0x180 & (*(u16 *)((s8 *)(arg0) + (0x4C)))) == 0x80) {

                        } else if (M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */) == *sp18) {

                        } else {
                            (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x18))) - var_r3_305);
                            if ((s32) (*(s32 *)((s8 *)(arg0) + (0x25C))) < 0) {

                            } else {
                                temp_r0_483 = (*(s32 *)((s8 *)(arg0) + (0x258)));
                                if (temp_r0_483 <= 0) {

                                } else {
                                    (*(s32 *)((s8 *)(arg0) + (0x258))) = (s32) (0 - temp_r0_483);
                                }
                            }
                        }
                    } else {
                        temp_r0_492 = (*(s32 *)((s8 *)(arg0) + (0x38)));
                        temp_r1_494 = (*(s32 *)((s8 *)(temp_r2_96) + (0x38)));
                        temp_r6_495 = (*(s32 *)((s8 *)(arg0) + (0x34)));
                        sp50 = (*(s32 *)((s8 *)(temp_r2_96) + (0x34)));
                        if ((temp_r6_495 == sp50) && (temp_r0_492 == temp_r1_494)) {
                            temp_r0_508 = (u32) (*sp3C << 0x1D) >> 0x1D;
                            if (temp_r0_508 > 1U) {
                                if (temp_r0_508 <= 2U) {
                                    var_r7_319 = 8;
                                    sp30 = 2;
                                } else {
                                    if (temp_r0_508 > 5U) {
                                        if (temp_r0_508 > 6U) {
                                            goto block_82;
                                        }
                                        goto block_86;
                                    }
                                    goto block_90;
                                }
                            } else {
block_82:
                                var_r7_319 = 1;
                                sp30 = 4;
                            }
                        } else {
                            temp_r2_529 = temp_r0_492 + temp_r7_259;
                            temp_r1_532 = temp_r1_494 + temp_r5_249;
                            if (((s32) (temp_r2_529 - sp2C) < temp_r1_532) && (temp_r2_529 > (s32) (temp_r1_532 - sp24))) {
                                if (temp_r6_495 < sp50) {
block_86:
                                    var_r7_319 = 2;
                                    sp30 = 8;
                                } else {
                                    var_r7_319 = 8;
                                    sp30 = 2;
                                }
                            } else if (temp_r0_492 > temp_r1_494) {
                                var_r7_319 = 1;
                                sp30 = 4;
                            } else {
block_90:
                                var_r7_319 = 4;
                                sp30 = 1;
                            }
                        }
                        switch (var_r7_319) {       /* irregular */
                        case 8:
                            temp_r1_566 = (*(s32 *)((s8 *)(arg0) + (0xC)));
                            if (temp_r1_566 < temp_r6_495) {
                                var_r0_574 = sp44 + ((s32) (sp20 + sp28) >> 1);
                                if (var_r0_574 > temp_r6_495) {
                                    var_r0_574 = temp_r6_495;
                                }
                                if (var_r0_574 > temp_r1_566) {
                                    (*(s32 *)((s8 *)(arg0) + (0xC))) = var_r0_574;
                                }
                            }
                            break;
                        case 2:
                            temp_r1_586 = (*(s32 *)((s8 *)(arg0) + (0xC)));
                            if (temp_r1_586 > temp_r6_495) {
                                var_r0_594 = sp44 - ((s32) (sp20 + sp28) >> 1);
                                if (var_r0_594 < temp_r6_495) {
                                    var_r0_594 = temp_r6_495;
                                }
                                if (var_r0_594 < temp_r1_586) {
                                    (*(s32 *)((s8 *)(arg0) + (0xC))) = var_r0_594;
                                }
                            }
                            break;
                        case 1:
                            temp_r1_606 = (*(s32 *)((s8 *)(arg0) + (0x10)));
                            if (temp_r1_606 < temp_r0_492) {
                                var_r0_614 = sp48 + ((sp2C + temp_r5_249) - temp_r7_259);
                                if (var_r0_614 > temp_r0_492) {
                                    var_r0_614 = temp_r0_492;
                                }
                                if (var_r0_614 > temp_r1_606) {
block_113:
                                    (*(s32 *)((s8 *)(arg0) + (0x10))) = var_r0_614;
                                }
                            }
                            break;
                        default:
                            temp_r1_623 = (*(s32 *)((s8 *)(arg0) + (0x10)));
                            if (temp_r1_623 > temp_r0_492) {
                                var_r0_614 = sp48 + ((temp_r5_249 - sp24) - temp_r7_259);
                                if (var_r0_614 < temp_r0_492) {
                                    var_r0_614 = temp_r0_492;
                                }
                                if (var_r0_614 < temp_r1_623) {
                                    goto block_113;
                                }
                            }
                            break;
                        }
                    }
                    if (var_r9_177 != 0) {
                        temp_r2_646 = *sp3C;
                        *sp3C = (temp_r2_646 & ~0x78) | ((((u32) (temp_r2_646 << 0x19) >> 0x1C) | var_r7_319) * 8);
                        temp_r2_658 = (*(u16 *)((s8 *)(arg0) + (0x24)));
                        (*(u16 *)((s8 *)(arg0) + (0x24))) = (u16) ((temp_r2_658 & 0xFFFFFE7F) | ((((u32) (temp_r2_658 << 0x17) >> 0x1E) | sp34) << 7));
                        if (M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */) == -1) {
                            (*(u8 *)((s8 *)(arg0) + (0))) = (u8) *sp4C;
                        }
                        if (!(0x38 & (*(u8 *)((s8 *)(temp_r2_96) + (0x20E))))) {
                            var_r2_687 = arg0 + 0x25;
                            var_r0_688 = (*(u8 *)((s8 *)(arg0) + (0x25)));
                            var_r1_689 = 2;
                        } else {
                            var_r2_687 = arg0 + 0x25;
                            var_r0_688 = (*(u8 *)((s8 *)(arg0) + (0x25)));
                            var_r1_689 = 4;
                        }
                        *var_r2_687 = var_r0_688 | var_r1_689;
                    }
                    if (sp1C != 0) {
                        temp_r2_708 = (*(u8 *)((s8 *)(temp_r2_96) + (0x24)));
                        (*(u8 *)((s8 *)(temp_r2_96) + (0x24))) = (u8) ((temp_r2_708 & ~0x78) | ((((u32) (temp_r2_708 << 0x19) >> 0x1C) | sp30) * 8));
                        temp_r2_721 = (u16) (*(u8 *)((s8 *)(temp_r2_96) + (0x24)));
                        (*(u8 *)((s8 *)(temp_r2_96) + (0x24))) = (s16) ((temp_r2_721 & 0xFFFFFE7F) | ((((u32) (temp_r2_721 << 0x17) >> 0x1E) | sp38) << 7));
                        if (M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */) == -1) {
                            (*(u8 *)((s8 *)(arg0) + (0))) = (u8) *sp4C;
                        }
                        (*(u8 *)((s8 *)(temp_r2_96) + (0x25))) = (u8) ((*(u8 *)((s8 *)(temp_r2_96) + (0x25))) | 4);
                    }
block_125:
                    temp_r7_750 = sp14 - 1;
                    sp14 = temp_r7_750;
                    sp0 += 4;
                    if (temp_r7_750 != 0) {
                        goto loop_15;
                    }
                }
            }
        }
    }
    if ((0x78 & *sp3C) && (7 & (*(u8 *)((s8 *)(arg0) + (0x2B5)))) && (0x40 & (*(u8 *)((s8 *)(arg0) + (0x2B6))))) {
        sub_8046980(arg0);
        sub_8046A10(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8041FFC.s\"");
#else
#error "TODO: write sub_8041FFC to match asm/nonmatching/sub_8041FFC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8044630.s\"");
#else
#error "TODO: write sub_8044630 to match asm/nonmatching/sub_8044630.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80457E8.s\"");
#else
#error "TODO: write sub_80457E8 to match asm/nonmatching/sub_80457E8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80458B0.s\"");
#else
#error "TODO: write sub_80458B0 to match asm/nonmatching/sub_80458B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80459C0.s\"");
#else
#error "TODO: write sub_80459C0 to match asm/nonmatching/sub_80459C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8045A94.s\"");
#else
#error "TODO: write sub_8045A94 to match asm/nonmatching/sub_8045A94.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8045F04.s\"");
#else
#error "TODO: write sub_8045F04 to match asm/nonmatching/sub_8045F04.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80461B4.s\"");
#else
#error "TODO: write sub_80461B4 to match asm/nonmatching/sub_80461B4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80465D8.s\"");
#else
#error "TODO: write sub_80465D8 to match asm/nonmatching/sub_80465D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8046980.s\"");
#else
#error "TODO: write sub_8046980 to match asm/nonmatching/sub_8046980.s, then delete this #error"
#endif
