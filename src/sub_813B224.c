#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813B224 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B224.s\"");
#else
u16 sub_80E9594(s32);                               /* extern */
s32 sub_813A284(void *, s32, s32, s32);     /* extern */
extern s32 sub_813B9B4;

void sub_813B224(void *arg0, void *arg1, s32 **arg2) {
    s8 sp0;
    s32 temp_r2_20;
    u32 var_r0_33;
    void *temp_r6_17;
    void *temp_r7_13;

    temp_r7_13 = arg1 + 0x58;
    temp_r6_17 = (*(void **)((s8 *)(arg0) + (0x200)));
    temp_r2_20 = (*(s32 *)((s8 *)(temp_r6_17) + (0xC))) - (*(s32 *)((s8 *)(arg1) + (0xC)));
    if ((temp_r2_20 | ((*(s32 *)((s8 *)(temp_r6_17) + (0x10))) - (*(s32 *)((s8 *)(arg1) + (0x10))))) != 0) {
        var_r0_33 = (u32) (sub_80E9594(temp_r2_20) + 0x10) >> 8;
    } else {
        var_r0_33 = 0xFF;
    }
    (*(s8 *)((s8 *)(arg1) + (2))) = (s8) var_r0_33;
    sp0 = 0;
    sub_813A284(arg1, (*(s32 *)((s8 *)(temp_r6_17) + (0xC))), (*(s32 *)((s8 *)(temp_r6_17) + (0x10))), M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */));
    (*(s32 *)((s8 *)(temp_r7_13) + (0x184))) = (s32) (*(s32 *)((s8 *)(arg1) + (0xC)));
    (*(s32 *)((s8 *)(temp_r7_13) + (0x188))) = (s32) (*(s32 *)((s8 *)(arg1) + (0x10)));
    (*(u8 *)((s8 *)(arg1) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg1) + (0x214)))) | 3);
    *arg2 = &sub_813B9B4;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B2C0.s\"");
#else
s32 sub_813AF94(s32, s32 *);                /* extern */
extern s32 sub_813A5C8;
extern s32 sub_813BA0C;

void sub_813B2C0(s32 arg0, s32 arg1, s32 **arg2) {
    sub_813AF94(arg1, &sub_813A5C8);
    *arg2 = &sub_813BA0C;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B2E0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_813AF94(s32, s32 *);                /* extern */
extern s32 sub_813A5C8;
extern s32 sub_813BB60;

void sub_813B360(s32 arg0, s32 arg1, s32 **arg2) {
    sub_813AF94(arg1, &sub_813A5C8);
    *arg2 = &sub_813BB60;
}
