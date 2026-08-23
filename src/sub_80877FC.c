#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80877FC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80877FC.s\"");
#else
s32 sub_80877FC(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_r0_58;
    s32 temp_r1_21;
    s32 temp_r4_20;
    s32 var_r0_13;
    s32 var_r0_23;
    s32 var_r0_31;
    s32 var_r0_39;
    s32 var_r0_51;
    s32 var_r0_61;

    if (arg2 < 0) {
        var_r0_13 = (0x4000 - arg0) * arg1;
        if (var_r0_13 < 0) {
            var_r0_13 += 0x3FFF;
        }
        temp_r4_20 = (var_r0_13 >> 0xE) - arg2;
        temp_r1_21 = arg1 - arg2;
        var_r0_23 = arg2 * arg2;
        if (var_r0_23 < 0) {
            var_r0_23 += 0xFF;
        }
        var_r0_31 = temp_r1_21 * temp_r1_21;
        if (var_r0_31 < 0) {
            var_r0_31 += 0xFF;
        }
        var_r0_39 = temp_r4_20 * temp_r4_20;
        if (var_r0_39 < 0) {
            var_r0_39 += 0xFF;
        }
        return ((arg3 - (var_r0_23 >> 8)) - (var_r0_31 >> 8)) + (var_r0_39 >> 8);
    }
    var_r0_51 = arg1 * arg0;
    if (var_r0_51 < 0) {
        var_r0_51 += 0x3FFF;
    }
    temp_r0_58 = (var_r0_51 >> 0xE) - arg2;
    var_r0_61 = temp_r0_58 * temp_r0_58;
    if (var_r0_61 < 0) {
        var_r0_61 += 0xFF;
    }
    return arg3 - (var_r0_61 >> 8);
}
#endif

s32 sub_8087878(s32 *arg0, s32 *arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 temp_r0_43;
    s32 temp_r0_45;
    s32 temp_r5_39;
    s32 var_r0_60;
    s32 var_r10_16;
    s32 var_r6_14;

    var_r6_14 = arg4;
    var_r10_16 = 0;
    if (var_r6_14 < arg2) {
        if (var_r6_14 < arg3) {
            var_r6_14 = (arg2 + arg3) - var_r6_14;
            var_r10_16 = 1;
        } else {
            var_r6_14 = arg2;
        }
    } else if (var_r6_14 < arg3) {
        var_r6_14 = arg3;
    }
    temp_r5_39 = (*(s32 (**)(s32))0x03001038)((var_r6_14 - arg3) << 8);
    temp_r0_43 = (*(s32 (**)(s32))0x03001038)((var_r6_14 - arg2) << 8);
    temp_r0_45 = temp_r0_43 + temp_r5_39;
    *arg0 = temp_r0_45;
    *arg1 = temp_r0_43;
    if (var_r10_16 != 0) {
        *arg0 = 0 - temp_r0_45;
        *arg1 = 0 - temp_r0_43;
    }
    var_r0_60 = var_r6_14;
    if (var_r0_60 < 0) {
        var_r0_60 += 0xFF;
    }
    return var_r0_60 >> 8;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80878FC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
