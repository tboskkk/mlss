#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81233B4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81233B4.s\"");
#else
#error "TODO: write sub_81233B4 to match asm/nonmatching/sub_81233B4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8123BA8.s\"");
#else
#error "TODO: write sub_8123BA8 to match asm/nonmatching/sub_8123BA8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8123DC4.s\"");
#else
#error "TODO: write sub_8123DC4 to match asm/nonmatching/sub_8123DC4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_812418C.s\"");
#else
#error "TODO: write sub_812418C to match asm/nonmatching/sub_812418C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8124270.s\"");
#else
#error "TODO: write sub_8124270 to match asm/nonmatching/sub_8124270.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_812454C.s\"");
#else
#error "TODO: write sub_812454C to match asm/nonmatching/sub_812454C.s, then delete this #error"
#endif
