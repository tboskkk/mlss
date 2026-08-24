#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80CD18C needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80CD18C.s", void sub_80CD18C(void *arg0));
void *sub_807C0D0(void *, s32, s32);                /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80884AC(void *);                        /* extern */
void sub_80CD2AC(void *arg0);                       /* extern */
void sub_80CD200(void *arg0)
{
  s32 temp_r1_30;
  int new_var3;
  void **new_var2;
  s8 *new_var;
  void *temp_r0_53;
  void *temp_r2_41;
  void *temp_r4_10;
  void *temp_r5_12;
  temp_r4_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x70));
  temp_r5_12 = temp_r4_10 + 8;
  new_var3 = 4;
  sub_80884AC(temp_r5_12);
  if (0x20 & (*((u8 *) (((s8 *) temp_r4_10) + 0x81))))
  {
    play_sfx_80195B4(0xAF, -1);
    temp_r1_30 = 6 & (*((u8 *) (((s8 *) temp_r4_10) + 0x7E)));
    if ((temp_r1_30 == 2) || (temp_r1_30 == new_var3))
    {
      sub_8082E1C(temp_r5_12, 0, 0x2036, 0);
      temp_r2_41 = *((void **) (((s8 *) temp_r5_12) + 8));
      new_var = ((s8 *) temp_r2_41) + 0x12;
      *((u8 *) new_var) = (u8) (((-7) & (*new_var)) | 2);
    }
    temp_r0_53 = sub_807C0D0(temp_r5_12, 0x208A, 0);
    *((u8 *) (((s8 *) temp_r0_53) + 0x79)) = (u8) (((*((u8 *) (((s8 *) temp_r0_53) + 0x79))) | 1) | new_var3);
    *((s16 *) (((s8 *) (*((void **) (((s8 *) temp_r0_53) + 8)))) + 0xE)) = (s16) ((*((u16 *) (((s8 *) (*(new_var2 = (void **) (((s8 *) temp_r5_12) + 8)))) + 0xE))) + 3);
    *((s32 *) (((s8 *) temp_r0_53) + 0x10)) = (s32) ((*((s32 *) (((s8 *) temp_r0_53) + 0x10))) + 0xE00);
    *((s32 *) (((s8 *) temp_r0_53) + 0x18)) = (s32) ((*((s32 *) (((s8 *) temp_r0_53) + 0x18))) + 0x1000);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_80CD2AC;
  }
}

ASM_FUNC("asm/nonmatching/sub_80CD2AC.s", void sub_80CD2AC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80CD398.s", void sub_80CD398(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80CDB04.s", void sub_80CDB04(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80CDBB8.s", void sub_80CDBB8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80CDCBC.s", void sub_80CDCBC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80CDD98.s", void sub_80CDD98(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80CDEA0.s", void sub_80CDEA0(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80CDFBC.s", void sub_80CDFBC(void));
ASM_FUNC("asm/nonmatching/sub_80CE1B4.s", void sub_80CE1B4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80CE360.s", void sub_80CE360(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80CEAAC.s", void sub_80CEAAC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80CEB8C.s", void sub_80CEB8C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80CEC94.s", void sub_80CEC94(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80CEDC0.s", void sub_80CEDC0(void));
ASM_FUNC("asm/nonmatching/sub_80CEFB8.s", void sub_80CEFB8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80CF060.s", void sub_80CF060(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80CF1B8.s", void sub_80CF1B8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80CFB38.s", void sub_80CFB38(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80CFC6C.s", void sub_80CFC6C(void *arg0));