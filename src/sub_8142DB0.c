#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8142DB0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142DB0.s\"");
#else
s32 sub_813A284(void *, s32, s32, u16);         /* extern */
extern s32 sub_8142FC8;

void sub_8142DB0(void *arg0, void *arg1, s32 **arg2) {
    s8 sp0;
    void *temp_r2_13;

    temp_r2_13 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(s32 *)((s8 *)(arg1) + (0x1DC))) = (s32) (*(s32 *)((s8 *)(arg1) + (0xC)));
    (*(s32 *)((s8 *)(arg1) + (0x1E0))) = (s32) (*(s32 *)((s8 *)(arg1) + (0x10)));
    sp0 = 0;
    sub_813A284(arg1, (*(s32 *)((s8 *)(temp_r2_13) + (0xC))) + (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) * 0x10), (*(s32 *)((s8 *)(temp_r2_13) + (0x10))) + (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) * 0x10), (*(u16 *)((s8 *)((((*(u16 *)((s8 *)(arg1) + (0x1D0))) * 2) + (*(s32 *)((s8 *)(arg1) + (0x1B0))))) + (0x2A))));
    *arg2 = &sub_8142FC8;
}
#endif

extern s32 sub_813E2A4;
void sub_8142E28(s32 arg0, void *arg1, s32 **arg2)
{
  int new_var2;
  unsigned long new_var;
  new_var = -8;
  new_var2 = 0x600;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg1) + 0x294)))) + 0x12))))
  {
    *((s16 *) (((s8 *) arg1) + 0x274)) = new_var2;
    *((u8 *) (((s8 *) arg1) + 0x214)) = (u8) (new_var & (*((u8 *) (((s8 *) arg1) + 0x214))));
    *arg2 = &sub_813E2A4;
  }
}
