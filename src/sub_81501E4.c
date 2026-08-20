#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81501E4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81501E4.s\"");
#else
void sub_81501E4(s32 param_1)
{
  s32 sVar1;
  
  sVar1 = param_1 << 0x10;
  sVar1 = sVar1 >> 0x10;
  if (sVar1 < 0xd1) {
    param_1 = 0x800;
  }
  else {
    if (sVar1 < 0x100) {
      if (0x98 < sVar1) {
        param_1 = 0xa00;
      }
      else {
        param_1 = 0x800;
      }
    }
    else {
      if (sVar1 < 0x160) {
        if (0xc8 < sVar1) {
          param_1 = 0xc00;
        }
        else {
          param_1 = 0xa00;
        }
      }
      else {
        if (sVar1 < 0x1e0) {
          param_1 = 0xe00;
        }
        else {
          if (0x200 < sVar1) {
            param_1 = 0x0;
          }
          else {
            param_1 = 0xa000;
          }
        }
      }
    }
  }
  return;
}
#endif
