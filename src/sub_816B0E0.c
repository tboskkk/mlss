#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816B0E0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B0E0.s\"");
#else
#error "TODO: write sub_816B0E0 to match asm/nonmatching/sub_816B0E0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B0F4.s\"");
#else
#error "TODO: write sub_816B0F4 to match asm/nonmatching/sub_816B0F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B1A8.s\"");
#else
#error "TODO: write sub_816B1A8 to match asm/nonmatching/sub_816B1A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B21C.s\"");
#else
#error "TODO: write sub_816B21C to match asm/nonmatching/sub_816B21C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B230.s\"");
#else
#error "TODO: write sub_816B230 to match asm/nonmatching/sub_816B230.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B288.s\"");
#else
#error "TODO: write sub_816B288 to match asm/nonmatching/sub_816B288.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B2E0.s\"");
#else
#error "TODO: write sub_816B2E0 to match asm/nonmatching/sub_816B2E0.s, then delete this #error"
#endif
