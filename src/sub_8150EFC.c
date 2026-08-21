#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8150EFC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150EFC.s\"");
#else
s32 sub_8150EFC(s32 arg0) {
    return arg0 + 0xC;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150F60.s\"");
#else
#error "TODO: write sub_8150F60 to match asm/nonmatching/sub_8150F60.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150F90.s\"");
#else
#error "TODO: write sub_8150F90 to match asm/nonmatching/sub_8150F90.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8151064.s\"");
#else
#error "TODO: write sub_8151064 to match asm/nonmatching/sub_8151064.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8151158.s\"");
#else
#error "TODO: write sub_8151158 to match asm/nonmatching/sub_8151158.s, then delete this #error"
#endif
