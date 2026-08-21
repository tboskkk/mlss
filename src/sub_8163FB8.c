#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163FB8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163FB8.s\"");
#else
void sub_8163FB8(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    (*(s32 *)((s8 *)(arg0) + (0))) = arg1;
    (*(s32 *)((s8 *)(arg0) + (4))) = arg2;
    (*(s32 *)((s8 *)(arg0) + (8))) = arg3;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163FF0.s\"");
#else
#error "TODO: write sub_8163FF0 to match asm/nonmatching/sub_8163FF0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8164294.s\"");
#else
#error "TODO: write sub_8164294 to match asm/nonmatching/sub_8164294.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8164654.s\"");
#else
#error "TODO: write sub_8164654 to match asm/nonmatching/sub_8164654.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81647E8.s\"");
#else
#error "TODO: write sub_81647E8 to match asm/nonmatching/sub_81647E8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81648A4.s\"");
#else
#error "TODO: write sub_81648A4 to match asm/nonmatching/sub_81648A4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81649AC.s\"");
#else
#error "TODO: write sub_81649AC to match asm/nonmatching/sub_81649AC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8164B58.s\"");
#else
#error "TODO: write sub_8164B58 to match asm/nonmatching/sub_8164B58.s, then delete this #error"
#endif
