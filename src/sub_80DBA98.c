#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DBA98 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBA98.s\"");
#else
#error "TODO: write sub_80DBA98 to match asm/nonmatching/sub_80DBA98.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBB1C.s\"");
#else
#error "TODO: write sub_80DBB1C to match asm/nonmatching/sub_80DBB1C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBBCC.s\"");
#else
#error "TODO: write sub_80DBBCC to match asm/nonmatching/sub_80DBBCC.s, then delete this #error"
#endif
