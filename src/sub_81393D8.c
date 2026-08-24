#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81393D8 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_81387C8(void *, s32);                   /* extern */
s32 sub_8138B84(void *, s32);                   /* extern */
s32 sub_813B380(s32, void *);                   /* extern */
extern s32 sub_81397CC;

void sub_81393D8(s32 arg0, void *arg1) {
    sub_81387C8(arg1, 0);
    sub_8138B84(arg1, 0);
    (*(s32 (**)(s32, void *))((s8 *)(arg1) + (0x198))) = sub_813B380;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_81397CC;
    (*(s32 **)((s8 *)(arg1) + (0x1A4))) = &sub_81397CC;
    sub_813B380(arg0, arg1);
}

s32 sub_81370C4(void *, u16);                   /* extern */
s32 sub_81378CC(void *, s32, s32, s32);         /* extern */
s32 sub_81381D4(void *);                        /* extern */
u16 sub_81386C0();                                  /* extern */
void sub_813980C(s32 arg0, void *arg1, void *arg2);                       /* extern */

void sub_8139420(s32 arg0, void *arg1, s32 **arg2) {
    sub_81370C4(arg1, sub_81386C0());
    sub_81378CC(arg1, 1, (*(s16 *)((s8 *)(arg1) + (0x1B8))) << 8, (*(s16 *)((s8 *)(arg1) + (0x1BA))) << 8);
    sub_81381D4(arg1);
    *arg2 = (s32 *) &sub_813980C;
}

ASM_FUNC("asm/nonmatching/sub_813946C.s", void sub_813946C(s32 arg0, void *arg1));