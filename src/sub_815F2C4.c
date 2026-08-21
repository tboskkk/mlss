#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815F2C4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F2C4.s\"");
#else
void *sub_815FA3C(void *);                          /* extern */

void sub_815F2C4(void *arg0, s32 arg1) {
    (*(s16 *)((s8 *)(arg0) + (0x18))) = 0x64;
    (*(s16 *)((s8 *)(arg0) + (0x20))) = (s16) (0 - arg1);
    (*(s16 *)((s8 *)(arg0) + (0x38))) = 0;
    (*(s16 *)((s8 *)(sub_815FA3C(arg0)) + (0xC))) = 0;
    (*(s8 *)((s8 *)(arg0) + (0x24))) = 3;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F2E8.s\"");
#else
#error "TODO: write sub_815F2E8 to match asm/nonmatching/sub_815F2E8.s, then delete this #error"
#endif
