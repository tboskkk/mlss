#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8070510 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_8070534;

void sub_8070510(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s32 *)((s8 *)(arg0) + (0xA8))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0xA8))) + 1);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8070534;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070534.s\"");
#else
#error "TODO: write sub_8070534 to match asm/nonmatching/sub_8070534.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80705B4.s\"");
#else
#error "TODO: write sub_80705B4 to match asm/nonmatching/sub_80705B4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070604.s\"");
#else
#error "TODO: write sub_8070604 to match asm/nonmatching/sub_8070604.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070670.s\"");
#else
#error "TODO: write sub_8070670 to match asm/nonmatching/sub_8070670.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80706B0.s\"");
#else
#error "TODO: write sub_80706B0 to match asm/nonmatching/sub_80706B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80706E8.s\"");
#else
#error "TODO: write sub_80706E8 to match asm/nonmatching/sub_80706E8.s, then delete this #error"
#endif
