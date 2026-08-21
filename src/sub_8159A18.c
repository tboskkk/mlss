#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8159A18 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159A18.s\"");
#else
#error "TODO: write sub_8159A18 to match asm/nonmatching/sub_8159A18.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159A64.s\"");
#else
#error "TODO: write sub_8159A64 to match asm/nonmatching/sub_8159A64.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159A90.s\"");
#else
#error "TODO: write sub_8159A90 to match asm/nonmatching/sub_8159A90.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159BD8.s\"");
#else
#error "TODO: write sub_8159BD8 to match asm/nonmatching/sub_8159BD8.s, then delete this #error"
#endif
