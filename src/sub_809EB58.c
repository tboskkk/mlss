#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_809EB58 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_809EA4C;

void sub_809EB58(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x80))) = 0;
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_809EA4C;
    (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0;
}

extern s32 sub_808750C;

void sub_809EB70(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809EB8C.s\"");
#else
#error "TODO: write sub_809EB8C to match asm/nonmatching/sub_809EB8C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809EBDC.s\"");
#else
#error "TODO: write sub_809EBDC to match asm/nonmatching/sub_809EBDC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809EC28.s\"");
#else
#error "TODO: write sub_809EC28 to match asm/nonmatching/sub_809EC28.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809ED4C.s\"");
#else
#error "TODO: write sub_809ED4C to match asm/nonmatching/sub_809ED4C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809EDE0.s\"");
#else
#error "TODO: write sub_809EDE0 to match asm/nonmatching/sub_809EDE0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809EE84.s\"");
#else
#error "TODO: write sub_809EE84 to match asm/nonmatching/sub_809EE84.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809EF58.s\"");
#else
#error "TODO: write sub_809EF58 to match asm/nonmatching/sub_809EF58.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809EFD0.s\"");
#else
#error "TODO: write sub_809EFD0 to match asm/nonmatching/sub_809EFD0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809F068.s\"");
#else
#error "TODO: write sub_809F068 to match asm/nonmatching/sub_809F068.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809F084.s\"");
#else
#error "TODO: write sub_809F084 to match asm/nonmatching/sub_809F084.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809F0A8.s\"");
#else
#error "TODO: write sub_809F0A8 to match asm/nonmatching/sub_809F0A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809F100.s\"");
#else
#error "TODO: write sub_809F100 to match asm/nonmatching/sub_809F100.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809F148.s\"");
#else
#error "TODO: write sub_809F148 to match asm/nonmatching/sub_809F148.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809F194.s\"");
#else
#error "TODO: write sub_809F194 to match asm/nonmatching/sub_809F194.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809F1EC.s\"");
#else
#error "TODO: write sub_809F1EC to match asm/nonmatching/sub_809F1EC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809F344.s\"");
#else
#error "TODO: write sub_809F344 to match asm/nonmatching/sub_809F344.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809F478.s\"");
#else
#error "TODO: write sub_809F478 to match asm/nonmatching/sub_809F478.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809F704.s\"");
#else
#error "TODO: write sub_809F704 to match asm/nonmatching/sub_809F704.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809FBB4.s\"");
#else
#error "TODO: write sub_809FBB4 to match asm/nonmatching/sub_809FBB4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809FC50.s\"");
#else
#error "TODO: write sub_809FC50 to match asm/nonmatching/sub_809FC50.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809FF4C.s\"");
#else
#error "TODO: write sub_809FF4C to match asm/nonmatching/sub_809FF4C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A0228.s\"");
#else
#error "TODO: write sub_80A0228 to match asm/nonmatching/sub_80A0228.s, then delete this #error"
#endif
