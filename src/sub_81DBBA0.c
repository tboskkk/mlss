#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DBBA0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DBBA0.s\"");
#else
void sub_81DBBA0(u32 *arg0, void *arg1) {
    s32 temp_r4_24;
    s32 var_r0_32;
    s32 var_r0_52;
    u32 temp_r0_8;
    u32 temp_r1_12;
    u32 var_r2_10;

    temp_r0_8 = *arg0;
    var_r2_10 = (u32) (temp_r0_8 << 9) >> 9;
    temp_r1_12 = (u32) (temp_r0_8 * 2) >> 0x18;
    (*(u32 *)((s8 *)(arg1) + (4))) = (u32) (temp_r0_8 >> 0x1F);
    if (temp_r1_12 == 0) {
        if (var_r2_10 == 0) {
            (*(s32 *)((s8 *)(arg1) + (0))) = 2;
            return;
        }
        temp_r4_24 = temp_r1_12 - 0x7E;
        (*(s32 *)((s8 *)(arg1) + (8))) = temp_r4_24;
        var_r2_10 <<= 7;
        (*(s32 *)((s8 *)(arg1) + (0))) = 3;
        if (var_r2_10 <= 0x3FFFFFFFU) {
            var_r0_32 = temp_r4_24;
            do {
                var_r2_10 *= 2;
                var_r0_32 -= 1;
            } while (var_r2_10 <= 0x3FFFFFFFU);
            (*(s32 *)((s8 *)(arg1) + (8))) = var_r0_32;
        }
        goto block_13;
    }
    if (temp_r1_12 == 0xFF) {
        if (var_r2_10 == 0) {
            (*(s32 *)((s8 *)(arg1) + (0))) = 4;
            return;
        }
        var_r0_52 = 0x100000 & var_r2_10;
        if (var_r0_52 != 0) {
            var_r0_52 = 1;
        }
        (*(s32 *)((s8 *)(arg1) + (0))) = var_r0_52;
block_13:
        (*(u32 *)((s8 *)(arg1) + (0xC))) = var_r2_10;
        return;
    }
    (*(s32 *)((s8 *)(arg1) + (8))) = (s32) (temp_r1_12 - 0x7F);
    (*(s32 *)((s8 *)(arg1) + (0))) = 3;
    (*(u32 *)((s8 *)(arg1) + (0xC))) = (u32) ((var_r2_10 << 7) | 0x40000000);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DBC1C.s\"");
#else
#error "TODO: write sub_81DBC1C to match asm/nonmatching/sub_81DBC1C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DC048.s\"");
#else
#error "TODO: write sub_81DC048 to match asm/nonmatching/sub_81DC048.s, then delete this #error"
#endif
