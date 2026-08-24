#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8113F30 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8113F30.s", s32 sub_8113F30(void *arg0, void *arg1));
ASM_FUNC("asm/nonmatching/sub_8113FB4.s", void sub_8113FB4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_811403C.s", void sub_811403C(void *arg0));
s32 sub_807F47C(void *);                        /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80880C4(void *, s32);                   /* extern */
s32 sub_808843C(void *, s16, s16, s16, s32);    /* extern */
extern s32 sub_8114528;

void sub_81140C0(struct Entity *arg0) {
    void *temp_r4_10;

    temp_r4_10 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x30)));
    sub_808843C(temp_r4_10, (*(s16 *)((s8 *)(temp_r4_10) + (0x1C))), (*(s16 *)((s8 *)(temp_r4_10) + (0x1E))), (*(s16 *)((s8 *)(temp_r4_10) + (0x20))), 0x100);
    sub_80880C4(temp_r4_10, 0x400);
    sub_8082E1C(temp_r4_10, 7, 0, 0);
    sub_807F47C(temp_r4_10);
    arg0->handler = &sub_8114528;
}
