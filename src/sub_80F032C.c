#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F032C needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_80E6FB8(s32, s32);                      /* extern */
s32 sub_80E7118(s32, s32);                      /* extern */

void sub_80F032C(void) {
    sub_80E6FB8(*(s32 *)0x03000FCC, 4);
    sub_80E7118(*(s32 *)0x03000FCC, 0x10);
}

ASM_FUNC("asm/nonmatching/sub_80F034C.s", void sub_80F034C(void **arg0, s32 arg1));
s32 sub_8028E70(s32);                               /* extern */
s32 sub_80EA778(void *, void *);                /* extern */
void sub_80F03C8(void **arg0)
{
  void *temp_r0_9;
  void *temp_r5_12;
  temp_r0_9 = *((void **) 0x03000FD0);
  temp_r5_12 = temp_r0_9 + 0x1F8;
  if ((0x100 & (*((u16 *) (((s8 *) temp_r0_9) + 0x298)))) && ((sub_8028E70(*((s32 *) (((s8 *) (*arg0)) + 0x14))) << 0x18) == 0))
  {
    *((u16 *) (((s8 *) temp_r0_9) + 0x298)) = (u16) (0x100 ^ (*((u16 *) (((s8 *) temp_r0_9) + 0x298))));
  }
 do { if (0x10 & (*((u16 *) (((s8 *) temp_r5_12) + 0xA0)))) { sub_80EA778((*arg0) + 0x1C, temp_r5_12); } } while (0);
}

ASM_FUNC("asm/nonmatching/sub_80F0420.s", void sub_80F0420(void **arg0, s32 arg1));
ASM_FUNC("asm/nonmatching/bevs_process_init_80F048C.s", void ** bevs_process_init_80F048C(void **arg0, s32 arg1, u8 arg2, s32 arg3));