#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8106840 needs.

asm_unified(".include \"asm/macros.inc\"");



s32 sub_807FB64();

s32 sub_81059D8();
s32 sub_8199F30();
s32 sub_81DD77C();

s32 sub_81067D4(void *);                        /* extern */
void sub_8106840(void *arg0)
{
  s16 new_var;
  if ((new_var = (s16) (*((u16 *) (((s8 *) arg0) + 0x10)))) != 0)
  {
    *((u16 *) (((s8 *) arg0) + 0x10)) = (u16) ((*((u16 *) (((s8 *) arg0) + 0x10))) - 1);
    return;
  }
  sub_807FB64(*((s32 *) (((s8 *) arg0) + 8)));
  *((u16 *) (((s8 *) arg0) + 0x10)) = 0x20U;
  *((s32 (**)(void *)) (((s8 *) arg0) + 4)) = sub_81067D4;
  sub_81067D4(arg0);
}

s32 sub_8105F28(void *);                        /* extern */
void sub_8106874(void *arg0)
{
  s16 new_var;
  new_var = (s16) (*((u16 *) (((s8 *) arg0) + 0x10)));
  if (new_var != 0)
  {
    *((u16 *) (((s8 *) arg0) + 0x10)) = (u16) ((*((u16 *) (((s8 *) arg0) + 0x10))) - 1);
    return;
  }
  sub_807FB64(*((s32 *) (((s8 *) arg0) + 8)));
  *((u16 *) (((s8 *) arg0) + 0x10)) = 0x10U;
  *((s32 (**)(void *)) (((s8 *) arg0) + 4)) = sub_8105F28;
  sub_8105F28(arg0);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81068A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8106928(void) {
    u32 temp_r0_10;
    u32 var_r1_13;

    temp_r0_10 = sub_81DD77C(0x64, sub_8199F30());
    var_r1_13 = (u32) ~temp_r0_10 >> 0x1F;
    if ((s32) temp_r0_10 > 0x5B) {
        var_r1_13 += 1;
    }
    if ((s32) temp_r0_10 > 0x61) {
        var_r1_13 += 1;
    }
    sub_81059D8(0x200, var_r1_13);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106954.s\"");
#else
s32 sub_81059D8(u32, s32);                      /* extern */
s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */

void sub_8106954(void *arg0, s32 arg1, s32 arg2) {
    s32 temp_r4_16;
    u16 var_r0_23;
    u32 temp_r0_28;

    if (arg0 != NULL) {
        if (arg2 == 0) {
            temp_r4_16 = ((u32) ((*(u8 *)((s8 *)(arg0) + (0x2A))) << 0x1B) >> 0x1B) + arg1;
            if (temp_r4_16 > sub_81DD77C(0x1F, sub_8199F30())) {
                var_r0_23 = (u16) (*(u8 *)((s8 *)(arg0) + (0x2A)));
                goto block_5;
            }
        } else {
            var_r0_23 = (*(u16 *)((s8 *)(arg0) + (0x28)));
block_5:
            temp_r0_28 = var_r0_23 >> 5;
            if (temp_r0_28 != 0) {
                sub_81059D8(temp_r0_28, 1);
            }
        }
    }
}
#endif
