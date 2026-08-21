#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80793F4 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_807940C;

void sub_80793F4(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_807940C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807940C.s\"");
#else
#error "TODO: write sub_807940C to match asm/nonmatching/sub_807940C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079450.s\"");
#else
#error "TODO: write sub_8079450 to match asm/nonmatching/sub_8079450.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079478.s\"");
#else
#error "TODO: write sub_8079478 to match asm/nonmatching/sub_8079478.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079484.s\"");
#else
#error "TODO: write sub_8079484 to match asm/nonmatching/sub_8079484.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80794FC.s\"");
#else
#error "TODO: write sub_80794FC to match asm/nonmatching/sub_80794FC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807953C.s\"");
#else
#error "TODO: write sub_807953C to match asm/nonmatching/sub_807953C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079568.s\"");
#else
#error "TODO: write sub_8079568 to match asm/nonmatching/sub_8079568.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80795D4.s\"");
#else
#error "TODO: write sub_80795D4 to match asm/nonmatching/sub_80795D4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079654.s\"");
#else
#error "TODO: write sub_8079654 to match asm/nonmatching/sub_8079654.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079688.s\"");
#else
#error "TODO: write sub_8079688 to match asm/nonmatching/sub_8079688.s, then delete this #error"
#endif
