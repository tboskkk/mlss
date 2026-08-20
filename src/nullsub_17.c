#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// nullsub_17 needs.

asm_unified(".include \"asm/macros.inc\"");

void nullsub_17(void) {
    return;
}

void sub_8018A4C(s32 arg0)
{
  s8 *new_var;
  void *new_var2;
  new_var2 = (void *) 0x0300034C;
  *((s32 *) (((s8 *) new_var2) + 0x24)) = arg0;
  new_var = (s8 *) new_var2;
  *((u8 *) (new_var + 0x889)) = (u8) ((*((u8 *) (((s8 *) new_var2) + 0x889))) | 1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8018A68.s\"");
#else
#error "TODO: write sub_8018A68 to match asm/nonmatching/sub_8018A68.s, then delete this #error"
#endif
