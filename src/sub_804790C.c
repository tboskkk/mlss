#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804790C needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_804790C(void *arg0, u8 arg1) {
    u8 temp_r1_7;

    temp_r1_7 = arg1;
    (*(u8 *)((s8 *)(arg0) + (0x239))) = temp_r1_7;
    (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x20))) = temp_r1_7;
}

void sub_8047928(void *arg0) {
    void *temp_r0_11;

    temp_r0_11 = (*(void **)((s8 *)(arg0) + (0x294)));
    sub_801E150(temp_r0_11, (*(u8 *)((s8 *)(temp_r0_11) + (0x21))), 0, 0, 0);
}
