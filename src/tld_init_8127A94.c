#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// tld_init_8127A94 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 process_add(void *, u8);                    /* extern */

void *tld_init_8127A94(void *arg0, u8 arg1) {
    process_add(arg0, arg1);
    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x08CDC3C8;
    return arg0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8127AB0.s\"");
#else
#error "TODO: write sub_8127AB0 to match asm/nonmatching/sub_8127AB0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8127ADC.s\"");
#else
#error "TODO: write sub_8127ADC to match asm/nonmatching/sub_8127ADC.s, then delete this #error"
#endif
