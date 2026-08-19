#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DA690 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DA690.s\"");
#else
#error "TODO: write sub_81DA690 to match asm/nonmatching/sub_81DA690.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/BgAffineSet.s\"");
#else
#error "TODO: write BgAffineSet to match asm/nonmatching/BgAffineSet.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/CpuFastSet.s\"");
#else
#error "TODO: write CpuFastSet to match asm/nonmatching/CpuFastSet.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/CpuSet.s\"");
#else
#error "TODO: write CpuSet to match asm/nonmatching/CpuSet.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DA6A0.s\"");
#else
#error "TODO: write sub_81DA6A0 to match asm/nonmatching/sub_81DA6A0.s, then delete this #error"
#endif
