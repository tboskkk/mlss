#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8029060 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8029060(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x12C))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x12C))) | 2);
}

void sub_8029070(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x12C))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x12C))) | 1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029080.s\"");
#else
s32 process_disable();                          /* extern */
s32 sub_8122BA0(s32, s32);                      /* extern */

void sub_8029080(void *arg0) {
    process_disable();
    (*(s8 *)((s8 *)(arg0) + (0))) = 2;
    *(s8 *)0x03000C24 = 2;
    if (*(s32 *)0x03000C78 == 0) {
        *(s32 *)0x03000C78 = 0x0800063C;
    }
    sub_8122BA0((s32) ((*(u8 *)((s8 *)(arg0) + (0x12C))) << 0x18) >> 0x1A, 0);
    (*(u8 *)((s8 *)(arg0) + (0x12C))) = (u8) ((3 & (*(u8 *)((s8 *)(arg0) + (0x12C)))) | 0xF8);
}
#endif
