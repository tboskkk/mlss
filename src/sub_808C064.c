#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808C064 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_808C348;

s32 sub_808C064(void *arg0) {
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808C348;
    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808C070.s\"");
#else
#error "TODO: write sub_808C070 to match asm/nonmatching/sub_808C070.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808C098.s\"");
#else
#error "TODO: write sub_808C098 to match asm/nonmatching/sub_808C098.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808C0C0.s\"");
#else
#error "TODO: write sub_808C0C0 to match asm/nonmatching/sub_808C0C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808C0E8.s\"");
#else
#error "TODO: write sub_808C0E8 to match asm/nonmatching/sub_808C0E8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808C110.s\"");
#else
#error "TODO: write sub_808C110 to match asm/nonmatching/sub_808C110.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808C174.s\"");
#else
#error "TODO: write sub_808C174 to match asm/nonmatching/sub_808C174.s, then delete this #error"
#endif
