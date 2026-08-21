#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8099028 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_8099034;

s32 sub_8099028(void *arg0) {
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8099034;
    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8099034.s\"");
#else
#error "TODO: write sub_8099034 to match asm/nonmatching/sub_8099034.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8099050.s\"");
#else
#error "TODO: write sub_8099050 to match asm/nonmatching/sub_8099050.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80990B4.s\"");
#else
#error "TODO: write sub_80990B4 to match asm/nonmatching/sub_80990B4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80991DC.s\"");
#else
#error "TODO: write sub_80991DC to match asm/nonmatching/sub_80991DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80993A0.s\"");
#else
#error "TODO: write sub_80993A0 to match asm/nonmatching/sub_80993A0.s, then delete this #error"
#endif
