#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8046A10 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8046A10.s\"");
#else
void sub_8046A10(void *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0) + (0x2B5)))) {
        (*(s32 *)((s8 *)(arg0) + (0x25C))) = -1;
        (*(u8 *)((s8 *)(arg0) + (0x213))) = (u8) (-0x21 & (*(u8 *)((s8 *)(arg0) + (0x213))));
        (*(s32 *)((s8 *)(arg0) + (0x250))) = -1;
        (*(s32 *)((s8 *)(arg0) + (0x24C))) = -1;
        (*(u16 *)((s8 *)(arg0) + (0x23E))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x240)));
        if (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) != -1) {
            (*(u16 *)((s8 *)(arg0) + (0x266))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x268)));
            (*(u16 *)((s8 *)(arg0) + (0x268))) = 0xFFFFU;
        }
        (*(u8 *)((s8 *)(arg0) + (0x2B5))) = (u8) (-9 & (*(u8 *)((s8 *)(arg0) + (0x2B5))));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8046A90.s\"");
#else
s32 sub_8046A90(void *arg0, s32 arg1, s32 arg2, u16 arg3, s32 arg4) {
    s16 temp_r0_42;
    s32 temp_r2_40;
    u16 temp_r5_13;
    u16 var_r1_50;
    u16 var_r3_11;

    var_r3_11 = arg3;
    temp_r5_13 = (u16) arg4;
    if (arg2 == 1) {
        var_r3_11 = (s16) var_r3_11 + (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (4)));
    }
    (*(u16 *)((s8 *)(arg0) + (0x2FA))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (4)));
    (*(u16 *)((s8 *)(arg0) + (0x302))) = var_r3_11;
    temp_r2_40 = M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */);
    temp_r0_42 = (s16) var_r3_11;
    if (temp_r2_40 == temp_r0_42) {
        return 0;
    }
    if (arg1 == 1) {
        var_r1_50 = temp_r5_13;
        if (temp_r2_40 >= (s32) temp_r0_42) {
            var_r1_50 = 0 - temp_r5_13;
        }
        (*(u16 *)((s8 *)(arg0) + (0x30A))) = var_r1_50;
    } else {
        (*(u16 *)((s8 *)(arg0) + (0x31A))) = temp_r5_13;
    }
    (*(s16 *)((s8 *)(arg0) + (0x312))) = 0;
    (*(u8 *)((s8 *)(arg0) + (0x2B5))) = (u8) ((-0x31 & (*(u8 *)((s8 *)(arg0) + (0x2B5)))) | ((arg1 & 3) * 0x10));
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8046B30.s\"");
#else
s32 sub_8046B30(void *arg0, s32 arg1, s32 arg2, u16 arg3, s32 arg4) {
    s16 temp_r0_44;
    s32 temp_r2_42;
    u16 temp_r4_13;
    u16 var_r1_52;
    u16 var_r3_11;

    var_r3_11 = arg3;
    temp_r4_13 = (u16) arg4;
    if (arg2 == 1) {
        var_r3_11 = (s16) var_r3_11 + (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (6)));
    }
    (*(u16 *)((s8 *)(arg0) + (0x2FC))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (6)));
    (*(u16 *)((s8 *)(arg0) + (0x304))) = var_r3_11;
    temp_r2_42 = M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */);
    temp_r0_44 = (s16) var_r3_11;
    if (temp_r2_42 == temp_r0_44) {
        return 0;
    }
    if (arg1 == 1) {
        var_r1_52 = temp_r4_13;
        if (temp_r2_42 >= (s32) temp_r0_44) {
            var_r1_52 = 0 - temp_r4_13;
        }
        (*(u16 *)((s8 *)(arg0) + (0x30C))) = var_r1_52;
    } else {
        (*(u16 *)((s8 *)(arg0) + (0x31C))) = temp_r4_13;
    }
    (*(s16 *)((s8 *)(arg0) + (0x314))) = 0;
    (*(u8 *)((s8 *)(arg0) + (0x2B5))) = (u8) ((0x3F & (*(u8 *)((s8 *)(arg0) + (0x2B5)))) | (arg1 << 6));
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8046BC8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8046C78.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
