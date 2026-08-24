#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// nullsub_4 needs.

asm_unified(".include \"asm/macros.inc\"");

void nullsub_4(void) {
}

s32 sub_8082AAC(s32);                           /* extern */

void sub_8081E74(void) {
    sub_8082AAC(0x2027);
    sub_8082AAC(0x2046);
    sub_8082AAC(0x2056);
    sub_8082AAC(0x2075);
    sub_8082AAC(0x2089);
}

ASM_FUNC("asm/nonmatching/sub_8081EAC.s", void sub_8081EAC(void));
ASM_FUNC("asm/nonmatching/sub_8081F34.s", void sub_8081F34(s32 arg0));
s32 process_enable(s32);                        /* extern */
s32 sub_80FC9A4(void *);                        /* extern */

void sub_8081F84(void *arg0) {
    process_enable((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x244))));
    (*(s32 (**)(void *))((s8 *)(arg0) + (4))) = sub_80FC9A4;
    sub_80FC9A4(arg0);
}
