#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A0304 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A0304.s\"");
#else
#error "TODO: write sub_80A0304 to match asm/nonmatching/sub_80A0304.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A04F8.s\"");
#else
#error "TODO: write sub_80A04F8 to match asm/nonmatching/sub_80A04F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A0600.s\"");
#else
#error "TODO: write sub_80A0600 to match asm/nonmatching/sub_80A0600.s, then delete this #error"
#endif
