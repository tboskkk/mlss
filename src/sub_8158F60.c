#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8158F60 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8158F60(void *arg0)
{
  u16 temp_r0_11;
  temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0x1F2A)) = (*((u16 *) (((s8 *) arg0) + 0x1F2A))) - 1);
  if (((s32) (temp_r0_11 << 0x10)) < 0)
  {
    *((s16 *) (((s8 *) arg0) + 0x1F28)) = 0;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158F88.s\"");
#else
void sub_8158F88(void *arg0, s16 arg1) {
    if (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) != arg1) {
        (*(s16 *)((s8 *)(arg0) + (0x1F28))) = arg1;
        (*(s16 *)((s8 *)(arg0) + (0x1F2A))) = 0x5A;
        play_sfx_80195B4(arg1, -1);
    }
}
#endif

s32 sub_8151650(void *, s32);                   /* extern */

void sub_8159258(void *arg0) {
    void *temp_r0_10;
    void *temp_r2_11;

    temp_r0_10 = (*(void **)((s8 *)(arg0) + (0x1CAC)));
    temp_r2_11 = (*(void **)((s8 *)(temp_r0_10) + (4)));
    if (((*(s32 (**)(void *, void *))((s8 *)(temp_r2_11) + (0x14)))(temp_r0_10 + (*(s16 *)((s8 *)(temp_r2_11) + (0x10))), arg0) == 0) && (arg0 != NULL)) {
        sub_8151650(arg0, 3);
    }
}
