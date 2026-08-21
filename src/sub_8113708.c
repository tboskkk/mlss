#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8113708 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8113708.s\"");
#else
#error "TODO: write sub_8113708 to match asm/nonmatching/sub_8113708.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81138B0.s\"");
#else
#error "TODO: write sub_81138B0 to match asm/nonmatching/sub_81138B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8113A54.s\"");
#else
#error "TODO: write sub_8113A54 to match asm/nonmatching/sub_8113A54.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8113AE0.s\"");
#else
#error "TODO: write sub_8113AE0 to match asm/nonmatching/sub_8113AE0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8113BA4.s\"");
#else
#error "TODO: write sub_8113BA4 to match asm/nonmatching/sub_8113BA4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8113CD4.s\"");
#else
#error "TODO: write sub_8113CD4 to match asm/nonmatching/sub_8113CD4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8113DC0.s\"");
#else
#error "TODO: write sub_8113DC0 to match asm/nonmatching/sub_8113DC0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8113E20.s\"");
#else
#error "TODO: write sub_8113E20 to match asm/nonmatching/sub_8113E20.s, then delete this #error"
#endif
