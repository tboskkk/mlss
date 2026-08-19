#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DA6A8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DA6A8.s\"");
#else
u32 sub_81DA6A8(u32 r0) {
    swi(15);
    return r0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DA6AC.s\"");
#else
#error "TODO: write sub_81DA6AC to match asm/nonmatching/sub_81DA6AC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DA6B0.s\"");
#else
#error "TODO: write sub_81DA6B0 to match asm/nonmatching/sub_81DA6B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DA6B8.s\"");
#else
#error "TODO: write sub_81DA6B8 to match asm/nonmatching/sub_81DA6B8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DA6C0.s\"");
#else
#error "TODO: write sub_81DA6C0 to match asm/nonmatching/sub_81DA6C0.s, then delete this #error"
#endif
