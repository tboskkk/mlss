#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80208E0 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_80208E0(void *arg0) {
    void *temp_r2_6;

    temp_r2_6 = (*(void **)((s8 *)(arg0) + (0x48)));
    (*(s32 *)((s8 *)(temp_r2_6) + (0))) = 1;
    (*(s32 *)((s8 *)(temp_r2_6) + (4))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x50)));
    (*(s32 *)((s8 *)(temp_r2_6) + (8))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x4C)));
    (*(s32 *)((s8 *)(temp_r2_6) + (0xC))) = 0;
}
