#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_809EB58 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_809EA4C(void *arg0);                       /* extern */

void sub_809EB58(struct Entity *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x80))) = 0;
    arg0->handler = (s32 *) &sub_809EA4C;
    (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0;
}

extern s32 sub_808750C;

void sub_809EB70(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        arg0->handler = &sub_808750C;
    }
}

ASM_FUNC("asm/nonmatching/sub_809EB8C.s", void sub_809EB8C(void *arg0));
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
void sub_809E5E4(void *arg0, s32 arg3);                       /* extern */

void sub_809EBDC(struct Entity *arg0) {
    void *temp_r5_8;

    temp_r5_8 = arg0->unk2C;
    if ((*(s16 *)((s8 *)((*(void **)((s8 *)(temp_r5_8) + (0x28)))) + (0xEC))) == -1) {
        sub_8082E1C(arg0, 0x14, 0, 0);
    }
    if ((*(s16 *)((s8 *)((*(void **)((s8 *)(temp_r5_8) + (0x28)))) + (0xEC))) == -2) {
        sub_8082E1C(arg0, 0x15, 0, 0);
    }
    arg0->handler = (s32 *) &sub_809E5E4;
}

ASM_FUNC("asm/nonmatching/sub_809EC28.s", void sub_809EC28(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809ED4C.s", void sub_809ED4C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809EDE0.s", void sub_809EDE0(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809EE84.s", void sub_809EE84(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809EF58.s", void sub_809EF58(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809EFD0.s", void sub_809EFD0(void *arg0));
s32 sub_807C298(void *);                        /* extern */

void sub_809F068(void *arg0) {
    if ((*(u8 *)((s8 *)((*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x10)))) + (0x21))) == 0) {
        sub_807C298(arg0);
    }
}

s32 sub_807C298(void *);                        /* extern */
s32 sub_8087CE4();                              /* extern */

void sub_809F084(void *arg0) {
    sub_8087CE4();
    if (0x20 & (*(u8 *)((s8 *)(arg0) + (0x79)))) {
        sub_807C298(arg0);
    }
}

ASM_FUNC("asm/nonmatching/sub_809F0A8.s", s32 sub_809F0A8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809F100.s", s32 sub_809F100(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809F148.s", void sub_809F148(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809F194.s", void sub_809F194(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809F1EC.s", void sub_809F1EC(void *arg0, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_809F344.s", void sub_809F344(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809F478.s", void sub_809F478(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809F704.s", void sub_809F704(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809FBB4.s", void sub_809FBB4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809FC50.s", void sub_809FC50(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809FF4C.s", void sub_809FF4C(void *arg0, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_80A0228.s", void sub_80A0228(void *arg0));