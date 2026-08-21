#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808C190 needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_808C190(u32* param_1) {
    param_1[0x4C / 4] = 0x0808C4C9;
    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808C19C.s\"");
#else
#error "TODO: write sub_808C19C to match asm/nonmatching/sub_808C19C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808C1C4.s\"");
#else
#error "TODO: write sub_808C1C4 to match asm/nonmatching/sub_808C1C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808C1FC.s\"");
#else
#error "TODO: write sub_808C1FC to match asm/nonmatching/sub_808C1FC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808C224.s\"");
#else
#error "TODO: write sub_808C224 to match asm/nonmatching/sub_808C224.s, then delete this #error"
#endif
