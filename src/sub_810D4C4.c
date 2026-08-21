#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810D4C4 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_810D4C4(void)
{
  int new_var3;
  void *new_var4;
  void **new_var;
  void *new_var2;
  new_var = (void **) 0x03000FD8;
  new_var4 = *((void **) (((s8 *) (new_var2 = *new_var)) + 0x310));
  new_var3 = 0x241;
  *((s16 *) (((s8 *) new_var4) + 0x18)) = new_var3;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D4E0.s\"");
#else
#error "TODO: write sub_810D4E0 to match asm/nonmatching/sub_810D4E0.s, then delete this #error"
#endif
