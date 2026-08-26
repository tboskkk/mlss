#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F8C60 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_80F8C60(struct Entity *arg0, void *arg1) {
    if ((*(s32 *)((s8 *)(arg0->unk2C) + (0x1788))) & 0x4000) {
        (*(u16 *)((s8 *)(arg1) + (0xA0))) = (u16) (0xFDFF & (*(u16 *)((s8 *)(arg1) + (0xA0))));
    }
}

void sub_80F8C8C(void *arg0, void *arg1)
{
  u8 new_var2;
  s32 new_var3;
  s8 *new_var;
  new_var2 = ((u8) (*((u8 *) (((s8 *) arg1) + 0xFD)))) >> 4;
  new_var3 = *((s32 *) (((s8 *) arg0) + 0x2C));
  if (!(0x20 & (*((u16 *) (((s8 *) ((new_var2 << 8) + new_var3)) + 0x7A0)))))
  {
    new_var = ((s8 *) arg1) + 0xA0;
    *((u16 *) (((s8 *) arg1) + 0xA0)) = (u16) (0xF7FF & (*((u16 *) ((0, new_var)))));
  }
}

ASM_FUNC("asm/nonmatching/sub_80F8CC0.s", void sub_80F8CC0(void *arg0, s32 arg1, u8 arg2, u8 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7));
ASM_FUNC("asm/nonmatching/sub_80F8D6C.s", void sub_80F8D6C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4));