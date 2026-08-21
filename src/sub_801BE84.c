#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801BE84 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801BE84.s\"");
#else
s32 sub_801BE84(s32 arg0, s16 *arg1, s16 *arg2, s16 *arg3, s16 *arg4) {
    s16 temp_r5_86;
    s32 temp_r0_17;
    s32 temp_r0_29;
    s32 temp_r0_45;
    s32 temp_r0_59;
    s32 temp_r2_107;
    s32 temp_r2_135;
    s32 temp_r2_163;
    s32 temp_r2_193;
    s32 temp_r2_224;
    s32 temp_r2_255;
    s32 temp_r2_286;
    s32 temp_r2_320;
    s32 temp_r4_104;
    s32 temp_r4_132;
    s32 temp_r4_159;
    s32 temp_r4_189;
    s32 temp_r4_221;
    s32 temp_r4_252;
    s32 temp_r4_282;
    s32 temp_r4_316;
    u32 temp_r0_115;
    u32 temp_r0_171;
    u32 temp_r0_202;
    u32 temp_r0_264;
    u32 temp_r0_294;
    u32 temp_r0_329;
    u32 temp_r1_232;
    u32 var_r0_144;
    u8 var_r6_14;
    u8 var_r9_15;

    var_r6_14 = 0;
    var_r9_15 = 0;
    temp_r0_17 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (temp_r0_17 < 0) {
        var_r6_14 = 1;
    } else if (temp_r0_17 > 0xEF) {
        var_r6_14 = 2;
    }
    temp_r0_29 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (temp_r0_29 < 0) {
        var_r6_14 |= 4;
    } else if (temp_r0_29 > 0x9F) {
        var_r6_14 |= 8;
    }
    temp_r0_45 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (temp_r0_45 < 0) {
        var_r9_15 = 1;
    } else if (temp_r0_45 > 0xEF) {
        var_r9_15 = 2;
    }
    temp_r0_59 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (temp_r0_59 < 0) {
        var_r9_15 |= 4;
    } else if (temp_r0_59 > 0x9F) {
        var_r9_15 |= 8;
    }
    if ((var_r6_14 == 0) && (var_r9_15 == 0)) {
        goto block_51;
    }
    temp_r5_86 = var_r6_14 & var_r9_15;
    if (temp_r5_86 != 0) {
        goto block_20;
    }
    if (var_r6_14 != 0) {
        if (1 & var_r6_14) {
            temp_r4_104 = M2C_ERROR(/* unknown instruction: ldsh $r4, ($mem_loc_fictive_) */);
            temp_r2_107 = M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */);
            temp_r0_115 = ((s32) ((0 - temp_r2_107) * (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) - temp_r4_104)) / (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) - temp_r2_107)) + temp_r4_104;
            if (temp_r0_115 <= 0x9FU) {
                *arg1 = temp_r5_86;
                *arg2 = (s16) temp_r0_115;
                goto block_35;
            }
            goto block_28;
        }
        if (2 & var_r6_14) {
            temp_r4_132 = M2C_ERROR(/* unknown instruction: ldsh $r4, ($mem_loc_fictive_) */);
            temp_r2_135 = M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */);
            var_r0_144 = ((s32) ((0xEF - temp_r2_135) * (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) - temp_r4_132)) / (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) - temp_r2_135)) + temp_r4_132;
            if (var_r0_144 <= 0x9FU) {
                *arg1 = 0xEF;
                goto block_31;
            }
        }
block_28:
        if (4 & var_r6_14) {
            temp_r4_159 = M2C_ERROR(/* unknown instruction: ldsh $r4, ($mem_loc_fictive_) */);
            temp_r2_163 = M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */);
            temp_r0_171 = ((s32) ((0 - temp_r2_163) * (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) - temp_r4_159)) / (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) - temp_r2_163)) + temp_r4_159;
            if (temp_r0_171 <= 0xEFU) {
                *arg1 = (s16) temp_r0_171;
                var_r0_144 = 0;
block_31:
                *arg2 = (s16) var_r0_144;
                goto block_35;
            }
            goto block_20;
        }
        if (var_r6_14 & 8) {
            temp_r4_189 = M2C_ERROR(/* unknown instruction: ldsh $r4, ($mem_loc_fictive_) */);
            temp_r2_193 = M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */);
            temp_r0_202 = ((s32) ((0x9F - temp_r2_193) * (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) - temp_r4_189)) / (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) - temp_r2_193)) + temp_r4_189;
            if (temp_r0_202 <= 0xEFU) {
                *arg1 = (s16) temp_r0_202;
                *arg2 = 0x9F;
                goto block_35;
            }
        }
        goto block_20;
    }
block_35:
    if (var_r9_15 != 0) {
        if (1 & var_r9_15) {
            temp_r4_221 = M2C_ERROR(/* unknown instruction: ldsh $r4, ($mem_loc_fictive_) */);
            temp_r2_224 = M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */);
            temp_r1_232 = ((s32) ((0 - temp_r2_224) * (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) - temp_r4_221)) / (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) - temp_r2_224)) + temp_r4_221;
            if (temp_r1_232 <= 0x9FU) {
                *arg3 = 0;
                *arg4 = (s16) temp_r1_232;
                goto block_51;
            }
            goto block_42;
        }
        if (2 & var_r9_15) {
            temp_r4_252 = M2C_ERROR(/* unknown instruction: ldsh $r4, ($mem_loc_fictive_) */);
            temp_r2_255 = M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */);
            temp_r0_264 = ((s32) ((0xEF - temp_r2_255) * (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) - temp_r4_252)) / (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) - temp_r2_255)) + temp_r4_252;
            if (temp_r0_264 <= 0x9FU) {
                *arg3 = 0xEF;
                *arg4 = (s16) temp_r0_264;
                goto block_51;
            }
        }
block_42:
        if (4 & var_r9_15) {
            temp_r4_282 = M2C_ERROR(/* unknown instruction: ldsh $r4, ($mem_loc_fictive_) */);
            temp_r2_286 = M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */);
            temp_r0_294 = ((s32) ((0 - temp_r2_286) * (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) - temp_r4_282)) / (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) - temp_r2_286)) + temp_r4_282;
            if (temp_r0_294 > 0xEFU) {
                goto block_20;
            }
            *arg3 = (s16) temp_r0_294;
            *arg4 = 0;
            goto block_51;
        }
        if (!(var_r9_15 & 8)) {
            goto block_20;
        }
        temp_r4_316 = M2C_ERROR(/* unknown instruction: ldsh $r4, ($mem_loc_fictive_) */);
        temp_r2_320 = M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */);
        temp_r0_329 = ((s32) ((0x9F - temp_r2_320) * (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) - temp_r4_316)) / (s32) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) - temp_r2_320)) + temp_r4_316;
        if (temp_r0_329 > 0xEFU) {
block_20:
            return 0;
        }
        *arg3 = (s16) temp_r0_329;
        *arg4 = 0x9F;
        goto block_51;
    }
block_51:
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801D680.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801DA4C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
