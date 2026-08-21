#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8158A98 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158A98.s\"");
#else
void sub_8158A98(void *arg0, s32 arg1)
{
  int new_var;
  new_var = 0;
  *((s16 *) (((s8 *) arg0) + 0x18)) = 0xC8;
  *((s16 *) (((s8 *) arg0) + 0x20)) = (s16) (0 - arg1);
  *((s16 *) (((s8 *) arg0) + 0x38)) = new_var;
  *((s16 *) (((s8 *) sub_815FA3C(arg0)) + 0xC)) = 0;
  *((s8 *) (((s8 *) arg0) + 0x24)) = 4;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158ABC.s\"");
#else
#error "TODO: write sub_8158ABC to match asm/nonmatching/sub_8158ABC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158AEC.s\"");
#else
#error "TODO: write sub_8158AEC to match asm/nonmatching/sub_8158AEC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158B00.s\"");
#else
#error "TODO: write sub_8158B00 to match asm/nonmatching/sub_8158B00.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158B64.s\"");
#else
#error "TODO: write sub_8158B64 to match asm/nonmatching/sub_8158B64.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158B90.s\"");
#else
#error "TODO: write sub_8158B90 to match asm/nonmatching/sub_8158B90.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158BB4.s\"");
#else
#error "TODO: write sub_8158BB4 to match asm/nonmatching/sub_8158BB4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158BE0.s\"");
#else
#error "TODO: write sub_8158BE0 to match asm/nonmatching/sub_8158BE0.s, then delete this #error"
#endif
