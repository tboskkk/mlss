#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808DFCC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808DFCC.s\"");
#else
#error "TODO: write sub_808DFCC to match asm/nonmatching/sub_808DFCC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808E034.s\"");
#else
#error "TODO: write sub_808E034 to match asm/nonmatching/sub_808E034.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808E09C.s\"");
#else
#error "TODO: write sub_808E09C to match asm/nonmatching/sub_808E09C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808E0C8.s\"");
#else
#error "TODO: write sub_808E0C8 to match asm/nonmatching/sub_808E0C8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808E0F0.s\"");
#else
#error "TODO: write sub_808E0F0 to match asm/nonmatching/sub_808E0F0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808E1C8.s\"");
#else
#error "TODO: write sub_808E1C8 to match asm/nonmatching/sub_808E1C8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808E2A0.s\"");
#else
#error "TODO: write sub_808E2A0 to match asm/nonmatching/sub_808E2A0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808E390.s\"");
#else
#error "TODO: write sub_808E390 to match asm/nonmatching/sub_808E390.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808E4B8.s\"");
#else
#error "TODO: write sub_808E4B8 to match asm/nonmatching/sub_808E4B8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808E650.s\"");
#else
#error "TODO: write sub_808E650 to match asm/nonmatching/sub_808E650.s, then delete this #error"
#endif
