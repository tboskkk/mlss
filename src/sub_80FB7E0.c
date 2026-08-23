#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FB7E0 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_80FB7E0(s32 arg0) {
    return *(s32 *)(0x083D7458 + ((u32) (arg0 << 0x10) >> 0xE));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FB7F0.s\"");
#else
u32 sub_80FB7F0(u32 param_1) {
    return ((u32*)0x0851FA00)[(param_1 << 16) >> 14];
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FB800.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FB888.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FB914.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FB99C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FBA28.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FBB50.s\"");
#else
s32 sub_80FBB50(s32 arg0, void *arg1, void *arg2, u16 arg3, s32 arg4) {
    s32 temp_r1_31;
    s32 temp_r1_56;
    s32 temp_r1_86;
    s32 temp_r2_20;
    s32 temp_r2_45;
    s32 temp_r2_72;
    s32 temp_r3_37;
    s32 temp_r3_62;
    s32 temp_r3_92;
    s32 temp_r5_26;
    s32 temp_r5_51;
    s32 temp_r5_78;
    s32 var_r0_21;
    s32 var_r0_32;
    s32 var_r0_46;
    s32 var_r0_57;
    s32 var_r0_73;
    s32 var_r0_87;

    temp_r2_20 = (*(s32 *)((s8 *)(arg1) + (0xC)));
    var_r0_21 = temp_r2_20;
    if (temp_r2_20 < 0) {
        var_r0_21 += 0xFF;
    }
    temp_r5_26 = var_r0_21 >> 8;
    temp_r1_31 = (*(s32 *)((s8 *)(arg2) + (0xC)));
    var_r0_32 = temp_r1_31;
    if (temp_r1_31 < 0) {
        var_r0_32 += 0xFF;
    }
    temp_r3_37 = var_r0_32 >> 8;
    if (((s32) (temp_r5_26 - M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) <= temp_r3_37) && ((s32) (temp_r5_26 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) >= temp_r3_37)) {
        temp_r2_45 = (*(s32 *)((s8 *)(arg1) + (0x10)));
        var_r0_46 = temp_r2_45;
        if (temp_r2_45 < 0) {
            var_r0_46 += 0xFF;
        }
        temp_r5_51 = var_r0_46 >> 8;
        temp_r1_56 = (*(s32 *)((s8 *)(arg2) + (0x10)));
        var_r0_57 = temp_r1_56;
        if (temp_r1_56 < 0) {
            var_r0_57 += 0xFF;
        }
        temp_r3_62 = var_r0_57 >> 8;
        if (((s32) (temp_r5_51 - M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) <= temp_r3_62) && ((s32) (temp_r5_51 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) >= temp_r3_62)) {
            temp_r2_72 = (*(s32 *)((s8 *)(arg1) + (0x14))) + (*(s32 *)((s8 *)(arg1) + (0x18)));
            var_r0_73 = temp_r2_72;
            if (temp_r2_72 < 0) {
                var_r0_73 += 0xFF;
            }
            temp_r5_78 = var_r0_73 >> 8;
            temp_r1_86 = (*(s32 *)((s8 *)(arg2) + (0x14))) + (*(s32 *)((s8 *)(arg2) + (0x18)));
            var_r0_87 = temp_r1_86;
            if (temp_r1_86 < 0) {
                var_r0_87 += 0xFF;
            }
            temp_r3_92 = var_r0_87 >> 8;
            if (((s32) (temp_r5_78 - (s16) (u16) arg4) <= temp_r3_92) && ((s32) (temp_r5_78 + (s16) arg3) >= temp_r3_92)) {
                return 1;
            }
            goto block_19;
        }
        goto block_19;
    }
block_19:
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FBC14.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FBD44.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
