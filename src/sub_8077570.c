#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8077570 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8077570(void *arg0) {
    s32 var_r0_17;

    (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x18))) + (*(s32 *)((s8 *)(arg0) + (0x8C))));
    (*(s32 *)((s8 *)(arg0) + (0x8C))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x8C))) - 0x80);
    var_r0_17 = (*(s32 *)((s8 *)(arg0) + (0x18)));
    if (var_r0_17 < 0) {
        var_r0_17 += 0xFF;
    }
    if ((s32) (var_r0_17 >> 8) <= 0x28) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x2800;
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}
