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
#error "TODO: write sub_813B1A4 to match asm/nonmatching/sub_813B1A4.s, then delete this #error"
#endif
