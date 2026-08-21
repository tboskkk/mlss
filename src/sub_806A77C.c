#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806A77C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A77C.s\"");
#else
extern s32 sub_808750C;

void sub_806A77C(void *arg0) {
    s32 temp_r0_10;

    temp_r0_10 = (*(s32 *)((s8 *)(arg0) + (0x18))) + 0xFFFFFE00;
    (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r0_10;
    if (temp_r0_10 <= 0) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A7A0.s\"");
#else
#error "TODO: write sub_806A7A0 to match asm/nonmatching/sub_806A7A0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A7CC.s\"");
#else
#error "TODO: write sub_806A7CC to match asm/nonmatching/sub_806A7CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A7EC.s\"");
#else
#error "TODO: write sub_806A7EC to match asm/nonmatching/sub_806A7EC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A814.s\"");
#else
#error "TODO: write sub_806A814 to match asm/nonmatching/sub_806A814.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A83C.s\"");
#else
#error "TODO: write sub_806A83C to match asm/nonmatching/sub_806A83C.s, then delete this #error"
#endif
