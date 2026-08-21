#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8087038 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087038.s\"");
#else
void sub_8087038(void *arg0) {
    void *temp_r0_13;
    void *temp_r0_9;
    void *temp_r2_10;

    temp_r0_9 = *(void **)0x03000FD8;
    temp_r2_10 = (*(void **)((s8 *)(temp_r0_9) + (0x70)));
    temp_r0_13 = (*(void **)((s8 *)(temp_r0_9) + (0x74)));
    if ((((6 & (*(u8 *)((s8 *)(temp_r2_10) + (0x7E)))) != 2) || ((*(s32 *)((s8 *)((temp_r2_10 + 8)) + (0x4C))) == 0)) && (((6 & (*(u8 *)((s8 *)(temp_r0_13) + (0x7E)))) != 2) || ((*(s32 *)((s8 *)((temp_r0_13 + 8)) + (0x4C))) == 0))) {
        (*(s8 *)((s8 *)(temp_r2_10) + (0x7C))) = 0;
        (*(s8 *)((s8 *)((temp_r2_10 + 0x7C)) + (1))) = 0;
        (*(s8 *)((s8 *)(temp_r0_13) + (0x7C))) = 0;
        (*(s8 *)((s8 *)((temp_r0_13 + 0x7C)) + (1))) = 0;
        (*(u8 *)((s8 *)(temp_r2_10) + (0x81))) = (u8) (-5 & (*(u8 *)((s8 *)(temp_r2_10) + (0x81))));
        (*(u8 *)((s8 *)(temp_r0_13) + (0x81))) = (u8) (-5 & (*(u8 *)((s8 *)(temp_r0_13) + (0x81))));
        (*(s32 *)((s8 *)(arg0) + (4))) = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80870B4.s\"");
#else
#error "TODO: write sub_80870B4 to match asm/nonmatching/sub_80870B4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087124.s\"");
#else
#error "TODO: write sub_8087124 to match asm/nonmatching/sub_8087124.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80871A8.s\"");
#else
#error "TODO: write sub_80871A8 to match asm/nonmatching/sub_80871A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808722C.s\"");
#else
#error "TODO: write sub_808722C to match asm/nonmatching/sub_808722C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80872A8.s\"");
#else
#error "TODO: write sub_80872A8 to match asm/nonmatching/sub_80872A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087318.s\"");
#else
#error "TODO: write sub_8087318 to match asm/nonmatching/sub_8087318.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087360.s\"");
#else
#error "TODO: write sub_8087360 to match asm/nonmatching/sub_8087360.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808738C.s\"");
#else
#error "TODO: write sub_808738C to match asm/nonmatching/sub_808738C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80873B8.s\"");
#else
#error "TODO: write sub_80873B8 to match asm/nonmatching/sub_80873B8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087444.s\"");
#else
#error "TODO: write sub_8087444 to match asm/nonmatching/sub_8087444.s, then delete this #error"
#endif
