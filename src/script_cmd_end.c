#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// script_cmd_end needs.

asm_unified(".include \"asm/macros.inc\"");

s32 script_cmd_end(void *arg1)
{
  s8 *new_var;
  *((s32 *) (new_var + 4)) = (s32) (*((s32 *) (new_var + 0)));
  *((s32 *) (new_var + 0x10)) = 0;
  new_var = (s8 *) arg1;
  return 1;
}
