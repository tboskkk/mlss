#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A1990 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
void sub_80A1990(void *arg0)
{
  s32 temp_r1_23;
  void *temp_r2_10;
  void *temp_r2_35;
  void *temp_r2_41;
  int new_var;
  void *temp_r4_12;
  temp_r2_10 = (void *) (*((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x70)));
  temp_r4_12 = (void *) (temp_r2_10 + 8);
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) temp_r4_12) + 8)))) + 0x12))))
  {
    temp_r1_23 = 6 & (*((u8 *) (((s8 *) temp_r2_10) + 0x7E)));
    new_var = -0x41;
    if ((temp_r1_23 == 2) || (temp_r1_23 == 4))
    {
      sub_8082E1C(temp_r4_12, 0, -1, 0);
      temp_r2_35 = (void *) (*((void **) (((s8 *) temp_r4_12) + 8)));
      *(((s8 *) temp_r2_35) + 0x11) = (u8) (new_var & (*((u8 *) (((s8 *) temp_r2_35) + 0x11))));
      temp_r2_41 = (void *) (*((void **) (((s8 *) temp_r4_12) + 8)));
      *((u8 *) (((s8 *) temp_r2_41) + 0x12)) = (u8) ((-7) & (*(((s8 *) temp_r2_41) + 0x12)));
    }
    *((s32 *) (((s8 *) arg0) + 0x4C)) = 0;
    *((s8 *) (((s8 *) arg0) + 0x74)) = 0;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A19F8.s\"");
#else
s32 sub_80880C4(void *, s32);                   /* extern */
s32 sub_808843C(void *, s32, s32, s32, s32);    /* extern */
extern s32 sub_80A1A90;

void sub_80A19F8(void *arg0) {
    s32 temp_r1_23;
    s32 temp_r1_37;
    s32 var_r0_46;
    s32 var_r0_54;
    s32 var_r0_62;
    u16 temp_r0_13;
    void *temp_r3_43;
    void *temp_r3_9;

    temp_r3_9 = (*(void **)((s8 *)(arg0) + (0x2C)));
    temp_r0_13 = (*(u16 *)((s8 *)(arg0) + (0xB2))) + 0x26;
    (*(u16 *)((s8 *)(arg0) + (0xB2))) = temp_r0_13;
    if ((s32) (temp_r0_13 << 0x10) < 0) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x18))) + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */));
        temp_r1_23 = (*(s32 *)((s8 *)(temp_r3_9) + (0x40)));
        if (temp_r1_23 == (*(s32 *)((s8 *)(temp_r3_9) + (0x18)))) {
            (*(s32 *)((s8 *)(temp_r3_9) + (0x18))) = (s32) (temp_r1_23 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */));
        }
    } else {
        temp_r1_37 = 6 & (*(u8 *)((s8 *)(arg0) + (0x76)));
        if ((temp_r1_37 == 2) || (temp_r1_37 == 4)) {
            temp_r3_43 = (*(void **)((s8 *)(arg0) + (0x28)));
            var_r0_46 = (*(s32 *)((s8 *)(temp_r3_43) + (0xD8)));
            if (var_r0_46 < 0) {
                var_r0_46 += 0xFF;
            }
            var_r0_54 = (*(s32 *)((s8 *)(temp_r3_43) + (0xDC)));
            if (var_r0_54 < 0) {
                var_r0_54 += 0xFF;
            }
            var_r0_62 = (*(s32 *)((s8 *)(temp_r3_43) + (0xE0)));
            if (var_r0_62 < 0) {
                var_r0_62 += 0xFF;
            }
            sub_808843C(arg0, var_r0_46 >> 8, var_r0_54 >> 8, var_r0_62 >> 8, -1);
            sub_80880C4(arg0, 0x100);
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80A1A90;
    }
}
#endif
