#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// script_enable_flag_2 needs.

asm_unified(".include \"asm/macros.inc\"");

void script_enable_flag_2(void *arg2)
{
  int new_var2;
  s8 *new_var;
  new_var2 = 2 | (*((u16 *) (new_var + 0xA0)));
  *((u16 *) (new_var + 0xA0)) = (u16) new_var2;
  new_var = arg2;
}

ASM_FUNC("asm/nonmatching/sub_80F04F8.s", s32 sub_80F04F8(void *arg0, s32 arg1, s32 *arg2, void *arg3));