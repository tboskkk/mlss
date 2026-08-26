#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8099028 needs.

asm_unified(".include \"asm/macros.inc\"");


void sub_8099034(struct Entity *arg0);
s32 sub_8099028(struct Entity *arg0) {
    arg0->handler = (s32 *) &sub_8099034;
    return 1;
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
void sub_8099050(void *arg0);                       /* extern */

void sub_8099034(struct Entity *arg0) {
    sub_8082E1C(arg0, 0xF, 0, 0);
    arg0->handler = (s32 *) &sub_8099050;
}

ASM_FUNC("asm/nonmatching/sub_8099050.s", void sub_8099050(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80990B4.s", void sub_80990B4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80991DC.s", void sub_80991DC(void *arg0));
s32 sub_8087540(void *);                        /* extern */

void sub_80993A0(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8087540(arg0);
    }
}
