#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// nullsub_18 needs.

asm_unified(".include \"asm/macros.inc\"");

void nullsub_18(void) {
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80514C4.s\"");
#else
#error "TODO: write sub_80514C4 to match asm/nonmatching/sub_80514C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805155C.s\"");
#else
#error "TODO: write sub_805155C to match asm/nonmatching/sub_805155C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80515DC.s\"");
#else
#error "TODO: write sub_80515DC to match asm/nonmatching/sub_80515DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051608.s\"");
#else
#error "TODO: write sub_8051608 to match asm/nonmatching/sub_8051608.s, then delete this #error"
#endif
