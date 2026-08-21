#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815EA08 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EA08.s\"");
#else
void sub_815EA08(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (4))) = 0x08CDCF50;
    (*(s32 *)((s8 *)(arg0) + (0))) = 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EA18.s\"");
#else
#error "TODO: write sub_815EA18 to match asm/nonmatching/sub_815EA18.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EA64.s\"");
#else
#error "TODO: write sub_815EA64 to match asm/nonmatching/sub_815EA64.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EACC.s\"");
#else
#error "TODO: write sub_815EACC to match asm/nonmatching/sub_815EACC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EB70.s\"");
#else
#error "TODO: write sub_815EB70 to match asm/nonmatching/sub_815EB70.s, then delete this #error"
#endif
