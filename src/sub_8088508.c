#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8088508 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_8082E1C();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088508.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_8088508(void *arg0) {
    s32 temp_r1_18;
    void *temp_r2_30;
    void *temp_r2_36;

    if (0x20 & (*(u8 *)((s8 *)(arg0) + (0x79)))) {
        temp_r1_18 = 6 & (*(u8 *)((s8 *)(arg0) + (0x76)));
        if ((temp_r1_18 == 2) || (temp_r1_18 == 4)) {
            sub_8082E1C(arg0, 0, -1, 0);
            temp_r2_30 = (*(void **)((s8 *)(arg0) + (8)));
            (*(u8 *)((s8 *)(temp_r2_30) + (0x11))) = (u8) (-0x41 & (*(u8 *)((s8 *)(temp_r2_30) + (0x11))));
            temp_r2_36 = (*(void **)((s8 *)(arg0) + (8)));
            (*(u8 *)((s8 *)(temp_r2_36) + (0x12))) = (u8) (-7 & (*(u8 *)((s8 *)(temp_r2_36) + (0x12))));
        }
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x50)));
        (*(s32 *)((s8 *)(arg0) + (0x50))) = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088560.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8087C6C;

void sub_8088560(void *arg0) {
    s32 temp_r1_11;
    void *temp_r2_39;

    temp_r1_11 = 6 & (*(u8 *)((s8 *)(arg0) + (0x76)));
    if ((temp_r1_11 == 2) || (temp_r1_11 == 4)) {
        if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) == -1) {
            sub_8082E1C(arg0, 5, 0x2000, 0);
        } else {
            sub_8082E1C(arg0, 5, 0x204D, 0);
        }
        temp_r2_39 = (*(void **)((s8 *)(arg0) + (8)));
        (*(u8 *)((s8 *)(temp_r2_39) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_39) + (0x12)))) | 2);
    }
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8087C6C;
}
#endif

extern s32 sub_808864C;
void sub_80885C4(void *arg0)
{
  int new_var;
  s32 temp_r1_11;
  void *temp_r2_39;
  temp_r1_11 = 6 & (*((u8 *) (((s8 *) arg0) + 0x76)));
  new_var = -7;
  if ((temp_r1_11 == 2) || (temp_r1_11 == 4))
  {
    if ((*((s16 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0xEC))) == (-1))
    {
      sub_8082E1C(arg0, 4, 0x2000, 0);
    }
    else
    {
      sub_8082E1C(arg0, 4, 0x204D, 0);
    }
    temp_r2_39 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_39) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_39) + 0x12)))) | 2);
  }
  *((s32 **) (((s8 *) arg0) + 0x50)) = (s32 *) (*((s32 **) (((s8 *) arg0) + 0x4C)));
  *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_808864C;
}
