#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DAAA4 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_80873B8();
void sub_80DAB64(void *arg0);

void sub_80DAAA4(void *arg0) {
    (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x30;
    sub_80873B8(arg0, 4, 0x1B);
    (*(s32 **)((s8 *)(arg0) + (0x50))) = (s32 *) &sub_80DAB64;
}

s32 sub_80873B8(void *, s32, s32);              /* extern */
extern s32 sub_80DABD0;

void sub_80DAAC8(void *arg0) {
    (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x30;
    sub_80873B8(arg0, 2, 0x1B);
    (*(s32 **)((s8 *)(arg0) + (0x50))) = &sub_80DABD0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAAEC.s\"");
#else
s32 sub_807C298(void *);                        /* extern */
s32 sub_807FC08(s32 *, s32 *, s32 *, s32);      /* extern */

void sub_80DAAEC(void *arg0) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 var_r0_25;
    s32 var_r0_32;
    s32 var_r0_39;

    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x38))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x40))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    (*(u16 *)((s8 *)(arg0) + (0xB2))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0xB2))) - 0x5E);
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
    if ((sp0 < -0x10) || (sp4 > 0x110)) {
        sub_807C298(arg0);
    }
}
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_808552C(s32, s32, s32, s32, s32, s32, s32, s32, s32, s32); /* extern */
void sub_80DA6D0(void *arg0);                       /* extern */
void sub_80DAB64(void *arg0)
{
  void *temp_r2_39;
  *((s32 *) (((s8 *) arg0) + 0x94)) = sub_808552C((s32) (arg0 + 0xAE), (s32) (arg0 + 0xB0), (s32) (arg0 + 0xB2), 0, 0, 0, 0x1400, 0x499, 0xFD, 0);
  play_sfx_80195B4(0x69, -1);
  sub_8082E1C(arg0, 4, 0, 0);
  temp_r2_39 = *((void **) (((s8 *) arg0) + 8));
  *((u8 *) (((s8 *) temp_r2_39) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_39) + 0x12))) | 2);
  *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_80DA6D0;
}
