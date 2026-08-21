#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_814DCFC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814DCFC.s\"");
#else
#error "TODO: write sub_814DCFC to match asm/nonmatching/sub_814DCFC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814DD14.s\"");
#else
#error "TODO: write sub_814DD14 to match asm/nonmatching/sub_814DD14.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814DDF8.s\"");
#else
#error "TODO: write sub_814DDF8 to match asm/nonmatching/sub_814DDF8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814DF7C.s\"");
#else
#error "TODO: write sub_814DF7C to match asm/nonmatching/sub_814DF7C.s, then delete this #error"
#endif
