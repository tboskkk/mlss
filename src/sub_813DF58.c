#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813DF58 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813DF58.s\"");
#else
void sub_813DF58(s32 arg0, void *arg1, s32 *arg2) {
    u16 temp_r0_12;

    temp_r0_12 = (*(u16 *)((s8 *)(arg1) + (0x1D4))) - 1;
    (*(u16 *)((s8 *)(arg1) + (0x1D4))) = temp_r0_12;
    if ((temp_r0_12 << 0x10) == 0) {
        (*(s8 *)((s8 *)(arg1) + (0x239))) = 0x7F;
        *arg2 = 0x0813DFF1;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813DFA4.s\"");
#else
#error "TODO: write sub_813DFA4 to match asm/nonmatching/sub_813DFA4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813DFF8.s\"");
#else
#error "TODO: write sub_813DFF8 to match asm/nonmatching/sub_813DFF8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813E05C.s\"");
#else
#error "TODO: write sub_813E05C to match asm/nonmatching/sub_813E05C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813E140.s\"");
#else
#error "TODO: write sub_813E140 to match asm/nonmatching/sub_813E140.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813E20C.s\"");
#else
#error "TODO: write sub_813E20C to match asm/nonmatching/sub_813E20C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813E2A4.s\"");
#else
#error "TODO: write sub_813E2A4 to match asm/nonmatching/sub_813E2A4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813E338.s\"");
#else
#error "TODO: write sub_813E338 to match asm/nonmatching/sub_813E338.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813E468.s\"");
#else
#error "TODO: write sub_813E468 to match asm/nonmatching/sub_813E468.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813E504.s\"");
#else
#error "TODO: write sub_813E504 to match asm/nonmatching/sub_813E504.s, then delete this #error"
#endif
