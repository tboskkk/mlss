#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8108CBC needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8108CBC(void *arg0) {
    (*(u16 *)((s8 *)(arg0) + (0x11E))) = (u16) (0xFFF & (*(u16 *)((s8 *)(arg0) + (0x11E))));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108CD0.s\"");
#else
#error "TODO: write sub_8108CD0 to match asm/nonmatching/sub_8108CD0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108D2C.s\"");
#else
#error "TODO: write sub_8108D2C to match asm/nonmatching/sub_8108D2C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108D8C.s\"");
#else
#error "TODO: write sub_8108D8C to match asm/nonmatching/sub_8108D8C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108DE4.s\"");
#else
#error "TODO: write sub_8108DE4 to match asm/nonmatching/sub_8108DE4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108E3C.s\"");
#else
#error "TODO: write sub_8108E3C to match asm/nonmatching/sub_8108E3C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108E94.s\"");
#else
#error "TODO: write sub_8108E94 to match asm/nonmatching/sub_8108E94.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108F14.s\"");
#else
#error "TODO: write sub_8108F14 to match asm/nonmatching/sub_8108F14.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108FE4.s\"");
#else
#error "TODO: write sub_8108FE4 to match asm/nonmatching/sub_8108FE4.s, then delete this #error"
#endif
