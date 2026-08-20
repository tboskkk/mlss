#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DD76C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DD76C.s\"");
#else
u32 sub_81DD76C(void) {
    return 0xCA2246C0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DD774.s\"");
#else
u32 sub_81DD774(u32 r0) {
    return r0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DD77C.s\"");
#else
#error "TODO: write sub_81DD77C to match asm/nonmatching/sub_81DD77C.s, then delete this #error"
#endif
