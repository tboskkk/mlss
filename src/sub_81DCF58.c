#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DCF58 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DCF58.s\"");
#else
u32 sub_81DCF58(void) {
    u32 r0 = 0x13;
    u32 r1 = 0x00;
    SWI(171);
    return r0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DCF6C.s\"");
#else
#error "TODO: write sub_81DCF6C to match asm/nonmatching/sub_81DCF6C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DCF80.s\"");
#else
#error "TODO: write sub_81DCF80 to match asm/nonmatching/sub_81DCF80.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DCF98.s\"");
#else
#error "TODO: write sub_81DCF98 to match asm/nonmatching/sub_81DCF98.s, then delete this #error"
#endif
