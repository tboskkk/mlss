#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801BC98 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_801BC98.s", s32 sub_801BC98(s32 arg0, s32 arg1));
ASM_FUNC("asm/nonmatching/time_init.s", s32 time_init(void *arg0, u8 arg1, s32 arg2));void sub_801BD30(void) {
    s32 temp_r0_8;

    temp_r0_8 = *(s32 *)0x03000D44;
    if (temp_r0_8 != 0) {
        sub_801BC98(temp_r0_8, 3);
        *(s32 *)0x03000D44 = 0;
    }
}

s32 process_disable();                          /* extern */
void sub_801BD50(unsigned int arg0)
{
  if ((*((s32 *) 0x03000D44)) == 0)
  {
    *((s32 *) 0x03000D44) = time_init(alloc_Zero(0x2CU, 0U, (s8 *) 0x081E23C8, 0U), arg0, 0x081E23C8);
    process_disable();
  }
}

ASM_FUNC("asm/nonmatching/sub_801BD88.s", void * sub_801BD88(void *arg0, u16 arg1, u16 arg2, u8 arg3));