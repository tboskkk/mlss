#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81026DC needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_81026DC.s", void sub_81026DC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8102788.s", void sub_8102788(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8102CA4.s", void sub_8102CA4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8102EB0.s", void sub_8102EB0(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8102F54.s", void sub_8102F54(void *arg0));
ASM_FUNC("asm/nonmatching/sub_810326C.s", void sub_810326C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8103368.s", void sub_8103368(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8103528.s", void sub_8103528(void *arg0));
ASM_FUNC("asm/nonmatching/sub_81036C0.s", void sub_81036C0(void *arg0, s32 arg3));
extern s32 sub_8103900;

void sub_8103894(void *arg0) {
    u16 *temp_r1_29;
    u16 *temp_r1_43;
    void *temp_r1_19;
    void *temp_r1_36;
    void *temp_r3_25;

    if ((s32) (s16) (*(u16 *)((s8 *)(arg0) + (0x10))) > 0) {
        (*(u16 *)((s8 *)(arg0) + (0x10))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x10))) - 1);
        return;
    }
    (*(u16 *)((s8 *)(arg0) + (0x10))) = 0x40U;
    temp_r1_19 = (*(void **)((s8 *)(arg0) + (0xC)));
    (*(s32 *)((s8 *)(temp_r1_19) + (0x18))) = (s32) ((*(s32 *)((s8 *)(temp_r1_19) + (0x18))) + 0xFFFFFD00);
    temp_r3_25 = *(void **)0x03000FD8;
    temp_r1_29 = (*(u16 **)((s8 *)(temp_r3_25) + (0x368)));
    *temp_r1_29 -= 3;
    temp_r1_36 = (*(void **)((s8 *)(temp_r3_25) + (0x370)));
    (*(u16 *)((s8 *)(temp_r1_36) + (0x12))) = (u16) ((*(u16 *)((s8 *)(temp_r1_36) + (0x12))) - 3);
    temp_r1_43 = (*(u16 **)((s8 *)(temp_r3_25) + (0x36C)));
    *temp_r1_43 -= 3;
    (*(u16 *)((s8 *)(arg0) + (0x10))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x10))) - 3);
    (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8103900;
}
