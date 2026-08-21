#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804A124 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804A124.s\"");
#else
#error "TODO: write sub_804A124 to match asm/nonmatching/sub_804A124.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804A4C8.s\"");
#else
#error "TODO: write sub_804A4C8 to match asm/nonmatching/sub_804A4C8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804A5D4.s\"");
#else
#error "TODO: write sub_804A5D4 to match asm/nonmatching/sub_804A5D4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804B028.s\"");
#else
#error "TODO: write sub_804B028 to match asm/nonmatching/sub_804B028.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804B25C.s\"");
#else
#error "TODO: write sub_804B25C to match asm/nonmatching/sub_804B25C.s, then delete this #error"
#endif
