#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810CCB0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810CCB0.s\"");
#else
#error "TODO: write sub_810CCB0 to match asm/nonmatching/sub_810CCB0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810CCC8.s\"");
#else
#error "TODO: write sub_810CCC8 to match asm/nonmatching/sub_810CCC8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810CCF4.s\"");
#else
#error "TODO: write sub_810CCF4 to match asm/nonmatching/sub_810CCF4.s, then delete this #error"
#endif
