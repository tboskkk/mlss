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
void sub_80477A8(void *arg0, s32 arg1, s8 arg2) {
    void *temp_r5_19;
    void *temp_r5_30;

    (*(u8 *)((s8 *)(arg0) + (0x20D))) = (u8) (-0x11 & (*(u8 *)((s8 *)(arg0) + (0x20D))));
    temp_r5_19 = (*(void **)((s8 *)(arg0) + (0x294)));
    (*(u8 *)((s8 *)(temp_r5_19) + (0x1F))) = (u8) ((-4 & (*(u8 *)((s8 *)(temp_r5_19) + (0x1F)))) | (arg1 & 3));
    temp_r5_30 = (*(void **)((s8 *)(arg0) + (0x294)));
    (*(u8 *)((s8 *)(temp_r5_30) + (0x1F))) = (u8) ((-0xD & (*(u8 *)((s8 *)(temp_r5_30) + (0x1F)))) | ((arg2 & 3) * 4));
    (*(s8 *)((s8 *)(arg0) + (0x23C))) = arg2;
}
#endif
