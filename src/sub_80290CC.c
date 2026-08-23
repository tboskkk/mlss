#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80290CC needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_80290CC(void *arg0, s32 arg1)
{
  u8 *new_var;
  int new_var2;
  new_var = (u8 *) (((s8 *) arg0) + 0x12C);
  new_var2 = arg1 * 4;
  *new_var = (u8) ((3 & (*((u8 *) (((s8 *) arg0) + 0x12C)))) | new_var2);
}

void sub_80290E0(void *arg0) {
    u32 temp_r0_30;
    void *var_r5_13;
    void *var_r6_14;

    if ((*(u32 *)((s8 *)(arg0) + (0xF0))) != 0) {
        var_r5_13 = (*(void **)((s8 *)(arg0) + (0x24)));
        var_r6_14 = (void *)0x02000080;
        do {
            if ((*(u32 *)((s8 *)(arg0) + (0xF0))) & 1) {
                CpuFastSet(var_r5_13, var_r6_14, 8U);
            }
            var_r5_13 += 0x20;
            var_r6_14 += 0x20;
            temp_r0_30 = (u32) (*(u32 *)((s8 *)(arg0) + (0xF0))) >> 1;
            (*(u32 *)((s8 *)(arg0) + (0xF0))) = temp_r0_30;
        } while (temp_r0_30 != 0);
    }
}

void sub_8029120(void *arg0, s32 arg1, u16 arg2) {
    void *sp0;
    s32 var_r7_14;
    u32 var_r4_11;
    void *var_r3_12;
    void *var_r5_13;

    var_r4_11 = arg2 | (arg1 << 0x10);
    var_r3_12 = (void *)0x02000080;
    var_r5_13 = (*(void **)((s8 *)(arg0) + (0x24)));
    var_r7_14 = 1;
    if (var_r4_11 != 0) {
        do {
            if (1 & var_r4_11) {
                sp0 = var_r3_12;
                CpuFastSet(var_r3_12, var_r5_13, 8U);
                (*(s32 *)((s8 *)(arg0) + (0xF0))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0xF0))) | var_r7_14);
            }
            var_r3_12 += 0x20;
            var_r5_13 += 0x20;
            var_r7_14 *= 2;
            var_r4_11 = var_r4_11 >> 1;
        } while (var_r4_11 != 0);
    }
}
