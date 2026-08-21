#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81109D0 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_808750C;

void sub_81109D0(void *arg0) {
    s32 temp_r0_10;

    temp_r0_10 = (*(s32 *)((s8 *)(arg0) + (0x18))) + 0xFFFFFE00;
    (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r0_10;
    if (temp_r0_10 <= 0) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81109F4.s\"");
#else
#error "TODO: write sub_81109F4 to match asm/nonmatching/sub_81109F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110A30.s\"");
#else
#error "TODO: write sub_8110A30 to match asm/nonmatching/sub_8110A30.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110A94.s\"");
#else
#error "TODO: write sub_8110A94 to match asm/nonmatching/sub_8110A94.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110B04.s\"");
#else
#error "TODO: write sub_8110B04 to match asm/nonmatching/sub_8110B04.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110B3C.s\"");
#else
#error "TODO: write sub_8110B3C to match asm/nonmatching/sub_8110B3C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110B84.s\"");
#else
#error "TODO: write sub_8110B84 to match asm/nonmatching/sub_8110B84.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110BF8.s\"");
#else
#error "TODO: write sub_8110BF8 to match asm/nonmatching/sub_8110BF8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110C88.s\"");
#else
#error "TODO: write sub_8110C88 to match asm/nonmatching/sub_8110C88.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110CB0.s\"");
#else
#error "TODO: write sub_8110CB0 to match asm/nonmatching/sub_8110CB0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110E30.s\"");
#else
#error "TODO: write sub_8110E30 to match asm/nonmatching/sub_8110E30.s, then delete this #error"
#endif
