#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8142B4C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142B4C.s\"");
#else
extern s32 sub_813E504;
extern s32 sub_813E618;

void sub_8142B4C(void *arg1, s32 **arg2) {
    s32 temp_r0_11;

    temp_r0_11 = (*(s32 *)((s8 *)(arg1) + (0x18))) + 0x100;
    (*(s32 *)((s8 *)(arg1) + (0x18))) = temp_r0_11;
    if ((s32) ((*(s32 *)((s8 *)(arg1) + (0x14))) + temp_r0_11) >= (s32) (*(s32 *)((s8 *)(arg1) + (0x2D4)))) {
        (*(s32 **)((s8 *)(arg1) + (0x198))) = &sub_813E504;
        *arg2 = &sub_813E618;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142B88.s\"");
#else
#error "TODO: write sub_8142B88 to match asm/nonmatching/sub_8142B88.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142BCC.s\"");
#else
#error "TODO: write sub_8142BCC to match asm/nonmatching/sub_8142BCC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142C18.s\"");
#else
#error "TODO: write sub_8142C18 to match asm/nonmatching/sub_8142C18.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142C88.s\"");
#else
#error "TODO: write sub_8142C88 to match asm/nonmatching/sub_8142C88.s, then delete this #error"
#endif
