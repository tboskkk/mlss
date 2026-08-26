#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8070C84 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8070C84(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
}

ASM_FUNC("asm/nonmatching/sub_8070C8C.s", void sub_8070C8C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8070CF0.s", void sub_8070CF0(void *arg0));
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8071080;

void sub_8070D60(struct Entity *arg0) {
    sub_8082E1C(arg0, 5, 0, 0);
    play_sfx_80195B4(0x46, -1);
    arg0->handler = &sub_8071080;
}

extern s32 sub_806F47C;

void sub_8070D88(struct Entity *arg0) {
    s32 temp_r0_25;

    arg0->unk18 = (s32) (arg0->unk18 + arg0->unk8C);
    arg0->unk8C = (s32) (arg0->unk8C - 0x80);
    if ((s32) arg0->unk18 <= 0) {
        arg0->unk18 = 0;
        temp_r0_25 = arg0->unk9C - 1;
        arg0->unk9C = temp_r0_25;
        if (temp_r0_25 == 0) {
            arg0->unk8C = 0x300;
            return;
        }
        arg0->handler = &sub_806F47C;
    }
}
