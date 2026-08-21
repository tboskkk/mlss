#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81394CC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81394CC.s\"");
#else
#error "TODO: write sub_81394CC to match asm/nonmatching/sub_81394CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81394EC.s\"");
#else
#error "TODO: write sub_81394EC to match asm/nonmatching/sub_81394EC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139508.s\"");
#else
#error "TODO: write sub_8139508 to match asm/nonmatching/sub_8139508.s, then delete this #error"
#endif
