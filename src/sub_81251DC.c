#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81251DC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81251DC.s\"");
#else
u32 sub_81251DC(void)
{
    return (*(u32*)0x03000FFC) + 0x00001FF8;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81251F0.s\"");
#else
#error "TODO: write sub_81251F0 to match asm/nonmatching/sub_81251F0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8125220.s\"");
#else
#error "TODO: write sub_8125220 to match asm/nonmatching/sub_8125220.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81252BC.s\"");
#else
#error "TODO: write sub_81252BC to match asm/nonmatching/sub_81252BC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/load_init_812538C.s\"");
#else
#error "TODO: write load_init_812538C to match asm/nonmatching/load_init_812538C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8125464.s\"");
#else
#error "TODO: write sub_8125464 to match asm/nonmatching/sub_8125464.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81254FC.s\"");
#else
#error "TODO: write sub_81254FC to match asm/nonmatching/sub_81254FC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8126520.s\"");
#else
#error "TODO: write sub_8126520 to match asm/nonmatching/sub_8126520.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8126C3C.s\"");
#else
#error "TODO: write sub_8126C3C to match asm/nonmatching/sub_8126C3C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81270E4.s\"");
#else
#error "TODO: write sub_81270E4 to match asm/nonmatching/sub_81270E4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8127238.s\"");
#else
#error "TODO: write sub_8127238 to match asm/nonmatching/sub_8127238.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_812791C.s\"");
#else
#error "TODO: write sub_812791C to match asm/nonmatching/sub_812791C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/tld_update_81279D8.s\"");
#else
#error "TODO: write tld_update_81279D8 to match asm/nonmatching/tld_update_81279D8.s, then delete this #error"
#endif
