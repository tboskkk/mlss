#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DA97C needs.

asm_unified(".include \"asm/macros.inc\"");


int sub_8087540();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DA97C.s\"");
#else
s32 sub_807C298(void *);                        /* extern */

void sub_80DA97C(void *arg0) {
    s32 temp_r0_46;
    s32 temp_r1_38;

    (*(u16 *)((s8 *)(arg0) + (0xAE))) = (u16) (*(u16 *)((s8 *)(arg0) + (0xAE)));
    (*(u16 *)((s8 *)(arg0) + (0xB2))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0xB2))) + (*(s32 *)((s8 *)(arg0) + (0x94))));
    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x38))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x3C))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    temp_r1_38 = (*(s32 *)((s8 *)(arg0) + (0x40))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r1_38;
    if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) <= 0) {
        temp_r0_46 = (*(s32 *)((s8 *)(arg0) + (0x98)));
        if (temp_r1_38 <= temp_r0_46) {
            (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r0_46;
            sub_807C298(arg0);
        }
    }
}
#endif

void sub_80DA9E0(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8087540(arg0);
    }
}

void sub_80DA9FC(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8087540(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAA18.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s16 sub_8086D80();                                  /* extern */
extern s32 sub_80DAAEC;

s16 sub_80DAA18(void *arg0) {
    s16 temp_r0_8;
    u32 temp_r0_16;

    temp_r0_8 = sub_8086D80();
    if (temp_r0_8 == 0) {
        temp_r0_16 = 0 - M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
        (*(s16 *)((s8 *)(arg0) + (0xAE))) = (s16) ((s32) (temp_r0_16 + (temp_r0_16 >> 0x1F)) >> 1);
        (*(s16 *)((s8 *)(arg0) + (0xB0))) = temp_r0_8;
        (*(s16 *)((s8 *)((arg0 + 0xB0)) + (2))) = temp_r0_8;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DAAEC;
        sub_8082E1C(arg0, -1, 0, 0);
    }
    return temp_r0_8;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAA60.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAA6C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAA78.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
