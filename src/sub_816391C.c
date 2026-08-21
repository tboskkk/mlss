#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816391C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816391C.s\"");
#else
#error "TODO: write sub_816391C to match asm/nonmatching/sub_816391C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816393C.s\"");
#else
#error "TODO: write sub_816393C to match asm/nonmatching/sub_816393C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163978.s\"");
#else
#error "TODO: write sub_8163978 to match asm/nonmatching/sub_8163978.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81639C4.s\"");
#else
#error "TODO: write sub_81639C4 to match asm/nonmatching/sub_81639C4.s, then delete this #error"
#endif
