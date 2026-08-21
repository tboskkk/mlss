#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80604E0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80604E0.s\"");
#else
extern s32 sub_808750C;

void sub_80604E0(void *arg0) {
    u16 temp_r0_11;

    temp_r0_11 = (*(u16 *)((s8 *)(arg0) + (0xAC))) - 1;
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_11;
    if ((s32) (temp_r0_11 << 0x10) <= 0) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060500.s\"");
#else
#error "TODO: write sub_8060500 to match asm/nonmatching/sub_8060500.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060544.s\"");
#else
#error "TODO: write sub_8060544 to match asm/nonmatching/sub_8060544.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80605A4.s\"");
#else
#error "TODO: write sub_80605A4 to match asm/nonmatching/sub_80605A4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80605CC.s\"");
#else
#error "TODO: write sub_80605CC to match asm/nonmatching/sub_80605CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80605F8.s\"");
#else
#error "TODO: write sub_80605F8 to match asm/nonmatching/sub_80605F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806062C.s\"");
#else
#error "TODO: write sub_806062C to match asm/nonmatching/sub_806062C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060694.s\"");
#else
#error "TODO: write sub_8060694 to match asm/nonmatching/sub_8060694.s, then delete this #error"
#endif
