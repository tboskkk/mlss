#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DAAA4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAAA4.s\"");
#else
#error "TODO: write sub_80DAAA4 to match asm/nonmatching/sub_80DAAA4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAAC8.s\"");
#else
#error "TODO: write sub_80DAAC8 to match asm/nonmatching/sub_80DAAC8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAAEC.s\"");
#else
#error "TODO: write sub_80DAAEC to match asm/nonmatching/sub_80DAAEC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAB64.s\"");
#else
#error "TODO: write sub_80DAB64 to match asm/nonmatching/sub_80DAB64.s, then delete this #error"
#endif
