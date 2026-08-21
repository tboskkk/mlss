#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80875B8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80875B8.s\"");
#else
extern s32 sub_8086090;

void sub_80875B8(void *arg0) {
    if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) > 0) {
        (*(u16 *)((s8 *)(arg0) + (0xAC))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0xAC))) - 1);
        return;
    }
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8086090;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80875E0.s\"");
#else
#error "TODO: write sub_80875E0 to match asm/nonmatching/sub_80875E0.s, then delete this #error"
#endif
