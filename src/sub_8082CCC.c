#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8082CCC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082CCC.s\"");
#else
void sub_8082CCC(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4)
{
  int new_var;
  new_var = arg3 - arg4;
  *((s16 *) (((s8 *) arg1) + 0)) = (s16) (arg2 - (*((u16 *) (((s8 *) arg0) + 0x774))));
  *((s16 *) (((s8 *) arg1) + 2)) = (s16) (new_var - (*((u16 *) (((s8 *) arg0) + 0x776))));
  *((s16 *) (((s8 *) arg1) + 0xE)) = (s16) (0x1F0 - arg3);
}
#endif
