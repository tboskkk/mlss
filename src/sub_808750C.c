#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808750C needs.

asm_unified(".include \"asm/macros.inc\"");


extern s32 sub_80874B4;

void sub_808750C(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        arg0->handler = &sub_80874B4;
    }
}

void sub_8087524(struct Entity *arg0) {
    if ((*(u8 *)((s8 *)(arg0->unk08) + (0x21))) == 0) {
        arg0->handler = &sub_80874B4;
    }
}

s32 sub_807F47C(void *);                        /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80F75D8(s32);                           /* extern */

void sub_8087540(void *arg0) {
    void *temp_r1_8;

    temp_r1_8 = (*(void **)((s8 *)(arg0) + (0x28)));
    if ((temp_r1_8 != NULL) && (arg0 == (temp_r1_8 + 8)) && ((*(s32 *)((s8 *)(arg0) + (8))) != 0)) {
        (*(s16 *)((s8 *)(temp_r1_8) + (0x78))) = 0;
        sub_8082E1C(arg0, -1, -1, 0);
    }
    sub_807F47C(arg0);
    (*(s32 *)((s8 *)(arg0) + (0x68))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x54))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x6C))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x2C))) = 0;
    if ((6 & (*(u8 *)((s8 *)(arg0) + (0x76)))) == 2) {
        sub_80F75D8(0x40000);
    }
}

s32 sub_8082B00();                                  /* extern */

void sub_808759C(void *arg0) {
    if (sub_8082B00() == 0) {
        (*(s32 (**)(void *))((s8 *)((*(void **)((s8 *)(arg0) + (0x6C)))) + (4)))(arg0);
    }
}
