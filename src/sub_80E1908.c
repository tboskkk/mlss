#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E1908 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_80DF5EC();                              /* extern */
void sub_80E1908(void *arg0)
{
  s8 *new_var2;
  s8 *new_var3;
  void *new_var;
  u16 *temp_r1_7;
  new_var = arg0;
  temp_r1_7 = *((u16 **) (((s8 *) arg0) + 0xC));
  new_var2 = (s8 *) arg0;
  new_var3 = ((s8 *) new_var) + 0xC;
  *((u16 *) (arg0 + 0x10)) = (u16) (*temp_r1_7);
  new_var = temp_r1_7;
  *((u16 **) new_var3) = (u16 *) (new_var + 2);
  *((s32 (**)()) (new_var2 + 4)) = sub_80DF5EC;
  sub_80DF5EC();
}

s32 sub_80E1AF0();                              /* extern */
void sub_80E1924(void *arg0)
{
  u16 *temp_r1_7;
  void *new_var;
  temp_r1_7 = (u16 *) (*((u16 **) (((s8 *) arg0) + 0xC)));
  *((u16 *) (((s8 *) arg0) + 0x10)) = (u16) (*temp_r1_7);
  *((u16 **) (((s8 *) arg0) + 0xC)) = (u16 *) ((new_var = temp_r1_7) + 2);
  *((s32 (**)()) (((s8 *) (new_var = arg0)) + 4)) = sub_80E1AF0;
  sub_80E1AF0();
}

s32 sub_80DF2B0();                              /* extern */
void sub_80E1940(void *arg0)
{
  u16 *temp_r1_7;
  u16 *new_var;
  void *new_var2;
  temp_r1_7 = *((u16 **) (0xC + ((s8 *) arg0)));
  new_var2 = arg0;
  *(new_var = (u16 *) (((s8 *) new_var2) + 0x10)) = (u16) (*temp_r1_7);
  new_var2 = temp_r1_7;
  *((u16 **) (((s8 *) arg0) + 0xC)) = (u16 *) (new_var2 + 2);
  *((s32 (**)()) (((s8 *) arg0) + 4)) = sub_80DF2B0;
  sub_80DF2B0();
}

s32 sub_8082E1C(void *, u16, u16, s32);         /* extern */
void sub_80E195C(void *arg0, void *arg1)
{
  unsigned int new_var;
  u16 temp_r5_10;
  u16 temp_r6_13;
  temp_r5_10 = *((u16 *) (((s8 *) arg1) + 0x78));
  temp_r6_13 = *((u16 *) (((s8 *) arg1) + 0x7A));
  new_var = 0U;
  *((u16 *) (((s8 *) arg1) + 0x78)) = new_var;
  *((u16 *) (((s8 *) arg1) + 0x7A)) = 0U;
  *((s32 *) (((s8 *) arg0) + 0x5C)) = 0;
  *((s32 *) (((s8 *) arg0) + 0x60)) = 0;
  if ((temp_r5_10 != 0) && (0x38 & (*((u8 *) (((s8 *) arg1) + 0x7E)))))
  {
    sub_8082E1C(arg1 + 8, temp_r6_13, temp_r5_10, 0);
    *((u8 *) (((s8 *) arg1) + 0x7E)) = (u8) ((-0x39) & (*(((s8 *) arg1) + 0x7E)));
  }
}

s32 sub_807F6D0();                              /* extern */

void sub_80E19A8(void *arg0) {
    if ((s32) (s16) (*(u16 *)((s8 *)(arg0) + (0x10))) > 0) {
        (*(u16 *)((s8 *)(arg0) + (0x10))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x10))) - 1);
        return;
    }
    sub_807F6D0();
    (*(s32 *)((s8 *)(arg0) + (4))) = 0;
}
