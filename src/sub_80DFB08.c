#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DFB08 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DFB08.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DFBEC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E01C4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E02C0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E0354.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E045C.s\"");
#else
void sub_80E045C(s32 arg0, s32 arg1, s32 arg2) {
    s32 sp0;
    s32 var_r0_110;
    s32 var_r0_120;
    s32 var_r0_128;
    s32 var_r0_46;
    s32 var_r0_56;
    s32 var_r0_64;
    s32 var_r0_80;
    s32 var_r0_90;
    s32 var_r0_98;
    s32 var_r4_143;
    s32 var_r5_144;
    u8 temp_r5_31;
    u8 var_r4_38;
    void *temp_r1_106;
    void *temp_r1_25;
    void *temp_r3_15;
    void *var_r2_27;
    void *var_r3_37;
    void *var_r8_151;

    temp_r3_15 = *(void **)0x03000FD8;
    if ((*(s32 *)((s8 *)(temp_r3_15) + (0x260))) == 0) {
        return;
    }
    temp_r1_25 = *(void **)0x03000FDC;
    var_r2_27 = temp_r1_25 + 0x52F0;
    temp_r5_31 = (*(u8 *)((s8 *)(temp_r3_15) + (0x270)));
    if (temp_r5_31 != 0) {
        var_r3_37 = var_r2_27;
        var_r4_38 = temp_r5_31;
        if (1 & temp_r5_31) {
            var_r0_46 = arg0 * (*(s32 *)((s8 *)(temp_r1_25) + (0x52F0)));
            if (var_r0_46 < 0) {
                var_r0_46 += 0xFF;
            }
            (*(s32 *)((s8 *)(temp_r1_25) + (0x52F0))) = (s32) (var_r0_46 >> 8);
            var_r0_56 = arg1 * (*(s32 *)((s8 *)(var_r2_27) + (4)));
            if (var_r0_56 < 0) {
                var_r0_56 += 0xFF;
            }
            (*(s32 *)((s8 *)(var_r2_27) + (4))) = (s32) (var_r0_56 >> 8);
            var_r0_64 = (*(s32 *)((s8 *)(var_r2_27) + (8))) * arg2;
            if (var_r0_64 < 0) {
                var_r0_64 += 0xFF;
            }
            (*(s32 *)((s8 *)(var_r2_27) + (8))) = (s32) (var_r0_64 >> 8);
            var_r3_37 = temp_r1_25 + 0x52FC;
            var_r4_38 = temp_r5_31 - 1;
            if (var_r4_38 != 0) {
                goto loop_11;
            }
        } else {
            do {
loop_11:
                var_r0_80 = arg0 * (*(s32 *)((s8 *)(var_r3_37) + (0)));
                if (var_r0_80 < 0) {
                    var_r0_80 += 0xFF;
                }
                (*(s32 *)((s8 *)(var_r3_37) + (0))) = (s32) (var_r0_80 >> 8);
                var_r0_90 = arg1 * (*(s32 *)((s8 *)(var_r3_37) + (4)));
                if (var_r0_90 < 0) {
                    var_r0_90 += 0xFF;
                }
                (*(s32 *)((s8 *)(var_r3_37) + (4))) = (s32) (var_r0_90 >> 8);
                var_r0_98 = (*(s32 *)((s8 *)(var_r3_37) + (8))) * arg2;
                if (var_r0_98 < 0) {
                    var_r0_98 += 0xFF;
                }
                (*(s32 *)((s8 *)(var_r3_37) + (8))) = (s32) (var_r0_98 >> 8);
                temp_r1_106 = var_r3_37 + 0xC;
                var_r0_110 = arg0 * (*(s32 *)((s8 *)(var_r3_37) + (0xC)));
                if (var_r0_110 < 0) {
                    var_r0_110 += 0xFF;
                }
                (*(s32 *)((s8 *)(var_r3_37) + (0xC))) = (s32) (var_r0_110 >> 8);
                var_r0_120 = arg1 * (*(s32 *)((s8 *)(temp_r1_106) + (4)));
                if (var_r0_120 < 0) {
                    var_r0_120 += 0xFF;
                }
                (*(s32 *)((s8 *)(temp_r1_106) + (4))) = (s32) (var_r0_120 >> 8);
                var_r0_128 = (*(s32 *)((s8 *)(temp_r1_106) + (8))) * arg2;
                if (var_r0_128 < 0) {
                    var_r0_128 += 0xFF;
                }
                (*(s32 *)((s8 *)(temp_r1_106) + (8))) = (s32) (var_r0_128 >> 8);
                var_r3_37 += 0x18;
                var_r4_38 -= 2;
            } while (var_r4_38 != 0);
        }
    }
    if ((s32) (arg0 * arg2) < 0) {
        var_r4_143 = 0;
        var_r5_144 = temp_r5_31 - 1;
        if (var_r5_144 > 0) {
            var_r8_151 = (var_r5_144 * 0xC) + var_r2_27;
            do {
                (*(s32 *)((s8 *)(&sp0) + (0))) = (s32) (*(s32 *)((s8 *)(var_r2_27) + (0)));
                (*(s32 *)((s8 *)(&sp0) + (4))) = (s32) (*(s32 *)((s8 *)(var_r2_27) + (4)));
                (*(s32 *)((s8 *)(&sp0) + (8))) = (s32) (*(s32 *)((s8 *)(var_r2_27) + (8)));
                (*(s32 *)((s8 *)(var_r2_27) + (0))) = (s32) (*(s32 *)((s8 *)(var_r8_151) + (0)));
                (*(s32 *)((s8 *)(var_r2_27) + (4))) = (s32) (*(s32 *)((s8 *)(var_r8_151) + (4)));
                (*(s32 *)((s8 *)(var_r2_27) + (8))) = (s32) (*(s32 *)((s8 *)(var_r8_151) + (8)));
                (*(s32 *)((s8 *)(var_r8_151) + (0))) = (s32) (*(s32 *)((s8 *)(&sp0) + (0)));
                (*(s32 *)((s8 *)(var_r8_151) + (4))) = (s32) (*(s32 *)((s8 *)(&sp0) + (4)));
                (*(s32 *)((s8 *)(var_r8_151) + (8))) = (s32) (*(s32 *)((s8 *)(&sp0) + (8)));
                var_r2_27 += 0xC;
                var_r4_143 += 1;
                var_r8_151 -= 0xC;
                var_r5_144 -= 1;
            } while (var_r4_143 < var_r5_144);
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E05B0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E0730.s\"");
#else
void sub_80E0730(s32 arg0) {
    s32 temp_r1_118;
    s32 temp_r1_56;
    s32 temp_r1_90;
    s32 temp_r3_119;
    s32 temp_r3_57;
    s32 temp_r3_91;
    s32 temp_r6_47;
    s32 temp_r7_38;
    s32 var_r0_108;
    s32 var_r0_124;
    s32 var_r0_135;
    s32 var_r0_33;
    s32 var_r0_42;
    s32 var_r0_62;
    s32 var_r0_74;
    s32 var_r0_96;
    u8 temp_r3_26;
    u8 var_r5_51;
    void *temp_r0_19;
    void *temp_r1_11;
    void *temp_r4_117;
    void *temp_r4_22;
    void *var_r12_50;

    temp_r1_11 = *(void **)0x03000FD8;
    if ((*(s32 *)((s8 *)(temp_r1_11) + (0x260))) != 0) {
        temp_r0_19 = *(void **)0x03000FDC;
        temp_r4_22 = temp_r0_19 + 0x52F0;
        temp_r3_26 = (*(u8 *)((s8 *)(temp_r1_11) + (0x270)));
        var_r0_33 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
        if (var_r0_33 < 0) {
            var_r0_33 += 0x3F;
        }
        temp_r7_38 = var_r0_33 >> 6;
        var_r0_42 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
        if (var_r0_42 < 0) {
            var_r0_42 += 0x3F;
        }
        temp_r6_47 = var_r0_42 >> 6;
        if (temp_r3_26 != 0) {
            var_r12_50 = temp_r4_22;
            var_r5_51 = temp_r3_26;
            if (1 & var_r5_51) {
                temp_r1_56 = (*(s32 *)((s8 *)(temp_r4_22) + (8)));
                temp_r3_57 = (*(s32 *)((s8 *)(temp_r0_19) + (0x52F0)));
                var_r0_62 = (temp_r1_56 * temp_r7_38) - (temp_r3_57 * temp_r6_47);
                if (var_r0_62 < 0) {
                    var_r0_62 += 0xFF;
                }
                (*(s32 *)((s8 *)(var_r12_50) + (8))) = (s32) (var_r0_62 >> 8);
                var_r0_74 = (temp_r3_57 * temp_r7_38) + (temp_r1_56 * temp_r6_47);
                if (var_r0_74 < 0) {
                    var_r0_74 += 0xFF;
                }
                (*(s32 *)((s8 *)(temp_r0_19) + (0x52F0))) = (s32) (var_r0_74 >> 8);
                var_r12_50 = temp_r0_19 + 0x52FC;
                var_r5_51 -= 1;
                if (var_r5_51 != 0) {
                    goto loop_12;
                }
            } else {
                do {
loop_12:
                    temp_r1_90 = (*(s32 *)((s8 *)(var_r12_50) + (8)));
                    temp_r3_91 = (*(s32 *)((s8 *)(var_r12_50) + (0)));
                    var_r0_96 = (temp_r1_90 * temp_r7_38) - (temp_r3_91 * temp_r6_47);
                    if (var_r0_96 < 0) {
                        var_r0_96 += 0xFF;
                    }
                    (*(s32 *)((s8 *)(var_r12_50) + (8))) = (s32) (var_r0_96 >> 8);
                    var_r0_108 = (temp_r3_91 * temp_r7_38) + (temp_r1_90 * temp_r6_47);
                    if (var_r0_108 < 0) {
                        var_r0_108 += 0xFF;
                    }
                    (*(s32 *)((s8 *)(var_r12_50) + (0))) = (s32) (var_r0_108 >> 8);
                    temp_r4_117 = var_r12_50 + 0xC;
                    temp_r1_118 = (*(s32 *)((s8 *)(temp_r4_117) + (8)));
                    temp_r3_119 = (*(s32 *)((s8 *)(var_r12_50) + (0xC)));
                    var_r0_124 = (temp_r1_118 * temp_r7_38) - (temp_r3_119 * temp_r6_47);
                    if (var_r0_124 < 0) {
                        var_r0_124 += 0xFF;
                    }
                    (*(s32 *)((s8 *)(temp_r4_117) + (8))) = (s32) (var_r0_124 >> 8);
                    var_r0_135 = (temp_r3_119 * temp_r7_38) + (temp_r1_118 * temp_r6_47);
                    if (var_r0_135 < 0) {
                        var_r0_135 += 0xFF;
                    }
                    (*(s32 *)((s8 *)(var_r12_50) + (0xC))) = (s32) (var_r0_135 >> 8);
                    var_r12_50 += 0x18;
                    var_r5_51 -= 2;
                } while (var_r5_51 != 0);
            }
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E085C.s\"");
#else
void sub_80E085C(s32 arg0) {
    s32 sp0;
    s32 temp_r0_44;
    s32 temp_r0_54;
    s32 temp_r1_125;
    s32 temp_r1_66;
    s32 temp_r1_99;
    s32 temp_r4_124;
    s32 temp_r4_65;
    s32 temp_r4_98;
    s32 var_r0_104;
    s32 var_r0_115;
    s32 var_r0_130;
    s32 var_r0_141;
    s32 var_r0_39;
    s32 var_r0_49;
    s32 var_r0_71;
    s32 var_r0_83;
    s32 var_r10_159;
    s32 var_r5_156;
    u8 temp_r0_31;
    u8 var_r5_60;
    void *temp_r1_14;
    void *temp_r4_26;
    void *temp_r6_123;
    void *temp_r6_24;
    void *var_r2_166;
    void *var_r3_167;
    void *var_r3_59;

    temp_r1_14 = *(void **)0x03000FD8;
    if ((*(s32 *)((s8 *)(temp_r1_14) + (0x260))) == 0) {
        return;
    }
    temp_r6_24 = *(void **)0x03000FDC;
    temp_r4_26 = temp_r6_24 + 0x52F0;
    temp_r0_31 = (*(u8 *)((s8 *)(temp_r1_14) + (0x270)));
    var_r0_39 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (var_r0_39 < 0) {
        var_r0_39 += 0x3F;
    }
    temp_r0_44 = var_r0_39 >> 6;
    var_r0_49 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (var_r0_49 < 0) {
        var_r0_49 += 0x3F;
    }
    temp_r0_54 = var_r0_49 >> 6;
    if ((s32) temp_r0_31 > 0) {
        var_r3_59 = temp_r4_26;
        var_r5_60 = temp_r0_31;
        if (1 & temp_r0_31) {
            temp_r4_65 = (*(s32 *)((s8 *)(temp_r6_24) + (0x52F0)));
            temp_r1_66 = (*(s32 *)((s8 *)(var_r3_59) + (4)));
            var_r0_71 = (temp_r0_44 * temp_r4_65) - (temp_r0_54 * temp_r1_66);
            if (var_r0_71 < 0) {
                var_r0_71 += 0xFF;
            }
            (*(s32 *)((s8 *)(temp_r6_24) + (0x52F0))) = (s32) (var_r0_71 >> 8);
            var_r0_83 = (temp_r0_44 * temp_r1_66) + (temp_r0_54 * temp_r4_65);
            if (var_r0_83 < 0) {
                var_r0_83 += 0xFF;
            }
            (*(s32 *)((s8 *)(temp_r4_26) + (4))) = (s32) (var_r0_83 >> 8);
            var_r3_59 = temp_r6_24 + 0x52FC;
            var_r5_60 = temp_r0_31 - 1;
            if (var_r5_60 != 0) {
                goto loop_13;
            }
        } else {
            do {
loop_13:
                temp_r4_98 = (*(s32 *)((s8 *)(var_r3_59) + (0)));
                temp_r1_99 = (*(s32 *)((s8 *)(var_r3_59) + (4)));
                var_r0_104 = (temp_r0_44 * temp_r4_98) - (temp_r0_54 * temp_r1_99);
                if (var_r0_104 < 0) {
                    var_r0_104 += 0xFF;
                }
                (*(s32 *)((s8 *)(var_r3_59) + (0))) = (s32) (var_r0_104 >> 8);
                var_r0_115 = (temp_r0_44 * temp_r1_99) + (temp_r0_54 * temp_r4_98);
                if (var_r0_115 < 0) {
                    var_r0_115 += 0xFF;
                }
                (*(s32 *)((s8 *)(var_r3_59) + (4))) = (s32) (var_r0_115 >> 8);
                temp_r6_123 = var_r3_59 + 0xC;
                temp_r4_124 = (*(s32 *)((s8 *)(var_r3_59) + (0xC)));
                temp_r1_125 = (*(s32 *)((s8 *)(temp_r6_123) + (4)));
                var_r0_130 = (temp_r0_44 * temp_r4_124) - (temp_r0_54 * temp_r1_125);
                if (var_r0_130 < 0) {
                    var_r0_130 += 0xFF;
                }
                (*(s32 *)((s8 *)(var_r3_59) + (0xC))) = (s32) (var_r0_130 >> 8);
                var_r0_141 = (temp_r0_44 * temp_r1_125) + (temp_r0_54 * temp_r4_124);
                if (var_r0_141 < 0) {
                    var_r0_141 += 0xFF;
                }
                (*(s32 *)((s8 *)(temp_r6_123) + (4))) = (s32) (var_r0_141 >> 8);
                var_r3_59 += 0x18;
                var_r5_60 -= 2;
            } while (var_r5_60 != 0);
        }
    }
    if (temp_r0_44 < 0) {
        var_r5_156 = 0;
        var_r10_159 = temp_r0_31 - 1;
        if (var_r10_159 > 0) {
            var_r2_166 = temp_r4_26;
            var_r3_167 = (var_r10_159 * 0xC) + var_r2_166;
            do {
                (*(s32 *)((s8 *)(&sp0) + (0))) = (s32) (*(s32 *)((s8 *)(var_r2_166) + (0)));
                (*(s32 *)((s8 *)(&sp0) + (4))) = (s32) (*(s32 *)((s8 *)(var_r2_166) + (4)));
                (*(s32 *)((s8 *)(&sp0) + (8))) = (s32) (*(s32 *)((s8 *)(var_r2_166) + (8)));
                (*(s32 *)((s8 *)(var_r2_166) + (0))) = (s32) (*(s32 *)((s8 *)(var_r3_167) + (0)));
                (*(s32 *)((s8 *)(var_r2_166) + (4))) = (s32) (*(s32 *)((s8 *)(var_r3_167) + (4)));
                (*(s32 *)((s8 *)(var_r2_166) + (8))) = (s32) (*(s32 *)((s8 *)(var_r3_167) + (8)));
                (*(s32 *)((s8 *)(var_r3_167) + (0))) = (s32) (*(s32 *)((s8 *)(&sp0) + (0)));
                (*(s32 *)((s8 *)(var_r3_167) + (4))) = (s32) (*(s32 *)((s8 *)(&sp0) + (4)));
                (*(s32 *)((s8 *)(var_r3_167) + (8))) = (s32) (*(s32 *)((s8 *)(&sp0) + (8)));
                var_r2_166 += 0xC;
                var_r5_156 += 1;
                var_r3_167 -= 0xC;
                var_r10_159 -= 1;
            } while (var_r5_156 < var_r10_159);
        }
    }
}
#endif
