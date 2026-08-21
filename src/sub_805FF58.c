#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805FF58 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805FF58.s\"");
#else
#error "TODO: write sub_805FF58 to match asm/nonmatching/sub_805FF58.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805FF80.s\"");
#else
#error "TODO: write sub_805FF80 to match asm/nonmatching/sub_805FF80.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060090.s\"");
#else
#error "TODO: write sub_8060090 to match asm/nonmatching/sub_8060090.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806018C.s\"");
#else
#error "TODO: write sub_806018C to match asm/nonmatching/sub_806018C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80601D4.s\"");
#else
#error "TODO: write sub_80601D4 to match asm/nonmatching/sub_80601D4.s, then delete this #error"
#endif
