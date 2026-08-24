#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805F5E4 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_808750C;

void sub_805F5E4(struct Entity *arg0) {
    s32 temp_r0_11;

    temp_r0_11 = (*(s32 *)((s8 *)(arg0) + (0xA0))) - 1;
    (*(s32 *)((s8 *)(arg0) + (0xA0))) = temp_r0_11;
    if (temp_r0_11 < 0) {
        arg0->handler = &sub_808750C;
    }
}

s32 sub_8082B00();                                  /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
void sub_805F638(void *arg0);                       /* extern */

void sub_805F604(struct Entity *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 2, 0, 0);
        play_sfx_80195B4(0x118, -1);
        arg0->handler = (s32 *) &sub_805F638;
    }
}

ASM_FUNC("asm/nonmatching/sub_805F638.s", void sub_805F638(void *arg0));
void sub_805DF88(void *arg0, s32 arg3);                       /* extern */

void sub_805F690(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 4, 0, 0);
        arg0->handler = (s32 *) &sub_805DF88;
    }
}

ASM_FUNC("asm/nonmatching/sub_805F6BC.s", void sub_805F6BC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_805F778.s", void sub_805F778(void *arg0));
ASM_FUNC("asm/nonmatching/sub_805F910.s", void sub_805F910(void *arg0));
ASM_FUNC("asm/nonmatching/sub_805FA18.s", void sub_805FA18(void *arg0));
ASM_FUNC("asm/nonmatching/sub_805FAE8.s", void sub_805FAE8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_805FBB4.s", void sub_805FBB4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_805FC80.s", s16 sub_805FC80(void *arg0));
ASM_FUNC("asm/nonmatching/sub_805FCC8.s", s16 sub_805FCC8(void *arg0));
s32 sub_807C298(void *);                        /* extern */

void sub_805FD40(void *arg0) {
    if ((*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xBA))) == 0) {
        sub_807C298(arg0);
    }
}

ASM_FUNC("asm/nonmatching/sub_805FD5C.s", void sub_805FD5C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_805FDB8.s", void sub_805FDB8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_805FE74.s", void sub_805FE74(void *arg0));
ASM_FUNC("asm/nonmatching/sub_805FEF4.s", void sub_805FEF4(void *arg0));
void sub_805FF30(void *arg0) {
    s32 (*temp_r1_14)(void *);

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        temp_r1_14 = (*(s32 (**)(void *))((s8 *)(arg0) + (0x68)));
        if (temp_r1_14 != NULL) {
            temp_r1_14(arg0);
        }
        (*(s32 *)((s8 *)(arg0) + (0x6C))) = 0;
    }
}
