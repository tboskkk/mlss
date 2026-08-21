#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A6FEC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A6FEC.s\"");
#else
#error "TODO: write sub_80A6FEC to match asm/nonmatching/sub_80A6FEC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A7094.s\"");
#else
#error "TODO: write sub_80A7094 to match asm/nonmatching/sub_80A7094.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A71A8.s\"");
#else
#error "TODO: write sub_80A71A8 to match asm/nonmatching/sub_80A71A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A7910.s\"");
#else
#error "TODO: write sub_80A7910 to match asm/nonmatching/sub_80A7910.s, then delete this #error"
#endif
