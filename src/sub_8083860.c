#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8083860 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8083860.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8083934.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8083A8C.s\"");
#else
s32 sub_8083A8C(void *arg0, s32 arg1) {
    s8 *sp0;
    s8 *sp4;
    s8 *sp8;
    s32 temp_r0_106;
    s32 temp_r0_155;
    s32 temp_r0_176;
    s32 temp_r0_88;
    s32 temp_r1_183;
    s32 temp_r1_34;
    s32 temp_r1_40;
    s32 temp_r2_185;
    s32 var_r0_188;
    s32 var_r0_198;
    s32 var_r0_208;
    s32 var_r0_218;
    s32 var_r0_228;
    s32 var_r0_238;
    s32 var_r4_13;
    s8 *var_r10_76;
    s8 *var_r8_70;
    s8 *var_r9_73;
    u8 temp_r1_91;
    u8 temp_r2_158;
    void *temp_r6_27;

    var_r4_13 = arg1;
    if (0x40 & (*(u8 *)((s8 *)(arg0) + (0x76)))) {
        goto block_44;
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x28))) == 0) {
        goto block_44;
    }
    temp_r6_27 = (*(void **)((s8 *)(arg0) + (8)));
    if (temp_r6_27 == NULL) {
        goto block_44;
    }
    temp_r1_34 = 0xF & (*(u8 *)((s8 *)(temp_r6_27) + (0x1E)));
    switch (temp_r1_34) {                           /* irregular */
    case 1:
        temp_r1_40 = M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
        if (temp_r1_40 == -1) {

        }
        if (temp_r1_40 == -2) {

        }
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r5, ($mem_loc_fictive_) */) < 0) {
            goto block_44;
        }
        var_r8_70 = arg0 + 0x44;
        var_r9_73 = arg0 + 0x45;
        var_r10_76 = arg0 + 0x46;
        sp0 = arg0 + 0x47;
        sp4 = arg0 + 0x48;
        sp8 = arg0 + 0x49;
        if (var_r4_13 == 0) {
            temp_r0_88 = M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */);
            temp_r1_91 = (*(u8 *)((s8 *)(temp_r6_27) + (0x23)));
            if ((temp_r0_88 != temp_r1_91) && (temp_r0_88 != -1)) {
loop_17:
                var_r4_13 += 1;
                temp_r0_106 = M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */);
                if (temp_r0_106 != temp_r1_91) {
                    if (temp_r0_106 == -1) {

                    } else {
                        goto loop_17;
                    }
                }
            }
        }
block_30:
        temp_r1_183 = M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
        temp_r2_185 = M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */);
        var_r0_188 = M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */) * temp_r1_183;
        if (var_r0_188 < 0) {
            var_r0_188 += 0xFF;
        }
        *var_r8_70 = (s8) (var_r0_188 >> 8);
        var_r0_198 = M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */) * temp_r1_183;
        if (var_r0_198 < 0) {
            var_r0_198 += 0xFF;
        }
        *var_r9_73 = (s8) (var_r0_198 >> 8);
        var_r0_208 = M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */) * temp_r2_185;
        if (var_r0_208 < 0) {
            var_r0_208 += 0xFF;
        }
        *var_r10_76 = (s8) (var_r0_208 >> 8);
        var_r0_218 = M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */) * temp_r2_185;
        if (var_r0_218 < 0) {
            var_r0_218 += 0xFF;
        }
        *sp0 = (s8) (var_r0_218 >> 8);
        var_r0_228 = M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */) * temp_r1_183;
        if (var_r0_228 < 0) {
            var_r0_228 += 0xFF;
        }
        *sp4 = (s8) (var_r0_228 >> 8);
        var_r0_238 = M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */) * temp_r1_183;
        if (var_r0_238 < 0) {
            var_r0_238 += 0xFF;
        }
        *sp8 = (s8) (var_r0_238 >> 8);
        if (M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */) == 0) {
            return var_r4_13 + 1;
        }
block_44:
        return -1;
    case 3:
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r5, ($mem_loc_fictive_) */) < 0) {
            goto block_44;
        }
        var_r8_70 = arg0 + 0x44;
        var_r9_73 = arg0 + 0x45;
        var_r10_76 = arg0 + 0x46;
        sp0 = arg0 + 0x47;
        sp4 = arg0 + 0x48;
        sp8 = arg0 + 0x49;
        if (var_r4_13 == 0) {
            temp_r0_155 = M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */);
            temp_r2_158 = (*(u8 *)((s8 *)(temp_r6_27) + (0x23)));
            if ((temp_r0_155 != temp_r2_158) && (temp_r0_155 != -1)) {
loop_28:
                var_r4_13 += 1;
                temp_r0_176 = M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */);
                if (temp_r0_176 != temp_r2_158) {
                    if (temp_r0_176 != -1) {
                        goto loop_28;
                    }
                }
            }
        }
        goto block_30;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8083C74.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8083E1C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
