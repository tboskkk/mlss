#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813B178 needs.

asm_unified(".include \"asm/macros.inc\"");

volatile unsigned short sub_813B178(void *p0, void *p1)
{
  s32 r3 = (*((u32 *) (((u8 *) p0) + 0x0C))) - (*((u32 *) (((u8 *) p1) + 0x0C)));
  s32 r2 = (*((u32 *) (((u8 *) p0) + 0x10))) - (*((u32 *) (((u8 *) p1) + 0x10)));
  u32 *r4 = (u32 *) 0x03001038;
  s32 r0 = r3 * r3;
  s32 r1 = r2 * r2;
  r0 += r1;
  ((void (*)(s32)) (*((u32 *) (((u8 *) r4) + 0x00))))(r0);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B1A4.s\"");
#else
void sub_813B1A4(s32 arg0, void *arg1, s32 (**arg2)(s32, void *)) {
    s32 (*temp_r3_31)(s32, void *);
    u16 temp_r0_13;

    temp_r0_13 = (*(u16 *)((s8 *)(arg1) + (0x1D2))) - 1;
    (*(u16 *)((s8 *)(arg1) + (0x1D2))) = temp_r0_13;
    if ((temp_r0_13 << 0x10) == 0) {
        (*(u8 *)((s8 *)(arg1) + (0x1D6))) = (u8) (((*(u8 *)((s8 *)(arg1) + (0x1D6))) | 1) & ~2);
        temp_r3_31 = (*(s32 (**)(s32, void *))((s8 *)(arg1) + (0x1AC)));
        *arg2 = temp_r3_31;
        temp_r3_31(arg0, arg1);
    }
}
#endif

void sub_813B1E8(s32 arg0, void *arg1, s32 *arg2)
{
  int temp_r0_12;
  temp_r0_12 = (*((u16 *) (((s8 *) arg1) + 0x1D2))) - 1;
  *((u16 *) (((s8 *) arg1) + 0x1D2)) = temp_r0_12;
  if ((temp_r0_12 << 0x10) == 0)
  {
    temp_r0_12 = 2;
    *((u8 *) (((s8 *) arg1) + 0x1D6)) = (u8) (((*((u8 *) (((s8 *) arg1) + 0x1D6))) | 1) & (~temp_r0_12));
    *arg2 = *((s32 *) (((s8 *) arg1) + 0x1AC));
  }
}
