#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F110C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F110C.s\"");
#else
s32 sub_80F110C(s32 arg0, void *arg1, s32 *arg2, void *arg3) {
    if (((u32) ~(*(u32 *)((s8 *)(arg1) + (0x25C))) >> 0x1F) == (*(s32 *)((s8 *)(arg3) + (0)))) {
        *arg2 = (*(s32 *)((s8 *)(arg3) + (4)));
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F112C.s\"");
#else
#error "TODO: write sub_80F112C to match asm/nonmatching/sub_80F112C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1170.s\"");
#else
#error "TODO: write sub_80F1170 to match asm/nonmatching/sub_80F1170.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F11D0.s\"");
#else
#error "TODO: write sub_80F11D0 to match asm/nonmatching/sub_80F11D0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1230.s\"");
#else
#error "TODO: write sub_80F1230 to match asm/nonmatching/sub_80F1230.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F12C8.s\"");
#else
#error "TODO: write sub_80F12C8 to match asm/nonmatching/sub_80F12C8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F131C.s\"");
#else
#error "TODO: write sub_80F131C to match asm/nonmatching/sub_80F131C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F13A4.s\"");
#else
#error "TODO: write sub_80F13A4 to match asm/nonmatching/sub_80F13A4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F143C.s\"");
#else
#error "TODO: write sub_80F143C to match asm/nonmatching/sub_80F143C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1478.s\"");
#else
#error "TODO: write sub_80F1478 to match asm/nonmatching/sub_80F1478.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1490.s\"");
#else
#error "TODO: write sub_80F1490 to match asm/nonmatching/sub_80F1490.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F14C4.s\"");
#else
#error "TODO: write sub_80F14C4 to match asm/nonmatching/sub_80F14C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F14D4.s\"");
#else
#error "TODO: write sub_80F14D4 to match asm/nonmatching/sub_80F14D4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F155C.s\"");
#else
#error "TODO: write sub_80F155C to match asm/nonmatching/sub_80F155C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F15DC.s\"");
#else
#error "TODO: write sub_80F15DC to match asm/nonmatching/sub_80F15DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1648.s\"");
#else
#error "TODO: write sub_80F1648 to match asm/nonmatching/sub_80F1648.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F16C0.s\"");
#else
#error "TODO: write sub_80F16C0 to match asm/nonmatching/sub_80F16C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1738.s\"");
#else
#error "TODO: write sub_80F1738 to match asm/nonmatching/sub_80F1738.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/script_cmd_80F17C4.s\"");
#else
#error "TODO: write script_cmd_80F17C4 to match asm/nonmatching/script_cmd_80F17C4.s, then delete this #error"
#endif
