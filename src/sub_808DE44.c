#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808DE44 needs.

asm_unified(".include \"asm/macros.inc\"");


ASM_FUNC("asm/nonmatching/sub_808DE44.s", void sub_808DE44(void *arg0));
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
void sub_808DF5C(void *arg0);                       /* extern */
void sub_808DEA8(void *arg0)
{
  void *temp_r2_23;
  play_sfx_80195B4(0x2B, -1);
  *((s32 *) (((s8 *) arg0) + 0x94)) = -0x58;
  sub_8082E1C(arg0, 5, 0x2000, 0);
  temp_r2_23 = *((void **) (((s8 *) arg0) + 8));
  *((u8 *) (((s8 *) temp_r2_23) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_23) + 0x12))) | 2);
  *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_808DF5C;
}

ASM_FUNC("asm/nonmatching/sub_808DEEC.s", void sub_808DEEC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_808DF5C.s", void sub_808DF5C(void *arg0));