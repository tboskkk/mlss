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
s32 sub_8021ED8(s32);                           /* extern */

void sub_8051368(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x20F))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20F))) | 2);
    sub_8021ED8((*(s32 *)((s8 *)(arg0) + (0x294))));
    (*(s8 *)((s8 *)(arg0) + (0x23D))) = 7;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805139C.s\"");
#else
#error "TODO: write sub_805139C to match asm/nonmatching/sub_805139C.s, then delete this #error"
#endif
