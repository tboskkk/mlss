#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810D424 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_8109CF4();

volatile int sub_810D424(void)
{
  s32 temp_r4_13;
  void *temp_r0_24;
  void *temp_r2_9;
  void **new_var;
  new_var = (void **) 0x03000FD8;
  temp_r2_9 = *new_var;
  temp_r4_13 = temp_r4_13;
  temp_r4_13 = *((s32 *) (((s8 *) temp_r2_9) + 0x30C));
  *((u8 *) (((s8 *) temp_r2_9) + 7)) = (u8) ((0x1F & (*((u8 *) (((s8 *) (*new_var)) + 7)))) | 0xA0);
  do
  {
  }
  while (temp_r4_13 == 0);
  temp_r0_24 = *((void **) (((s8 *) (*new_var)) + 0x7C));
  sub_8109CF4(temp_r4_13, *((s32 *) (((s8 *) temp_r0_24) + 0x40)), *((s32 *) (((s8 *) temp_r0_24) + 0x44)), 0x3000, 0x3800);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D468.s\"");
#else
s32 sub_8109CF4(s32, s32, s32, s32, s32);       /* extern */

void sub_810D468(void) {
    s32 *temp_r3_20;
    s32 temp_r0_21;
    void *temp_r1_9;
    void *temp_r5_22;

    temp_r1_9 = *(void **)0x03000FD8;
    temp_r3_20 = temp_r1_9 + 0x2FC + (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) * 4);
    temp_r0_21 = *temp_r3_20;
    temp_r5_22 = (*(void **)((s8 *)(temp_r1_9) + (0x7C)));
    (*(s32 *)((s8 *)(temp_r1_9) + (0x30C))) = temp_r0_21;
    *temp_r3_20 = 0;
    sub_8109CF4(temp_r0_21, (*(s32 *)((s8 *)(temp_r5_22) + (0x40))) + 0xFFFFE000, (*(s32 *)((s8 *)(temp_r5_22) + (0x44))) + 0xFFFFF800, 0, 0x3800);
}
#endif
