#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EA358 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA358.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA478.s\"");
#else
u8 script_test_condition(s32, u8, s32, s32);    /* extern */

s32 sub_80EA478(s32 arg0, void *arg1, void *arg2) {
    s32 var_r0_28;
    s32 var_r0_58;
    u8 temp_r2_44;
    u8 temp_r6_24;
    void *temp_r0_16;

    temp_r0_16 = ((*(u8 *)((s8 *)(arg1) + (0xA6))) * 4) + arg1;
    temp_r6_24 = (*(s32 *)((s8 *)(arg2) + (0))) & ~0x18;
    if (temp_r6_24 == 3) {
        var_r0_28 = (*(s32 *)((s8 *)(temp_r0_16) + (0x54))) + 1;
        goto block_4;
    }
    if (temp_r6_24 == 4) {
        var_r0_28 = (*(s32 *)((s8 *)(temp_r0_16) + (0x54))) - 1;
block_4:
        (*(s32 *)((s8 *)(temp_r0_16) + (0x54))) = var_r0_28;
    }
    temp_r2_44 = script_test_condition(arg0, (*(u8 *)((s8 *)(arg2) + (4))), (*(s32 *)((s8 *)(arg2) + (8))), (*(s32 *)((s8 *)(temp_r0_16) + (0x54))));
    if (temp_r2_44 != 0) {
        (*(s32 *)((s8 *)(arg1) + (0))) = (s32) (*(s32 *)((s8 *)(arg2) + (0xC)));
        if (((*(s32 *)((s8 *)(arg2) + (0))) & 0x18) == 0x10) {
            (*(u8 *)((s8 *)(arg1) + (0xA6))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0xA6))) - 1);
            var_r0_58 = 0;
            goto block_14;
        }
        goto block_10;
    }
    if (((*(s32 *)((s8 *)(arg2) + (0))) & 0x18) == 0x18) {
        (*(u8 *)((s8 *)(arg1) + (0xA6))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0xA6))) - 1);
        (*(s32 *)((s8 *)(temp_r0_16) + (0x54))) = (s32) temp_r2_44;
    } else {
block_10:
        if (temp_r6_24 == 1) {
            var_r0_58 = (*(s32 *)((s8 *)(temp_r0_16) + (0x54))) + 1;
            goto block_14;
        }
        if (temp_r6_24 == 2) {
            var_r0_58 = (*(s32 *)((s8 *)(temp_r0_16) + (0x54))) - 1;
block_14:
            (*(s32 *)((s8 *)(temp_r0_16) + (0x54))) = var_r0_58;
        }
    }
    return 1;
}
#endif
