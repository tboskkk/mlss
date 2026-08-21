#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8065E4C needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_8065ED4;

void sub_8065E4C(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8065ED4;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065E68.s\"");
#else
#error "TODO: write sub_8065E68 to match asm/nonmatching/sub_8065E68.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065EA0.s\"");
#else
#error "TODO: write sub_8065EA0 to match asm/nonmatching/sub_8065EA0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065ED4.s\"");
#else
#error "TODO: write sub_8065ED4 to match asm/nonmatching/sub_8065ED4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065F0C.s\"");
#else
#error "TODO: write sub_8065F0C to match asm/nonmatching/sub_8065F0C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065FBC.s\"");
#else
#error "TODO: write sub_8065FBC to match asm/nonmatching/sub_8065FBC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8066298.s\"");
#else
#error "TODO: write sub_8066298 to match asm/nonmatching/sub_8066298.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8066334.s\"");
#else
#error "TODO: write sub_8066334 to match asm/nonmatching/sub_8066334.s, then delete this #error"
#endif
