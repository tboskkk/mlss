#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8017E34 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8017E34.s\"");
#else
#error "TODO: write sub_8017E34 to match asm/nonmatching/sub_8017E34.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8018080.s\"");
#else
#error "TODO: write sub_8018080 to match asm/nonmatching/sub_8018080.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8018170.s\"");
#else
#error "TODO: write sub_8018170 to match asm/nonmatching/sub_8018170.s, then delete this #error"
#endif
