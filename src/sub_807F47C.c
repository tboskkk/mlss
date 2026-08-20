#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807F47C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807F47C.s\"");
#else
void sub_807F47C(void *arg0) {
    void *temp_r2_17;
    void *var_r1_11;
    void *var_r5_8;

    var_r5_8 = NULL;
    var_r1_11 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x54)));
    if (var_r1_11 != NULL) {
loop_2:
        temp_r2_17 = (*(void **)((s8 *)(var_r1_11) + (0x34)));
        if (var_r1_11 == arg0) {
            if (var_r5_8 != NULL) {
                (*(void **)((s8 *)(var_r5_8) + (0x34))) = temp_r2_17;
            } else {
                (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x54))) = temp_r2_17;
            }
            (*(s32 *)((s8 *)(arg0) + (0x58))) = 0;
            (*(s32 *)((s8 *)(arg0) + (0x5C))) = 0;
            (*(s32 *)((s8 *)(arg0) + (0x60))) = 0;
            (*(s32 *)((s8 *)(arg0) + (0x64))) = 0;
            (*(s32 *)((s8 *)(arg0) + (0x34))) = 0;
            return;
        }
        var_r5_8 = var_r1_11;
        var_r1_11 = temp_r2_17;
        if (var_r1_11 == NULL) {

        } else {
            goto loop_2;
        }
    }
}
#endif
