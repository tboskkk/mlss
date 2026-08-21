#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8051330 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051330.s\"");
#else
void sub_8051330(void *arg0) {
    if (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) != 0) {
        (*(s8 *)((s8 *)(arg0) + (0x23B))) = 0;
        (*(u16 *)((s8 *)(arg0) + (0x33E))) = (u16) (0xFFFFFE01 & (*(u16 *)((s8 *)(arg0) + (0x33E))));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051368.s\"");
#else
#error "TODO: write sub_8051368 to match asm/nonmatching/sub_8051368.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805139C.s\"");
#else
#error "TODO: write sub_805139C to match asm/nonmatching/sub_805139C.s, then delete this #error"
#endif
