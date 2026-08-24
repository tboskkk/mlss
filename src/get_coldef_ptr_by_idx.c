#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// get_coldef_ptr_by_idx needs.

asm_unified(".include \"asm/macros.inc\"");

s32 get_coldef_ptr_by_idx(void *arg0, s32 arg1)
{
  s32 new_var;
  new_var = arg1 << 0x18;
  return (*((s32 *) (((s8 *) arg0) + 0xA0))) + (((u32) new_var) >> 0x16);
}

ASM_FUNC("asm/nonmatching/get_coldef_ptr_by_xz.s", s32 get_coldef_ptr_by_xz(void *arg0, s16 arg1, u16 arg2));