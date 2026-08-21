#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DE948 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_808750C;

void sub_80DE948(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DE960.s\"");
#else
#error "TODO: write sub_80DE960 to match asm/nonmatching/sub_80DE960.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DE980.s\"");
#else
#error "TODO: write sub_80DE980 to match asm/nonmatching/sub_80DE980.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DE9A0.s\"");
#else
#error "TODO: write sub_80DE9A0 to match asm/nonmatching/sub_80DE9A0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DE9F0.s\"");
#else
#error "TODO: write sub_80DE9F0 to match asm/nonmatching/sub_80DE9F0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DEA2C.s\"");
#else
#error "TODO: write sub_80DEA2C to match asm/nonmatching/sub_80DEA2C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DEA98.s\"");
#else
#error "TODO: write sub_80DEA98 to match asm/nonmatching/sub_80DEA98.s, then delete this #error"
#endif
