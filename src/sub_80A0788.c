#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A0788 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A0788.s\"");
#else
#error "TODO: write sub_80A0788 to match asm/nonmatching/sub_80A0788.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A07B0.s\"");
#else
#error "TODO: write sub_80A07B0 to match asm/nonmatching/sub_80A07B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A07D8.s\"");
#else
#error "TODO: write sub_80A07D8 to match asm/nonmatching/sub_80A07D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A0844.s\"");
#else
#error "TODO: write sub_80A0844 to match asm/nonmatching/sub_80A0844.s, then delete this #error"
#endif
