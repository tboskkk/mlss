#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810FEF4 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_8110034;

void sub_810FEF4(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0xC;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8110034;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810FF18.s\"");
#else
#error "TODO: write sub_810FF18 to match asm/nonmatching/sub_810FF18.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810FF4C.s\"");
#else
#error "TODO: write sub_810FF4C to match asm/nonmatching/sub_810FF4C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810FF78.s\"");
#else
#error "TODO: write sub_810FF78 to match asm/nonmatching/sub_810FF78.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810FFB0.s\"");
#else
#error "TODO: write sub_810FFB0 to match asm/nonmatching/sub_810FFB0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110034.s\"");
#else
#error "TODO: write sub_8110034 to match asm/nonmatching/sub_8110034.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110078.s\"");
#else
#error "TODO: write sub_8110078 to match asm/nonmatching/sub_8110078.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81100B0.s\"");
#else
#error "TODO: write sub_81100B0 to match asm/nonmatching/sub_81100B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110134.s\"");
#else
#error "TODO: write sub_8110134 to match asm/nonmatching/sub_8110134.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110178.s\"");
#else
#error "TODO: write sub_8110178 to match asm/nonmatching/sub_8110178.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81101BC.s\"");
#else
#error "TODO: write sub_81101BC to match asm/nonmatching/sub_81101BC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81102A0.s\"");
#else
#error "TODO: write sub_81102A0 to match asm/nonmatching/sub_81102A0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110374.s\"");
#else
#error "TODO: write sub_8110374 to match asm/nonmatching/sub_8110374.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81104AC.s\"");
#else
#error "TODO: write sub_81104AC to match asm/nonmatching/sub_81104AC.s, then delete this #error"
#endif
