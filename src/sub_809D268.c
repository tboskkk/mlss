#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_809D268 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_809D2A8;

s32 sub_809D268(void *arg0) {
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_809D2A8;
    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D274.s\"");
#else
#error "TODO: write sub_809D274 to match asm/nonmatching/sub_809D274.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D2A8.s\"");
#else
#error "TODO: write sub_809D2A8 to match asm/nonmatching/sub_809D2A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D300.s\"");
#else
#error "TODO: write sub_809D300 to match asm/nonmatching/sub_809D300.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D358.s\"");
#else
#error "TODO: write sub_809D358 to match asm/nonmatching/sub_809D358.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D394.s\"");
#else
#error "TODO: write sub_809D394 to match asm/nonmatching/sub_809D394.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D3F4.s\"");
#else
#error "TODO: write sub_809D3F4 to match asm/nonmatching/sub_809D3F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D454.s\"");
#else
#error "TODO: write sub_809D454 to match asm/nonmatching/sub_809D454.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D49C.s\"");
#else
#error "TODO: write sub_809D49C to match asm/nonmatching/sub_809D49C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D4E4.s\"");
#else
#error "TODO: write sub_809D4E4 to match asm/nonmatching/sub_809D4E4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D59C.s\"");
#else
#error "TODO: write sub_809D59C to match asm/nonmatching/sub_809D59C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D69C.s\"");
#else
#error "TODO: write sub_809D69C to match asm/nonmatching/sub_809D69C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D7B8.s\"");
#else
#error "TODO: write sub_809D7B8 to match asm/nonmatching/sub_809D7B8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D8CC.s\"");
#else
#error "TODO: write sub_809D8CC to match asm/nonmatching/sub_809D8CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D91C.s\"");
#else
#error "TODO: write sub_809D91C to match asm/nonmatching/sub_809D91C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D994.s\"");
#else
#error "TODO: write sub_809D994 to match asm/nonmatching/sub_809D994.s, then delete this #error"
#endif
