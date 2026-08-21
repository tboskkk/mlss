#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// nullsub_4 needs.

asm_unified(".include \"asm/macros.inc\"");

void nullsub_4(void) {
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8081E74.s\"");
#else
#error "TODO: write sub_8081E74 to match asm/nonmatching/sub_8081E74.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8081EAC.s\"");
#else
#error "TODO: write sub_8081EAC to match asm/nonmatching/sub_8081EAC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8081F34.s\"");
#else
#error "TODO: write sub_8081F34 to match asm/nonmatching/sub_8081F34.s, then delete this #error"
#endif
