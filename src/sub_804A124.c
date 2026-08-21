#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804A124 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804A124.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804A4C8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804A5D4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804B028.s\"");
#else
s32 sub_804B028(void *arg0, void *arg1) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    u8 *spC;
    s32 sp10;
    s32 temp_r0_89;
    s32 temp_r1_119;
    s32 temp_r1_133;
    s32 temp_r1_169;
    s32 temp_r1_234;
    s32 temp_r1_61;
    s32 temp_r1_94;
    s32 temp_r2_207;
    s32 temp_r2_293;
    s32 temp_r2_66;
    s32 temp_r3_196;
    s32 temp_r3_62;
    s32 temp_r6_209;
    s32 temp_r7_199;
    s32 var_r0_138;
    s32 var_r2_118;
    s32 var_r3_100;
    s32 var_r4_71;
    u16 temp_r0_45;
    u16 temp_r2_55;
    u16 temp_r4_53;
    u32 temp_r0_217;
    u8 temp_r2_17;
    u8 var_r0_222;
    u8 var_r5_259;

    temp_r2_17 = (*(u8 *)((s8 *)(arg1) + (0x20C)));
    if (!(1 & temp_r2_17)) {
        goto block_53;
    }
    if (0x20 & (*(u8 *)((s8 *)(arg1) + (0x216)))) {
        goto block_53;
    }
    if (!(0x80 & temp_r2_17)) {
        goto block_53;
    }
    temp_r0_45 = (*(u16 *)((s8 *)(arg0) + (0x276)));
    sp0 = (s32) (*(u16 *)((s8 *)(arg0) + (0x274)));
    temp_r4_53 = (*(u16 *)((s8 *)(arg1) + (0x272)));
    temp_r2_55 = (*(u16 *)((s8 *)(arg1) + (0x276)));
    sp10 = (s32) (*(u16 *)((s8 *)(arg1) + (0x274)));
    temp_r1_61 = (*(s32 *)((s8 *)(arg1) + (0xC)));
    temp_r3_62 = temp_r1_61 - (temp_r4_53 >> 1);
    temp_r2_66 = (*(s32 *)((s8 *)(arg0) + (0x284)));
    sp8 = temp_r1_61;
    if (temp_r3_62 < temp_r2_66) {
        var_r4_71 = (temp_r3_62 + temp_r4_53) - temp_r2_66;
    } else {
        var_r4_71 = (temp_r2_66 + (*(u16 *)((s8 *)(arg0) + (0x272)))) - temp_r3_62;
    }
    if (var_r4_71 < 0) {
        goto block_53;
    }
    temp_r0_89 = (*(s32 *)((s8 *)(arg1) + (0x10))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    temp_r1_94 = (*(s32 *)((s8 *)(arg0) + (0x288)));
    if (temp_r0_89 > temp_r1_94) {
        var_r3_100 = temp_r1_94 - (temp_r0_89 - temp_r2_55);
    } else {
        var_r3_100 = temp_r0_89 - (temp_r1_94 - temp_r0_45);
    }
    if (var_r3_100 < 0) {
        goto block_53;
    }
    if ((var_r3_100 == 0) && (var_r4_71 == 0)) {
        goto block_53;
    }
    var_r2_118 = (*(s32 *)((s8 *)(arg1) + (0x14)));
    temp_r1_119 = (*(s32 *)((s8 *)(arg1) + (0x18)));
    if ((temp_r1_119 > 0) || ((temp_r1_119 < 0) && ((s32) (*(s32 *)((s8 *)(arg1) + (0x40))) < 0))) {
        var_r2_118 += temp_r1_119;
    }
    temp_r1_133 = (*(s32 *)((s8 *)(arg0) + (0x28C)));
    if (var_r2_118 <= temp_r1_133) {
        var_r0_138 = (var_r2_118 + sp10) - temp_r1_133;
    } else {
        var_r0_138 = (temp_r1_133 + sp0) - var_r2_118;
    }
    if (var_r0_138 < 0) {
block_53:
        return 0;
    }
    sp4 = 0;
    spC = arg1 + 0x54;
    if (M2C_ERROR(/* unknown instruction: ldsb $r1, ($mem_loc_fictive_) */) != (*(u8 *)((s8 *)(arg1) + (0x54)))) {
        if ((var_r4_71 > 0) && (var_r3_100 > 0)) {
            temp_r1_169 = (*(s32 *)((s8 *)(arg0) + (0x3C))) + (*(s32 *)((s8 *)(arg0) + (0x40)));
            if ((s32) (temp_r1_169 + sp0) <= var_r2_118) {
                sp4 = 1;
            } else if (temp_r1_169 >= (s32) (var_r2_118 + sp10)) {
                goto block_34;
            }
        }
    } else {
block_34:
        sp4 = 2;
    }
    temp_r3_196 = (s32) temp_r0_45 >> 0x1F;
    temp_r7_199 = ((*(s32 *)((s8 *)(arg0) + (0x38))) + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) - ((s32) (temp_r0_45 - temp_r3_196) >> 1);
    temp_r2_207 = ((*(s32 *)((s8 *)(arg1) + (0x38))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */)) - (temp_r2_55 >> 1);
    temp_r6_209 = (*(s32 *)((s8 *)(arg0) + (0x34)));
    if ((temp_r6_209 == (*(s32 *)((s8 *)(arg1) + (0x34)))) && (temp_r7_199 == temp_r2_207)) {
        temp_r0_217 = (u32) ((*(u8 *)((s8 *)(arg0) + (0x24))) << 0x1D) >> 0x1D;
        switch (temp_r0_217) {                      /* irregular */
        case 2:
            var_r0_222 = 8;
            goto block_51;
        case 6:
            var_r0_222 = 2;
            goto block_51;
        }
    } else {
        temp_r1_234 = (s32) (temp_r0_45 + temp_r2_55) >> 1;
        if ((temp_r7_199 < (s32) (temp_r2_207 + temp_r1_234)) && (temp_r7_199 > (s32) (temp_r2_207 - temp_r1_234))) {
            if (temp_r6_209 < sp8) {
                var_r0_222 = 2;
            } else {
                var_r0_222 = 8;
            }
            goto block_51;
        }
        if (temp_r7_199 > (s32) (temp_r0_89 - ((s32) (temp_r0_45 - temp_r3_196) >> 1))) {
            var_r5_259 = 1;
        } else {
            var_r0_222 = 4;
block_51:
            var_r5_259 = var_r0_222;
        }
    }
    (*(u8 *)((s8 *)(arg0) + (0x33C))) = (u8) ((-0x80 & (*(u8 *)((s8 *)(arg0) + (0x33C)))) | (0x7F & *spC));
    temp_r2_293 = sp4 * 0x10;
    (*(u8 *)((s8 *)(arg0) + (0x350))) = (u8) ((((-0x10 & (*(u8 *)((s8 *)(arg0) + (0x350)))) | (var_r5_259 & 0xF)) & ~0x30) | temp_r2_293);
    return var_r5_259 | temp_r2_293;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804B25C.s\"");
#else
s32 sub_804B25C(void *arg0, void *arg1) {
    s32 temp_r1_103;
    s32 temp_r1_117;
    s32 temp_r1_64;
    s32 temp_r1_89;
    s32 temp_r2_60;
    s32 temp_r2_85;
    s32 var_r0_122;
    s32 var_r0_68;
    s32 var_r0_93;
    s32 var_r2_102;
    u16 temp_r3_52;
    u8 temp_r3_15;

    temp_r3_15 = (*(u8 *)((s8 *)(arg1) + (0x20C)));
    if ((1 & temp_r3_15) && !(0x20 & (*(u8 *)((s8 *)(arg1) + (0x216)))) && (0x20 & temp_r3_15) && (M2C_ERROR(/* unknown instruction: ldsb $r1, ($mem_loc_fictive_) */) != (*(u8 *)((s8 *)(arg1) + (0x54))))) {
        temp_r3_52 = (*(u16 *)((s8 *)(arg1) + (0x272)));
        temp_r2_60 = (*(s32 *)((s8 *)(arg1) + (0xC))) - (temp_r3_52 >> 1);
        temp_r1_64 = (*(s32 *)((s8 *)(arg0) + (0x284)));
        if (temp_r2_60 < temp_r1_64) {
            var_r0_68 = (temp_r2_60 + temp_r3_52) - temp_r1_64;
        } else {
            var_r0_68 = (temp_r1_64 + (*(u16 *)((s8 *)(arg0) + (0x272)))) - temp_r2_60;
        }
        if (var_r0_68 > 0) {
            temp_r2_85 = (*(s32 *)((s8 *)(arg1) + (0x10))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
            temp_r1_89 = (*(s32 *)((s8 *)(arg0) + (0x288)));
            if (temp_r2_85 > temp_r1_89) {
                var_r0_93 = temp_r1_89 - (temp_r2_85 - (*(u16 *)((s8 *)(arg1) + (0x276))));
            } else {
                var_r0_93 = temp_r2_85 - (temp_r1_89 - (*(u16 *)((s8 *)(arg0) + (0x276))));
            }
            if (var_r0_93 > 0) {
                var_r2_102 = (*(s32 *)((s8 *)(arg1) + (0x14)));
                temp_r1_103 = (*(s32 *)((s8 *)(arg1) + (0x18)));
                if ((temp_r1_103 > 0) || ((temp_r1_103 < 0) && ((s32) (*(s32 *)((s8 *)(arg1) + (0x40))) < 0))) {
                    var_r2_102 += temp_r1_103;
                }
                temp_r1_117 = (*(s32 *)((s8 *)(arg0) + (0x28C)));
                if (var_r2_102 <= temp_r1_117) {
                    var_r0_122 = (var_r2_102 + (*(u16 *)((s8 *)(arg1) + (0x274)))) - temp_r1_117;
                } else {
                    var_r0_122 = (temp_r1_117 + (*(u16 *)((s8 *)(arg0) + (0x274)))) - var_r2_102;
                }
                if (var_r0_122 > 0) {
                    return 1;
                }
                goto block_21;
            }
            goto block_21;
        }
        goto block_21;
    }
block_21:
    return 0;
}
#endif
