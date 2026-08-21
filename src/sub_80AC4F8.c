#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80AC4F8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80AC4F8.s\"");
#else
extern s32 sub_80AC610;

void sub_80AC4F8(void *arg0) {
    s32 temp_r1_16;
    void *temp_r0_10;

    temp_r0_10 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x74)));
    temp_r1_16 = 6 & (*(u8 *)((s8 *)(temp_r0_10) + (0x7E)));
    if ((temp_r1_16 == 2) || (temp_r1_16 == 4)) {
        (*(s32 **)((s8 *)((temp_r0_10 + 8)) + (0x4C))) = &sub_80AC610;
    }
    (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0x080AC685;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80AC530.s\"");
#else
#error "TODO: write sub_80AC530 to match asm/nonmatching/sub_80AC530.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80AC5A4.s\"");
#else
#error "TODO: write sub_80AC5A4 to match asm/nonmatching/sub_80AC5A4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80AC610.s\"");
#else
#error "TODO: write sub_80AC610 to match asm/nonmatching/sub_80AC610.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80AC688.s\"");
#else
#error "TODO: write sub_80AC688 to match asm/nonmatching/sub_80AC688.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80AC71C.s\"");
#else
#error "TODO: write sub_80AC71C to match asm/nonmatching/sub_80AC71C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80AC950.s\"");
#else
#error "TODO: write sub_80AC950 to match asm/nonmatching/sub_80AC950.s, then delete this #error"
#endif
