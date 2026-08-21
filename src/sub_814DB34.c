#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_814DB34 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814DB34.s\"");
#else
#error "TODO: write sub_814DB34 to match asm/nonmatching/sub_814DB34.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814DB8C.s\"");
#else
#error "TODO: write sub_814DB8C to match asm/nonmatching/sub_814DB8C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814DC6C.s\"");
#else
#error "TODO: write sub_814DC6C to match asm/nonmatching/sub_814DC6C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814DCC4.s\"");
#else
#error "TODO: write sub_814DCC4 to match asm/nonmatching/sub_814DCC4.s, then delete this #error"
#endif
