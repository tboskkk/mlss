#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80B2570 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80B2570.s", void sub_80B2570(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80B2BB8.s", void sub_80B2BB8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80B2E34.s", void sub_80B2E34(void));
ASM_FUNC("asm/nonmatching/sub_80B302C.s", void sub_80B302C(void *arg0));
s32 sub_807FB64(s32);                           /* extern */
s32 sub_8087CE4();                              /* extern */
extern s32 sub_80B325C;

void sub_80B30AC(struct Entity *arg0) {
    sub_8087CE4();
    if (0x20 & (*(u8 *)((s8 *)(arg0) + (0x79)))) {
        sub_807FB64((*(s32 *)((s8 *)(arg0) + (8))));
        arg0->handler = &sub_80B325C;
    }
}
