#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163110 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8163110.s", s32 sub_8163110(s32 arg0));
ASM_FUNC("asm/nonmatching/sub_8163134.s", void sub_8163134(s32 arg0, u8 arg1));
void sub_816316C(struct Entity *arg0) {
    if (1 & (*(u16 *)((s8 *)(arg0) + (0x20)))) {
        (*(s16 *)((s8 *)((void *)0x02000010) + (0))) = (s16) arg0->unk18;
        (*(s16 *)((s8 *)((void *)0x02000010) + (2))) = (s16) (*(s32 *)((s8 *)(arg0) + (0x1C)));
    }
    if (2 & (*(u16 *)((s8 *)(arg0) + (0x20)))) {
        (*(s16 *)((s8 *)((void *)0x02000014) + (0))) = (s16) arg0->unk18;
        (*(s16 *)((s8 *)((void *)0x02000014) + (2))) = (s16) (*(s32 *)((s8 *)(arg0) + (0x1C)));
    }
    if (4 & (*(u16 *)((s8 *)(arg0) + (0x20)))) {
        (*(s16 *)((s8 *)((void *)0x02000018) + (0))) = (s16) arg0->unk18;
        (*(s16 *)((s8 *)((void *)0x02000018) + (2))) = (s16) (*(s32 *)((s8 *)(arg0) + (0x1C)));
    }
    if (8 & (*(u16 *)((s8 *)(arg0) + (0x20)))) {
        (*(s16 *)((s8 *)((void *)0x0200001C) + (0))) = (s16) arg0->unk18;
        (*(s16 *)((s8 *)((void *)0x0200001C) + (2))) = (s16) (*(s32 *)((s8 *)(arg0) + (0x1C)));
    }
}
