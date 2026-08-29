#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E163C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E163C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E168C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E1780.s\"");
#else
u8 sub_8199F30();                                   /* extern */

s32 sub_80E1780(void *arg0, s32 arg1) {
    u32 temp_r2_26;
    u32 temp_r2_35;
    u32 temp_r2_46;
    u8 temp_r0_14;

    (*(s32 *)((s8 *)(arg0) + (8))) = 0;
    temp_r0_14 = sub_8199F30();
    (*(s16 *)((s8 *)(arg0) + (0x16))) = (s16) ((u32) ((temp_r0_14 + 0x100) * M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */)) >> 8);
    temp_r2_26 = temp_r0_14 >> 8;
    (*(s16 *)((s8 *)(arg0) + (0x12))) = (s16) ((u32) (((u8) temp_r2_26 + 0x100) * M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */)) >> 8);
    temp_r2_35 = temp_r2_26 >> 8;
    (*(s16 *)((s8 *)(arg0) + (0x18))) = (s16) ((u32) (((u8) temp_r2_35 + 0x100) * M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */)) >> 8);
    (*(s16 *)((s8 *)(arg0) + (0x10))) = 0;
    temp_r2_46 = temp_r2_35 >> 8;
    (*(s16 *)((s8 *)(arg0) + (0x14))) = (s16) temp_r2_46;
    return (1 & temp_r2_46) + 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E17E8.s\"");
#else
void sub_80E17E8(void *arg0, void *arg1) {
    s32 temp_r2_17;
    s32 var_r0_45;
    u16 temp_r0_26;

    (*(s32 *)((s8 *)(arg0) + (4))) = (s32) ((*(s32 *)((s8 *)(arg0) + (4))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    temp_r2_17 = (*(s32 *)((s8 *)(arg0) + (8))) + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    (*(s32 *)((s8 *)(arg0) + (8))) = temp_r2_17;
    (*(s32 *)((s8 *)(arg0) + (0xC))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0xC))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    temp_r0_26 = (*(u16 *)((s8 *)(arg1) + (4))) + (*(u16 *)((s8 *)(arg0) + (0x12)));
    (*(u16 *)((s8 *)(arg0) + (0x12))) = temp_r0_26;
    if (temp_r2_17 >= 0) {
        if ((s32) (s16) temp_r0_26 < (s32) M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */)) {
            (*(s16 *)((s8 *)(arg0) + (0x16))) = 0;
            return;
        }
        var_r0_45 = (0 - M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) * 3;
        if (var_r0_45 < 0) {
            var_r0_45 += 3;
        }
        (*(u16 *)((s8 *)(arg0) + (0x12))) = (u16) ((*(u16 *)((s8 *)(arg1) + (6))) + (var_r0_45 >> 2));
        (*(s32 *)((s8 *)(arg0) + (8))) = 0;
    }
}
#endif
