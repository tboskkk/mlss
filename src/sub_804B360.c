#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804B360 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804B360.s\"");
#else
#error "TODO: write sub_804B360 to match asm/nonmatching/sub_804B360.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804D0EC.s\"");
#else
#error "TODO: write sub_804D0EC to match asm/nonmatching/sub_804D0EC.s, then delete this #error"
#endif
