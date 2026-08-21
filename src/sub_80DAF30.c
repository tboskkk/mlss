#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DAF30 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAF30.s\"");
#else
#error "TODO: write sub_80DAF30 to match asm/nonmatching/sub_80DAF30.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAF48.s\"");
#else
#error "TODO: write sub_80DAF48 to match asm/nonmatching/sub_80DAF48.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAF6C.s\"");
#else
#error "TODO: write sub_80DAF6C to match asm/nonmatching/sub_80DAF6C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAF84.s\"");
#else
#error "TODO: write sub_80DAF84 to match asm/nonmatching/sub_80DAF84.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAFA8.s\"");
#else
#error "TODO: write sub_80DAFA8 to match asm/nonmatching/sub_80DAFA8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DB014.s\"");
#else
#error "TODO: write sub_80DB014 to match asm/nonmatching/sub_80DB014.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DB080.s\"");
#else
#error "TODO: write sub_80DB080 to match asm/nonmatching/sub_80DB080.s, then delete this #error"
#endif
