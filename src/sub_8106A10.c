#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8106A10 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_8104D14;

void sub_8106A10(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0xC)))) + (0x10)))) + (0x12)))) {
        (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8104D14;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106A30.s\"");
#else
#error "TODO: write sub_8106A30 to match asm/nonmatching/sub_8106A30.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106A88.s\"");
#else
#error "TODO: write sub_8106A88 to match asm/nonmatching/sub_8106A88.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106AC8.s\"");
#else
#error "TODO: write sub_8106AC8 to match asm/nonmatching/sub_8106AC8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106B0C.s\"");
#else
#error "TODO: write sub_8106B0C to match asm/nonmatching/sub_8106B0C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106B90.s\"");
#else
#error "TODO: write sub_8106B90 to match asm/nonmatching/sub_8106B90.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106BB0.s\"");
#else
#error "TODO: write sub_8106BB0 to match asm/nonmatching/sub_8106BB0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106BEC.s\"");
#else
#error "TODO: write sub_8106BEC to match asm/nonmatching/sub_8106BEC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106C10.s\"");
#else
#error "TODO: write sub_8106C10 to match asm/nonmatching/sub_8106C10.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106C64.s\"");
#else
#error "TODO: write sub_8106C64 to match asm/nonmatching/sub_8106C64.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106D20.s\"");
#else
#error "TODO: write sub_8106D20 to match asm/nonmatching/sub_8106D20.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106D54.s\"");
#else
#error "TODO: write sub_8106D54 to match asm/nonmatching/sub_8106D54.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106D9C.s\"");
#else
#error "TODO: write sub_8106D9C to match asm/nonmatching/sub_8106D9C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106DF0.s\"");
#else
#error "TODO: write sub_8106DF0 to match asm/nonmatching/sub_8106DF0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106E1C.s\"");
#else
#error "TODO: write sub_8106E1C to match asm/nonmatching/sub_8106E1C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106E58.s\"");
#else
#error "TODO: write sub_8106E58 to match asm/nonmatching/sub_8106E58.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106EB0.s\"");
#else
#error "TODO: write sub_8106EB0 to match asm/nonmatching/sub_8106EB0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106EE8.s\"");
#else
#error "TODO: write sub_8106EE8 to match asm/nonmatching/sub_8106EE8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106F34.s\"");
#else
#error "TODO: write sub_8106F34 to match asm/nonmatching/sub_8106F34.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106F8C.s\"");
#else
#error "TODO: write sub_8106F8C to match asm/nonmatching/sub_8106F8C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106FFC.s\"");
#else
#error "TODO: write sub_8106FFC to match asm/nonmatching/sub_8106FFC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8107040.s\"");
#else
#error "TODO: write sub_8107040 to match asm/nonmatching/sub_8107040.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810707C.s\"");
#else
#error "TODO: write sub_810707C to match asm/nonmatching/sub_810707C.s, then delete this #error"
#endif
