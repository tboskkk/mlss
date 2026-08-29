#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813326C needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_8082E1C();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813326C.s\"");
#else
void sub_813326C(void *arg0) {
    s32 var_r0_15;
    void *temp_r2_35;

    if (!(8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12))))) {
        var_r0_15 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
        if (var_r0_15 < 0) {
            var_r0_15 += 0xF;
        }
        if ((var_r0_15 >> 4) == 0x28) {
            play_sfx_80195B4(0x7E, -1);
        }
    } else {
        (*(s8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x113))) = 1;
        temp_r2_35 = (*(void **)((s8 *)(arg0) + (8)));
        (*(u8 *)((s8 *)(temp_r2_35) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r2_35) + (0x12))) | 0x10);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}
#endif

extern s32 sub_808750C;

void sub_81332BC(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0xD, 0, 0);
        arg0->handler = &sub_808750C;
    }
}

extern s32 sub_81333D8;

void sub_81332E8(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0xD, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_81333D8;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8133314.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8133358.s\"");
#else
s32 sub_807C298(void *);                        /* extern */
s32 sub_807FC08(s32 *, s32 *, s32 *, s32);      /* extern */

void sub_8133358(void *arg0) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 var_r0_25;
    s32 var_r0_32;
    s32 var_r0_39;

    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x38))) - M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x40))) - M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    (*(u16 *)((s8 *)(arg0) + (0xB2))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0xB2))) + 0x20);
    var_r0_25 = (*(s32 *)((s8 *)(arg0) + (0x10)));
    if (var_r0_25 < 0) {
        var_r0_25 += 0xFF;
    }
    sp0 = var_r0_25 >> 8;
    var_r0_32 = (*(s32 *)((s8 *)(arg0) + (0x14)));
    if (var_r0_32 < 0) {
        var_r0_32 += 0xFF;
    }
    sp4 = var_r0_32 >> 8;
    var_r0_39 = (*(s32 *)((s8 *)(arg0) + (0x18)));
    if (var_r0_39 < 0) {
        var_r0_39 += 0xFF;
    }
    sp8 = var_r0_39 >> 8;
    sub_807FC08(&sp0, &sp4, &sp8, 0);
    if (sp4 > 0x110) {
        sub_807C298(arg0);
        return;
    }
    if (sp0 < -0x10) {
        sub_807C298(arg0);
    }
}
#endif
