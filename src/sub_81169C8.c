#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81169C8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81169C8.s\"");
#else
void sub_81169C8(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x1C))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x1C))) ^ 1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8116A2C.s\"");
#else
#error "TODO: write sub_8116A2C to match asm/nonmatching/sub_8116A2C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8116B48.s\"");
#else
#error "TODO: write sub_8116B48 to match asm/nonmatching/sub_8116B48.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8116CF4.s\"");
#else
#error "TODO: write sub_8116CF4 to match asm/nonmatching/sub_8116CF4.s, then delete this #error"
#endif
