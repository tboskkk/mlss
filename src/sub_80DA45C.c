#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DA45C needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_80DA480;

void sub_80DA45C(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DA480;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DA480.s\"");
#else
#error "TODO: write sub_80DA480 to match asm/nonmatching/sub_80DA480.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DA4B8.s\"");
#else
#error "TODO: write sub_80DA4B8 to match asm/nonmatching/sub_80DA4B8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DA66C.s\"");
#else
#error "TODO: write sub_80DA66C to match asm/nonmatching/sub_80DA66C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DA6D0.s\"");
#else
#error "TODO: write sub_80DA6D0 to match asm/nonmatching/sub_80DA6D0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DA8EC.s\"");
#else
#error "TODO: write sub_80DA8EC to match asm/nonmatching/sub_80DA8EC.s, then delete this #error"
#endif
