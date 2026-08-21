#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81218E0 needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_81218E0(void) {
    return 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81218E4.s\"");
#else
#error "TODO: write sub_81218E4 to match asm/nonmatching/sub_81218E4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8121910.s\"");
#else
#error "TODO: write sub_8121910 to match asm/nonmatching/sub_8121910.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81219C4.s\"");
#else
#error "TODO: write sub_81219C4 to match asm/nonmatching/sub_81219C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81219EC.s\"");
#else
#error "TODO: write sub_81219EC to match asm/nonmatching/sub_81219EC.s, then delete this #error"
#endif
