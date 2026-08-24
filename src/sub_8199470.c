#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8199470 needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_8199470(u32 param_1)
{
  u16 *ptr = (u16 *) 0x04000006;
  u8 val;
  *((u8 *) param_1) = *ptr;
  return *((u8 *) param_1);
}

s32 sub_81DA690(s16, s16);                          /* extern */

u32 sub_8199480(s16 arg0, s16 arg1) {
    return (u32) (sub_81DA690(arg0, arg1) << 0x10) >> 0x18;
}

ASM_FUNC("asm/nonmatching/sub_8199498.s", s32 sub_8199498(s32 arg0));
ASM_FUNC("asm/nonmatching/sub_81994EC.s", void sub_81994EC(void*arg0, void*arg1));