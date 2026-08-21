#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807FE40 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FE40.s\"");
#else
s32 sub_807C298(void *);                        /* extern */

void sub_807FE40(void *arg0) {
    void *temp_r0_27;
    void *temp_r4_10;
    void *var_r2_15;

    if (arg0 != NULL) {
        temp_r4_10 = (*(void **)((s8 *)(arg0) + (0)));
        if (temp_r4_10 != NULL) {
            var_r2_15 = temp_r4_10;
loop_4:
            if ((*(s32 *)((s8 *)(var_r2_15) + (0x10))) == (*(s32 *)((s8 *)(arg0) + (4)))) {
                (*(s32 *)((s8 *)(var_r2_15) + (0x10))) = (s32) (*(s32 *)((s8 *)(var_r2_15) + (4)));
            }
            temp_r0_27 = (*(void **)((s8 *)(var_r2_15) + (0)));
            if (temp_r0_27 != arg0) {
                var_r2_15 = temp_r0_27;
                goto loop_4;
            }
            (*(void **)((s8 *)(var_r2_15) + (0))) = temp_r4_10;
            (*(void **)((s8 *)(arg0) + (0))) = NULL;
        }
        sub_807C298(arg0 + 8);
    }
}
#endif
