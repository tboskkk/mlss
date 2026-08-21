#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8111214 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8111214.s\"");
#else
#error "TODO: write sub_8111214 to match asm/nonmatching/sub_8111214.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8111234.s\"");
#else
#error "TODO: write sub_8111234 to match asm/nonmatching/sub_8111234.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81112C4.s\"");
#else
#error "TODO: write sub_81112C4 to match asm/nonmatching/sub_81112C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8111344.s\"");
#else
#error "TODO: write sub_8111344 to match asm/nonmatching/sub_8111344.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_811152C.s\"");
#else
#error "TODO: write sub_811152C to match asm/nonmatching/sub_811152C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_811160C.s\"");
#else
#error "TODO: write sub_811160C to match asm/nonmatching/sub_811160C.s, then delete this #error"
#endif
