#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813C368 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813C368.s\"");
#else
void sub_813C368(void *arg1) {
    void *temp_r2_10;

    temp_r2_10 = (*(void **)((s8 *)(arg1) + (0x294)));
    (*(u8 *)((s8 *)(temp_r2_10) + (0x11))) = (u8) ((*(u8 *)((s8 *)(temp_r2_10) + (0x11))) | 0x40);
    (*(u8 *)((s8 *)(arg1) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg1) + (0x214)))) | 4);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813C3C8.s\"");
#else
#error "TODO: write sub_813C3C8 to match asm/nonmatching/sub_813C3C8.s, then delete this #error"
#endif
