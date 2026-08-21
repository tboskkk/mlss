#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804776C needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_804776C(void *arg0, s32 arg1)
{
  unsigned long long new_var;
  new_var = -2;
  *((u8 *) (((s8 *) arg0) + 0x20C)) = (u8) ((arg1 & 1) | (new_var & (*((u8 *) (((s8 *) arg0) + 0x20C)))));
}

void sub_8047784(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x20D))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20D))) | 0x10);
    (*(u8 *)((s8 *)(arg0) + (0x217))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x217))) | 1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80477A8.s\"");
#else
#error "TODO: write sub_80477A8 to match asm/nonmatching/sub_80477A8.s, then delete this #error"
#endif
