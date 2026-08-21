#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8107118 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8107118(void *arg0)
{
  int new_var2;
  void **new_var;
  u8 temp_r1_10;
  void *temp_r2_9;
  new_var = (void **) 0x03000FD8;
  temp_r2_9 = *new_var;
  temp_r1_10 = *((u8 *) (((s8 *) temp_r2_9) + 0xB));
  if (2 & temp_r1_10)
  {
    new_var2 = -3;
    new_var2 = new_var2 & temp_r1_10;
    *((u8 *) (((s8 *) temp_r2_9) + 0xB)) = (u8) new_var2;
    return;
  }
  *((s32 *) (((s8 *) arg0) + 4)) = (s32) (*((s32 *) (((s8 *) (*((void **) 0x03000FDC))) + 0x8E58)));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8107150.s\"");
#else
#error "TODO: write sub_8107150 to match asm/nonmatching/sub_8107150.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81071B8.s\"");
#else
#error "TODO: write sub_81071B8 to match asm/nonmatching/sub_81071B8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81071F0.s\"");
#else
#error "TODO: write sub_81071F0 to match asm/nonmatching/sub_81071F0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8107248.s\"");
#else
#error "TODO: write sub_8107248 to match asm/nonmatching/sub_8107248.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81072A8.s\"");
#else
#error "TODO: write sub_81072A8 to match asm/nonmatching/sub_81072A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81072DC.s\"");
#else
#error "TODO: write sub_81072DC to match asm/nonmatching/sub_81072DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8107360.s\"");
#else
#error "TODO: write sub_8107360 to match asm/nonmatching/sub_8107360.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8107380.s\"");
#else
#error "TODO: write sub_8107380 to match asm/nonmatching/sub_8107380.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81074EC.s\"");
#else
#error "TODO: write sub_81074EC to match asm/nonmatching/sub_81074EC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8107670.s\"");
#else
#error "TODO: write sub_8107670 to match asm/nonmatching/sub_8107670.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810776C.s\"");
#else
#error "TODO: write sub_810776C to match asm/nonmatching/sub_810776C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810787C.s\"");
#else
#error "TODO: write sub_810787C to match asm/nonmatching/sub_810787C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8107A5C.s\"");
#else
#error "TODO: write sub_8107A5C to match asm/nonmatching/sub_8107A5C.s, then delete this #error"
#endif
