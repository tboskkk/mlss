#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8106840 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106840.s\"");
#else
#error "TODO: write sub_8106840 to match asm/nonmatching/sub_8106840.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106874.s\"");
#else
#error "TODO: write sub_8106874 to match asm/nonmatching/sub_8106874.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81068A8.s\"");
#else
#error "TODO: write sub_81068A8 to match asm/nonmatching/sub_81068A8.s, then delete this #error"
#endif
