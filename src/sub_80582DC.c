#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80582DC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80582DC.s\"");
#else
#error "TODO: write sub_80582DC to match asm/nonmatching/sub_80582DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80584F8.s\"");
#else
#error "TODO: write sub_80584F8 to match asm/nonmatching/sub_80584F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80587BC.s\"");
#else
#error "TODO: write sub_80587BC to match asm/nonmatching/sub_80587BC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8058898.s\"");
#else
#error "TODO: write sub_8058898 to match asm/nonmatching/sub_8058898.s, then delete this #error"
#endif
