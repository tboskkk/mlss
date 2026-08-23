#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_811104C needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_8082E1C();

extern s32 sub_8111174;
void sub_811104C(void *arg0)
{
  s32 var_r1_14;
  void *temp_r2_23;
  u8 *new_var;
  void *new_var2;
  int new_var3;
  new_var3 = 0 - (*((s16 *) (((s8 *) (*((void **) (((s8 *) (*((void **) (0x2C + ((s8 *) arg0))))) + 0x28)))) + 0xEC)));
  var_r1_14 = 0x11;
  if (new_var3 != 1)
  {
    var_r1_14 = 0x12;
  }
  new_var2 = arg0;
  sub_8082E1C(new_var2, var_r1_14, 0, 0);
  temp_r2_23 = *((void **) (((s8 *) new_var2) + 8));
  ;
  *((u8 *) (((s8 *) temp_r2_23) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_23) + 0x12))) | 2);
  *((s32 **) (((s8 *) new_var2) + 0x4C)) = &sub_8111174;
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_811108C(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, -1, -1, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81110B4.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_81111C0;

void sub_81110B4(void *arg0) {
    s32 var_r1_14;
    void *temp_r2_23;

    var_r1_14 = 0xF;
    if ((0 - M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) != 1) {
        var_r1_14 = 0x10;
    }
    sub_8082E1C(arg0, var_r1_14, 0, 0);
    temp_r2_23 = (*(void **)((s8 *)(arg0) + (8)));
    (*(u8 *)((s8 *)(temp_r2_23) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_23) + (0x12)))) | 2);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_81111C0;
    play_sfx_80195B4(0x89, -1);
}
#endif
