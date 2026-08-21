#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8051614 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051614.s\"");
#else
void sub_8051614(void *arg1) {
    (*(s32 (**)())((s8 *)(arg1) + (0x1A0)))();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051628.s\"");
#else
#error "TODO: write sub_8051628 to match asm/nonmatching/sub_8051628.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051740.s\"");
#else
#error "TODO: write sub_8051740 to match asm/nonmatching/sub_8051740.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051A00.s\"");
#else
#error "TODO: write sub_8051A00 to match asm/nonmatching/sub_8051A00.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051A80.s\"");
#else
#error "TODO: write sub_8051A80 to match asm/nonmatching/sub_8051A80.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051ACC.s\"");
#else
#error "TODO: write sub_8051ACC to match asm/nonmatching/sub_8051ACC.s, then delete this #error"
#endif
