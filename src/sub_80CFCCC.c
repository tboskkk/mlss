#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80CFCCC needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80CFCCC.s", void sub_80CFCCC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80CFDB8.s", void sub_80CFDB8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80CFE80.s", void sub_80CFE80(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D003C.s", void sub_80D003C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D0790.s", void sub_80D0790(void *arg0));
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8087EFC(void *);                        /* extern */
void sub_80D08F8(void);                       /* extern */
void sub_80D0AF8(void *arg0);                       /* extern */
void sub_80D086C(void *arg0)
{
  s32 temp_r1_30;
  int new_var;
  s32 temp_r1_55;
  void *temp_r2_41;
  void *temp_r2_50;
  void *temp_r4_12;
  void *temp_r5_10;
  temp_r5_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x70));
  temp_r4_12 = temp_r5_10 + 8;
  sub_8087EFC(*((void **) (((s8 *) temp_r4_12) + 0x30)));
  new_var = -7;
  if (0x20 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) temp_r4_12) + 0x30)))) + 0x79))))
  {
    play_sfx_80195B4(0x9C, -1);
    temp_r1_30 = 6 & (*((u8 *) (((s8 *) temp_r5_10) + 0x7E)));
    if ((temp_r1_30 == 2) || (temp_r1_30 == 4))
    {
      sub_8082E1C(temp_r4_12, 5, 0x2036, 0);
      temp_r2_41 = *((void **) (((s8 *) temp_r4_12) + 8));
      *((u8 *) (((s8 *) temp_r2_41) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_41) + 0x12)))) | 2);
    }
    temp_r2_50 = *((void **) (((s8 *) temp_r4_12) + 0x30));
    temp_r1_55 = 6 & (*((u8 *) (((s8 *) temp_r2_50) + 0x76)));
    if ((temp_r1_55 == 2) || (temp_r1_55 == 4))
    {
      if (1)
      {
        *((s32 **) (((s8 *) temp_r2_50) + 0x4C)) = (s32 *) &sub_80D0AF8;
      }
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_80D08F8;
  }
}

ASM_FUNC("asm/nonmatching/sub_80D08F8.s", void sub_80D08F8(void));
ASM_FUNC("asm/nonmatching/sub_80D0AF8.s", void sub_80D0AF8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D0BA0.s", void sub_80D0BA0(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D0C84.s", void sub_80D0C84(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D0D2C.s", void sub_80D0D2C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D0E84.s", void sub_80D0E84(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D15F4.s", void sub_80D15F4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D1758.s", void sub_80D1758(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D18AC.s", void sub_80D18AC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D1FA4.s", void sub_80D1FA4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D205C.s", void sub_80D205C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D20F4.s", void sub_80D20F4(void));
ASM_FUNC("asm/nonmatching/sub_80D22EC.s", void sub_80D22EC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D2380.s", void sub_80D2380(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D249C.s", void sub_80D249C(void *arg0));
void sub_80D266C(void *arg0);                       /* extern */
void sub_80D29D4();                       /* extern */
void sub_80D25F8(void *arg0)
{
  s32 temp_r1_22;
  int new_var;
  s32 temp_r1_35;
  void *temp_r2_17;
  void *temp_r2_46;
  void *temp_r4_12;
  temp_r4_12 = (void *) ((*((s32 *) (((s8 *) (*((void **) 0x03000FD8))) + 0x70))) + 8);
  play_sfx_80195B4(0x85, -1);
  temp_r2_17 = *((void **) (((s8 *) temp_r4_12) + 0x30));
  temp_r1_22 = 6 & (*((u8 *) (((s8 *) temp_r2_17) + 0x76)));
  if ((temp_r1_22 == 2) || (temp_r1_22 == 4))
  {
    *((s32 **) (((s8 *) temp_r2_17) + 0x4C)) = (s32 *) &sub_80D29D4;
  }
  temp_r1_35 = 6 & (*((u8 *) (((s8 *) temp_r4_12) + 0x76)));
  new_var = -7;
  if ((temp_r1_35 == 2) || (temp_r1_35 == 4))
  {
    sub_8082E1C(temp_r4_12, 9, 0x2036, 0);
    temp_r2_46 = *((void **) (((s8 *) temp_r4_12) + 8));
    *((u8 *) (((s8 *) temp_r2_46) + 0x12)) = (u8) (new_var & (*((u8 *) (((s8 *) temp_r2_46) + 0x12))));
  }
  *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_80D266C;
}

ASM_FUNC("asm/nonmatching/sub_80D266C.s", void sub_80D266C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D2724.s", void sub_80D2724(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80D27DC.s", void sub_80D27DC(void));
ASM_FUNC("asm/nonmatching/sub_80D29D4.s", void sub_80D29D4());
ASM_FUNC("asm/nonmatching/sub_80D2AF4.s", void sub_80D2AF4());