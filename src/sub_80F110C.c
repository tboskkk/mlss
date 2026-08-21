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
