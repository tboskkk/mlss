#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_803E9F0 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_803E9F0(void *arg0) {
    return 1 & (*(u8 *)((s8 *)(arg0) + (0x291)));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803EA00.s\"");
#else
#error "TODO: write sub_803EA00 to match asm/nonmatching/sub_803EA00.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803F4FC.s\"");
#else
#error "TODO: write sub_803F4FC to match asm/nonmatching/sub_803F4FC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803F92C.s\"");
#else
#error "TODO: write sub_803F92C to match asm/nonmatching/sub_803F92C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803FBA4.s\"");
#else
#error "TODO: write sub_803FBA4 to match asm/nonmatching/sub_803FBA4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803FDBC.s\"");
#else
#error "TODO: write sub_803FDBC to match asm/nonmatching/sub_803FDBC.s, then delete this #error"
#endif
