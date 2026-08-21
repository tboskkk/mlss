#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804034C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804034C.s\"");
#else
void sub_804034C(void *arg0) {
    s16 var_r0_38;

    if ((1 & (*(u8 *)((s8 *)(arg0) + (0x20C)))) && !(0x20 & (*(u8 *)((s8 *)(arg0) + (0x216))))) {
        if ((s32) (*(s32 *)((s8 *)(arg0) + (0x25C))) >= 0) {
            if ((s32) ((*(s32 *)((s8 *)(arg0) + (0x14))) + (*(s32 *)((s8 *)(arg0) + (0x18)))) >= (s32) ((*(s32 *)((s8 *)(arg0) + (0x3C))) + (*(s32 *)((s8 *)(arg0) + (0x40))))) {
                var_r0_38 = 2;
            } else {
                var_r0_38 = 3;
            }
            goto block_9;
        }
        if ((M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) != 0) || (var_r0_38 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), (var_r0_38 != 0))) {
            (*(s16 *)((s8 *)(arg0) + (4))) = 1;
            return;
        }
block_9:
        (*(s16 *)((s8 *)(arg0) + (4))) = var_r0_38;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80403C4.s\"");
#else
#error "TODO: write sub_80403C4 to match asm/nonmatching/sub_80403C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8040790.s\"");
#else
#error "TODO: write sub_8040790 to match asm/nonmatching/sub_8040790.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8040804.s\"");
#else
#error "TODO: write sub_8040804 to match asm/nonmatching/sub_8040804.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80409F4.s\"");
#else
#error "TODO: write sub_80409F4 to match asm/nonmatching/sub_80409F4.s, then delete this #error"
#endif
