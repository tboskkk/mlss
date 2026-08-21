#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8079394 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079394.s\"");
#else
void sub_8079394(void *arg0) {
    s32 temp_r0_9;
    u8 var_r0_15;

    temp_r0_9 = (*(s32 *)((s8 *)(arg0) + (0x9C)));
    if (temp_r0_9 != 0) {
        if (temp_r0_9 == 1) {
            var_r0_15 = 0;
        } else {
            var_r0_15 = *(u8 *)0x03000ED0 + 1;
        }
        *(u8 *)0x03000ED0 = var_r0_15;
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80793C4.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80798A8;

void sub_80793C4(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8082E1C(arg0, 1, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80798A8;
        play_sfx_80195B4(0xAD, -1);
    }
}
#endif
