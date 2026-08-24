#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DB694 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DB694.s\"");
#else
s32 sub_8087540(void *);                        /* extern */

void sub_80DB694(void *arg0) {
    s32 temp_r1_60;
    s32 var_r0_16;
    s32 var_r0_31;

    var_r0_16 = M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) * 0xFD;
    if (var_r0_16 < 0) {
        var_r0_16 += 0xFF;
    }
    (*(s16 *)((s8 *)(arg0) + (0xAE))) = (s16) (var_r0_16 >> 8);
    var_r0_31 = M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) * 0xFD;
    if (var_r0_31 < 0) {
        var_r0_31 += 0xFF;
    }
    (*(s16 *)((s8 *)(arg0) + (0xB0))) = (s16) (var_r0_31 >> 8);
    (*(u16 *)((s8 *)(arg0) + (0xB2))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0xB2))) + (*(s32 *)((s8 *)(arg0) + (0x94))));
    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x38))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x3C))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    temp_r1_60 = (*(s32 *)((s8 *)(arg0) + (0x40))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r1_60;
    if (((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) <= 0) && (temp_r1_60 <= (s32) (*(s32 *)((s8 *)(arg0) + (0x98))))) {
        sub_8087540(arg0);
    }
}
#endif

void sub_80DB330(void *arg0);                       /* extern */
void sub_80DB720(void *arg0)
{
  s32 temp_r1_60;
  s32 var_r0_16;
  s32 new_var;
  s32 var_r0_31;
  var_r0_16 = (*((s16 *) (((s8 *) arg0) + 0xAE))) * 0xFD;
  if (var_r0_16 < 0)
  {
    var_r0_16 += 0xFF;
  }
  *((s16 *) (((s8 *) arg0) + 0xAE)) = (s16) (var_r0_16 >> 8);
  var_r0_31 = (*((s16 *) (((s8 *) arg0) + 0xB0))) * 0xFD;
  if (var_r0_31 < 0)
  {
    var_r0_31 += 0xFF;
  }
  *((s16 *) (((s8 *) arg0) + 0xB0)) = (s16) (var_r0_31 >> 8);
  *((u16 *) (((s8 *) arg0) + 0xB2)) = (u16) ((*((u16 *) (((s8 *) arg0) + 0xB2))) + (*((s32 *) (((s8 *) arg0) + 0x94))));
  *((s32 *) (((s8 *) arg0) + 0x10)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x38))) + (*((s16 *) (((s8 *) arg0) + 0xAE))));
  *((s32 *) (((s8 *) arg0) + 0x14)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x3C))) + (*((s16 *) (((s8 *) arg0) + 0xB0))));
  temp_r1_60 = (*((s32 *) (((s8 *) arg0) + 0x40))) + ((s16) (*((u16 *) (((s8 *) arg0) + 0xB2))));
  *((s32 *) (((s8 *) arg0) + 0x18)) = temp_r1_60;
  new_var = (s32) ((s16) (*((u16 *) (((s8 *) arg0) + 0xB2))));
  if ((new_var <= 0) && (temp_r1_60 <= ((s32) (*((s32 *) (((s8 *) arg0) + 0x98))))))
  {
    *((s16 *) (((s8 *) arg0) + 0xAC)) = 8;
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_80DB330;
  }
}
