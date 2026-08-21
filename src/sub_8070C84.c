#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8070C84 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8070C84(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070C8C.s\"");
#else
#error "TODO: write sub_8070C8C to match asm/nonmatching/sub_8070C8C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070CF0.s\"");
#else
#error "TODO: write sub_8070CF0 to match asm/nonmatching/sub_8070CF0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070D60.s\"");
#else
#error "TODO: write sub_8070D60 to match asm/nonmatching/sub_8070D60.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070D88.s\"");
#else
#error "TODO: write sub_8070D88 to match asm/nonmatching/sub_8070D88.s, then delete this #error"
#endif
