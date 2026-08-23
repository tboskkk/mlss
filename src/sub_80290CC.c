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

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029120.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
