#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8160F7C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8160F7C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8160FCC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816100C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161080.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161128.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161164.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161180.s\"");
#else
s32 get_surface_height_at_x(s32);                   /* extern */

void sub_8161180(void *arg0) {
    s32 temp_r1_21;

    (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x14))) + (*(s32 *)((s8 *)(arg0) + (0x24))));
    (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x18))) + ((*(s32 *)((s8 *)(arg0) + (0x28))) + (*(s32 *)((s8 *)(arg0) + (0x10)))));
    temp_r1_21 = (s32) (get_surface_height_at_x((*(s32 *)((s8 *)(arg0) + (0x30)))) << 0x10) >> 8;
    if ((s32) (*(s32 *)((s8 *)(arg0) + (0x18))) > temp_r1_21) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r1_21;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81611B4.s\"");
#else
s32 sub_8021574(s32, s32, s32, s32, s32, s32 *, s32); /* extern */

void *sub_81611B4(void *arg0, void *arg1, s32 arg2, s32 arg3) {
    s32 spC;
    s32 temp_r0_20;
    s32 temp_r0_25;
    s32 temp_r2_38;

    (*(s32 *)((s8 *)(arg0) + (0x2C))) = 0x08CDD018;
    (*(s32 *)((s8 *)(arg0) + (0x10))) = arg3;
    (*(s32 *)((s8 *)(arg0) + (0))) = (s32) (*(s32 *)((s8 *)(arg1) + (0)));
    (*(s32 *)((s8 *)(arg0) + (4))) = (s32) (*(s32 *)((s8 *)(arg1) + (4)));
    (*(s32 *)((s8 *)(arg0) + (8))) = (s32) (*(s32 *)((s8 *)(arg1) + (8)));
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0;
    temp_r0_20 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) << 8;
    (*(s32 *)((s8 *)(arg0) + (0x1C))) = temp_r0_20;
    (*(s32 *)((s8 *)(arg0) + (0x14))) = temp_r0_20;
    temp_r0_25 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) << 8;
    (*(s32 *)((s8 *)(arg0) + (0x20))) = temp_r0_25;
    (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r0_25;
    (*(s32 *)((s8 *)(arg0) + (0x24))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x28))) = 0;
    sub_80213A0(0, M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */), -1, 1);
    temp_r2_38 = M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */);
    sub_8021574(0, (((temp_r2_38 >> 0xC) & 0xF) << 0xC) | (temp_r2_38 & 0xFFF), 0, 0, 0, &spC, -1);
    (*(s32 *)((s8 *)(arg0) + (0x2C))) = 0x08CDCFD0;
    (*(s32 *)((s8 *)(arg0) + (0x30))) = arg2;
    return arg0;
}
#endif
