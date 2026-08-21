#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806A97C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A97C.s\"");
#else
extern s32 sub_806A510;

void sub_806A97C(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x1E;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806A510;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806AA18.s\"");
#else
#error "TODO: write sub_806AA18 to match asm/nonmatching/sub_806AA18.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806AB58.s\"");
#else
#error "TODO: write sub_806AB58 to match asm/nonmatching/sub_806AB58.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806ACA4.s\"");
#else
#error "TODO: write sub_806ACA4 to match asm/nonmatching/sub_806ACA4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806AEFC.s\"");
#else
#error "TODO: write sub_806AEFC to match asm/nonmatching/sub_806AEFC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806AF80.s\"");
#else
#error "TODO: write sub_806AF80 to match asm/nonmatching/sub_806AF80.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806AFEC.s\"");
#else
#error "TODO: write sub_806AFEC to match asm/nonmatching/sub_806AFEC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806B084.s\"");
#else
#error "TODO: write sub_806B084 to match asm/nonmatching/sub_806B084.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806B0EC.s\"");
#else
#error "TODO: write sub_806B0EC to match asm/nonmatching/sub_806B0EC.s, then delete this #error"
#endif
