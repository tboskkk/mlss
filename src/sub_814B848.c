#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_814B848 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814B848.s\"");
#else
s32 sub_8149EF4();                              /* extern */

void sub_814B848(void *arg1, s32 (**arg2)()) {
    (*(u8 *)((s8 *)(arg1) + (0x20E))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x20E))) | 4);
    *arg2 = sub_8149EF4;
    sub_8149EF4();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814B86C.s\"");
#else
#error "TODO: write sub_814B86C to match asm/nonmatching/sub_814B86C.s, then delete this #error"
#endif
