#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8160EC4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8160EC4.s\"");
#else
void sub_8160EC4(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x804))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x80C))) = 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8160EDC.s\"");
#else
s32 process_remove(void *, s32);                /* extern */

void sub_8160EDC(void *arg0) {
    void *temp_r0_18;
    void *temp_r0_42;
    void *temp_r0_56;
    void *temp_r2_24;
    void *temp_r2_62;

    if (4 & (*(u16 *)((s8 *)((void *)0x0300034C) + (0x2A)))) {
        if (arg0 != NULL) {
            (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x08CDCFB0;
            temp_r0_18 = (*(void **)((s8 *)(arg0) + (0x1C)));
            if (temp_r0_18 != NULL) {
                process_remove(temp_r0_18, 3);
            }
            temp_r2_24 = (*(void **)((s8 *)(arg0) + (0x20)));
            if (temp_r2_24 != NULL) {
                (*(s32 (**)(void *, s32))((s8 *)((*(void **)((s8 *)(temp_r2_24) + (4)))) + (0xC)))(temp_r2_24 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), 3);
            }
            process_remove(arg0, 3);
        }
    } else {
        temp_r0_42 = (*(void **)((s8 *)(arg0) + (0x20)));
        if (((*(s32 (**)(void *, void *))((s8 *)((*(void **)((s8 *)(temp_r0_42) + (4)))) + (0x14)))(temp_r0_42 + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */), arg0) != 0) && (arg0 != NULL)) {
            (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x08CDCFB0;
            temp_r0_56 = (*(void **)((s8 *)(arg0) + (0x1C)));
            if (temp_r0_56 != NULL) {
                process_remove(temp_r0_56, 3);
            }
            temp_r2_62 = (*(void **)((s8 *)(arg0) + (0x20)));
            if (temp_r2_62 != NULL) {
                (*(s32 (**)(void *, s32))((s8 *)((*(void **)((s8 *)(temp_r2_62) + (4)))) + (0xC)))(temp_r2_62 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), 3);
            }
            process_remove(arg0, 3);
        }
    }
}
#endif
