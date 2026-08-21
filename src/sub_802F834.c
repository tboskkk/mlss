#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_802F834 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802F834.s\"");
#else
#error "TODO: write sub_802F834 to match asm/nonmatching/sub_802F834.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802F938.s\"");
#else
#error "TODO: write sub_802F938 to match asm/nonmatching/sub_802F938.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802FAE4.s\"");
#else
#error "TODO: write sub_802FAE4 to match asm/nonmatching/sub_802FAE4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802FD70.s\"");
#else
#error "TODO: write sub_802FD70 to match asm/nonmatching/sub_802FD70.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80303C4.s\"");
#else
#error "TODO: write sub_80303C4 to match asm/nonmatching/sub_80303C4.s, then delete this #error"
#endif
