#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8171B44 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8171B44(void *arg0)
{
  int new_var;
  new_var = 0x2A;
  if (8 & (*((u16 *) (((s8 *) ((void *) 0x0300034C)) + new_var))))
  {
    *((s32 *) (((s8 *) arg0) + 0x44)) = 4;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171B60.s\"");
#else
#error "TODO: write sub_8171B60 to match asm/nonmatching/sub_8171B60.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171BF0.s\"");
#else
#error "TODO: write sub_8171BF0 to match asm/nonmatching/sub_8171BF0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171C20.s\"");
#else
#error "TODO: write sub_8171C20 to match asm/nonmatching/sub_8171C20.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171C88.s\"");
#else
#error "TODO: write sub_8171C88 to match asm/nonmatching/sub_8171C88.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171D58.s\"");
#else
#error "TODO: write sub_8171D58 to match asm/nonmatching/sub_8171D58.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171DD4.s\"");
#else
#error "TODO: write sub_8171DD4 to match asm/nonmatching/sub_8171DD4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171DF0.s\"");
#else
#error "TODO: write sub_8171DF0 to match asm/nonmatching/sub_8171DF0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171E2C.s\"");
#else
#error "TODO: write sub_8171E2C to match asm/nonmatching/sub_8171E2C.s, then delete this #error"
#endif
