#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8154AAC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8154AAC.s\"");
#else
void sub_8154AAC(void *arg0) {
    s16 var_r0_33;
    s32 temp_r1_14;
    s32 temp_r1_38;
    void *temp_r0_12;

    temp_r0_12 = (*(void **)((s8 *)(*(void **)0x03001018) + (0x1C98)));
    temp_r1_14 = M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    switch (temp_r1_14) {                           /* irregular */
    case 0:
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) > 0) {
            var_r0_33 = 1;
block_15:
            (*(s16 *)((s8 *)(arg0) + (0x38))) = var_r0_33;
        }
        return;
    case 1:
        temp_r1_38 = M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
        if (temp_r1_38 == 0) {
            if ((s32) ((*(s32 *)((s8 *)(temp_r0_12) + (4))) - (*(s32 *)((s8 *)(arg0) + (4)))) <= 0x3BFF) {
                var_r0_33 = 2;
                goto block_15;
            }
        } else {
            if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) >= temp_r1_38) {
                (*(u16 *)((s8 *)(arg0) + (0x14))) = (u16) (*(u16 *)((s8 *)(temp_r0_12) + (0x14)));
                return;
            }
            (*(u16 *)((s8 *)(arg0) + (0x14))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x14))) + 2);
            return;
        }
        break;
    case 2:
        var_r0_33 = 0;
        (*(u16 *)((s8 *)(arg0) + (0x14))) = 0U;
        goto block_15;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8154B24.s\"");
#else
#error "TODO: write sub_8154B24 to match asm/nonmatching/sub_8154B24.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8154C08.s\"");
#else
#error "TODO: write sub_8154C08 to match asm/nonmatching/sub_8154C08.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8154C9C.s\"");
#else
#error "TODO: write sub_8154C9C to match asm/nonmatching/sub_8154C9C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8154D38.s\"");
#else
#error "TODO: write sub_8154D38 to match asm/nonmatching/sub_8154D38.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8154F9C.s\"");
#else
#error "TODO: write sub_8154F9C to match asm/nonmatching/sub_8154F9C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8155254.s\"");
#else
#error "TODO: write sub_8155254 to match asm/nonmatching/sub_8155254.s, then delete this #error"
#endif
