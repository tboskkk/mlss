#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8082D40 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082D40.s\"");
#else
u16 sub_8082D40(u16 arg0) {
    return arg0 + 0x0776;
}
#endif

s16 sub_8082D50(int arg0)
{
  return *((s16 *) (arg0 + 0x774));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082D60.s\"");
#else
#error "TODO: write sub_8082D60 to match asm/nonmatching/sub_8082D60.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082D74.s\"");
#else
#error "TODO: write sub_8082D74 to match asm/nonmatching/sub_8082D74.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082E1C.s\"");
#else
#error "TODO: write sub_8082E1C to match asm/nonmatching/sub_8082E1C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80835E0.s\"");
#else
#error "TODO: write sub_80835E0 to match asm/nonmatching/sub_80835E0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80837F8.s\"");
#else
#error "TODO: write sub_80837F8 to match asm/nonmatching/sub_80837F8.s, then delete this #error"
#endif
