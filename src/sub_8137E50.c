#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8137E50 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8137E50.s", void sub_8137E50(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8137FA4.s", void sub_8137FA4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_813805C.s", void sub_813805C(void *arg0));
void sub_81381D4(void *arg0)
{
  s16 temp_r2_36;
  s16 temp_r2_74;
  void *new_var;
  if (!(0x20 & (*((u8 *) (((s8 *) arg0) + 0x216)))))
  {
    *((s32 *) (((s8 *) arg0) + 0xC)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0xC))) + (*((s16 *) (((s8 *) arg0) + 0x2D8))));
    new_var = arg0;
    *((s32 *) (((s8 *) new_var) + 0x10)) = (s32) ((*((s32 *) (((s8 *) new_var) + 0x10))) + (*((s16 *) (((s8 *) new_var) + 0x2DA))));
    *((u16 *) (((s8 *) new_var) + 0x2DE)) = (u16) ((*((u16 *) (((s8 *) new_var) + 0x2DE))) + 1);
    temp_r2_36 = *((s16 *) (((s8 *) new_var) + 0x2D8));
    if ((((((s32) temp_r2_36) > 0) && (((s32) ((*((s32 *) (((s8 *) new_var) + 0xC))) + 0x100)) > ((s32) (*((s32 *) (((s8 *) new_var) + 0x2CC)))))) || ((((s32) temp_r2_36) < 0) && (((s32) ((*((s32 *) (((s8 *) new_var) + 0xC))) + 0xFFFFFF00)) < ((s32) (*((s32 *) (((s8 *) new_var) + 0x2CC))))))) || (temp_r2_36 == 0))
    {
      *((s32 *) (((s8 *) new_var) + 0xC)) = (s32) (*((s32 *) (((s8 *) new_var) + 0x2CC)));
    }
    temp_r2_74 = *((s16 *) (((s8 *) new_var) + 0x2DA));
    if ((((((s32) temp_r2_74) > 0) && (((s32) ((*((s32 *) (((s8 *) new_var) + 0x10))) + 0x100)) > ((s32) (*((s32 *) (((s8 *) new_var) + 0x2D0)))))) || ((((s32) temp_r2_74) < 0) && (((s32) ((*((s32 *) (((s8 *) new_var) + 0x10))) + 0xFFFFFF00)) < ((s32) (*((s32 *) (((s8 *) new_var) + 0x2D0))))))) || (temp_r2_74 == 0))
    {
      *((s32 *) (((s8 *) new_var) + 0x10)) = (s32) (*((s32 *) (((s8 *) new_var) + 0x2D0)));
    }
  }
}

ASM_FUNC("asm/nonmatching/sub_81382A8.s", void sub_81382A8(void *arg0));