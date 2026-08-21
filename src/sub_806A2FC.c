#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806A2FC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A2FC.s\"");
#else
void sub_806A2FC(void *arg0)
{
  unsigned long temp_r0_11;
  temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1;
  *((u16 *) (((s8 *) arg0) + 0xAC)) = temp_r0_11;
  if (((s32) (temp_r0_11 << 0x10)) <= 0)
  {
    sub_8082E1C(arg0, 5, 0, 0);
    *((s32 *) 0x03000E3C) = sub_8086858(arg0, 0x1810);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8069558;
    play_sfx_80195B4(0xAF, -1);
  }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A348.s\"");
#else
#error "TODO: write sub_806A348 to match asm/nonmatching/sub_806A348.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A3C0.s\"");
#else
#error "TODO: write sub_806A3C0 to match asm/nonmatching/sub_806A3C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A3F8.s\"");
#else
#error "TODO: write sub_806A3F8 to match asm/nonmatching/sub_806A3F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A47C.s\"");
#else
#error "TODO: write sub_806A47C to match asm/nonmatching/sub_806A47C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A510.s\"");
#else
#error "TODO: write sub_806A510 to match asm/nonmatching/sub_806A510.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A638.s\"");
#else
#error "TODO: write sub_806A638 to match asm/nonmatching/sub_806A638.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A730.s\"");
#else
#error "TODO: write sub_806A730 to match asm/nonmatching/sub_806A730.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A760.s\"");
#else
#error "TODO: write sub_806A760 to match asm/nonmatching/sub_806A760.s, then delete this #error"
#endif
