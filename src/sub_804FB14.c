#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804FB14 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FB14.s\"");
#else
#error "TODO: write sub_804FB14 to match asm/nonmatching/sub_804FB14.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FB28.s\"");
#else
#error "TODO: write sub_804FB28 to match asm/nonmatching/sub_804FB28.s, then delete this #error"
#endif
