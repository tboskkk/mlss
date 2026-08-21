#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81386C0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81386C0.s\"");
#else
#error "TODO: write sub_81386C0 to match asm/nonmatching/sub_81386C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81387C8.s\"");
#else
#error "TODO: write sub_81387C8 to match asm/nonmatching/sub_81387C8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8138944.s\"");
#else
#error "TODO: write sub_8138944 to match asm/nonmatching/sub_8138944.s, then delete this #error"
#endif
