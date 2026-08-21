#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_809C9DC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809C9DC.s\"");
#else
void sub_809C9DC(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809CA24.s\"");
#else
#error "TODO: write sub_809CA24 to match asm/nonmatching/sub_809CA24.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809CA6C.s\"");
#else
#error "TODO: write sub_809CA6C to match asm/nonmatching/sub_809CA6C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809CA9C.s\"");
#else
#error "TODO: write sub_809CA9C to match asm/nonmatching/sub_809CA9C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809CAC8.s\"");
#else
#error "TODO: write sub_809CAC8 to match asm/nonmatching/sub_809CAC8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809CAF0.s\"");
#else
#error "TODO: write sub_809CAF0 to match asm/nonmatching/sub_809CAF0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809CC38.s\"");
#else
#error "TODO: write sub_809CC38 to match asm/nonmatching/sub_809CC38.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809CEB0.s\"");
#else
#error "TODO: write sub_809CEB0 to match asm/nonmatching/sub_809CEB0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809CFD4.s\"");
#else
#error "TODO: write sub_809CFD4 to match asm/nonmatching/sub_809CFD4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D24C.s\"");
#else
#error "TODO: write sub_809D24C to match asm/nonmatching/sub_809D24C.s, then delete this #error"
#endif
