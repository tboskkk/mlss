#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8046A10 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8046A10.s\"");
#else
void sub_8046A10(void *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0) + (0x2B5)))) {
        (*(s32 *)((s8 *)(arg0) + (0x25C))) = -1;
        (*(u8 *)((s8 *)(arg0) + (0x213))) = (u8) (-0x21 & (*(u8 *)((s8 *)(arg0) + (0x213))));
        (*(s32 *)((s8 *)(arg0) + (0x250))) = -1;
        (*(s32 *)((s8 *)(arg0) + (0x24C))) = -1;
        (*(u16 *)((s8 *)(arg0) + (0x23E))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x240)));
        if (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) != -1) {
            (*(u16 *)((s8 *)(arg0) + (0x266))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x268)));
            (*(u16 *)((s8 *)(arg0) + (0x268))) = 0xFFFFU;
        }
        (*(u8 *)((s8 *)(arg0) + (0x2B5))) = (u8) (-9 & (*(u8 *)((s8 *)(arg0) + (0x2B5))));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8046A90.s\"");
#else
#error "TODO: write sub_8046A90 to match asm/nonmatching/sub_8046A90.s, then delete this #error"
#endif
