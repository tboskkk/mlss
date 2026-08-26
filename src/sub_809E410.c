#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_809E410 needs.

asm_unified(".include \"asm/macros.inc\"");

extern void sub_809E0EC();

void sub_809E410(void* p0)
{
    u16* p1 = (u16*)((u8*)p0 + 0xAC);
    u16* p2 = (u16*)((u8*)p0 + 0xAC);
    u16* p3 = (u16*)((u8*)p0 + 0xAC);
    u16 v0 = *p3;
    s16 v1 = *(s16*)((u8*)p0 + 0xAC);
    if (v1 > 0)
    {
        *p2 = v0 - 1;
    }
    else
    {
        *(u32*)((u8*)p0 + 0x4C) = (u32)sub_809E0EC;
    }
}

s32 sub_807C298(s32);                           /* extern */
s32 sub_8087CE4();                                  /* extern */

void sub_809E438(s32 arg0) {
    if ((sub_8087CE4() << 0x18) == 0) {
        sub_807C298(arg0);
    }
}

ASM_FUNC("asm/nonmatching/sub_809E454.s", void sub_809E454(void *arg0));
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_809E49C(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, -1, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

ASM_FUNC("asm/nonmatching/sub_809E4C4.s", void sub_809E4C4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809E5E4.s", void sub_809E5E4(void *arg0, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_809E7C0.s", void sub_809E7C0(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809E884.s", s32 sub_809E884(void *arg0, void *arg1));
ASM_FUNC("asm/nonmatching/sub_809E968.s", s32 sub_809E968(void *arg0, void *arg1));
ASM_FUNC("asm/nonmatching/sub_809EA4C.s", void sub_809EA4C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809EAD8.s", void sub_809EAD8(void *arg0));