#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80C0FA4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C0FA4.s\"");
#else
#error "TODO: write sub_80C0FA4 to match asm/nonmatching/sub_80C0FA4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C1054.s\"");
#else
#error "TODO: write sub_80C1054 to match asm/nonmatching/sub_80C1054.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C110C.s\"");
#else
#error "TODO: write sub_80C110C to match asm/nonmatching/sub_80C110C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C1790.s\"");
#else
#error "TODO: write sub_80C1790 to match asm/nonmatching/sub_80C1790.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C182C.s\"");
#else
#error "TODO: write sub_80C182C to match asm/nonmatching/sub_80C182C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C18E4.s\"");
#else
#error "TODO: write sub_80C18E4 to match asm/nonmatching/sub_80C18E4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C19E4.s\"");
#else
#error "TODO: write sub_80C19E4 to match asm/nonmatching/sub_80C19E4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C1AE8.s\"");
#else
#error "TODO: write sub_80C1AE8 to match asm/nonmatching/sub_80C1AE8.s, then delete this #error"
#endif
