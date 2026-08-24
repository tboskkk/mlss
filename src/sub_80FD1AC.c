#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FD1AC needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80FD1AC.s", void sub_80FD1AC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80FD244.s", void sub_80FD244(void *arg0, s32 arg3));
s32 sub_807D77C(void *);                        /* extern */
s32 sub_80813A0();                              /* extern */
s32 sub_810DEB8(void *);                        /* extern */
void sub_80FD44C(void *arg0);                       /* extern */
void sub_80FDA34(void *arg0);                       /* extern */
extern s32 sub_81070B8;

void sub_80FD39C(void *arg0) {
    s32 *var_r0_45;
    void *temp_r3_9;
    void *temp_r4_10;
    void *temp_r4_70;

    temp_r3_9 = *(void **)0x03000FD8;
    temp_r4_10 = (*(void **)((s8 *)(temp_r3_9) + (0x7C)));
    if (((s32) (*(s16 *)((s8 *)(temp_r4_10) + (0xEC))) < 0) && (0x80 & (*(u8 *)((s8 *)(temp_r3_9) + (0xC)))) && !(((*(u16 *)((s8 *)((*(void **)((s8 *)(temp_r3_9) + (0x80)))) + (0x11E))) | (*(u16 *)((s8 *)((*(void **)((s8 *)((temp_r3_9 + 0x80)) + (4)))) + (0x11E)))) & 0x100)) {
        (*(s32 **)((s8 *)(*(void **)0x03000FDC) + (0x8E58))) = (s32 *) (*(s32 **)((s8 *)(arg0) + (4)));
        var_r0_45 = (s32 *) &sub_80FDA34;
    } else {
        sub_80813A0();
        if ((3 & (*(u16 *)((s8 *)(temp_r4_10) + (0x11E)))) && ((7 & (*(u8 *)((s8 *)(temp_r4_10) + (0x120)))) != 1)) {
            temp_r4_70 = temp_r4_10 + 8;
            sub_810DEB8(temp_r4_70);
            sub_807D77C(temp_r4_70);
            var_r0_45 = &sub_81070B8;
        } else {
            var_r0_45 = (s32 *) &sub_80FD44C;
        }
    }
    (*(s32 **)((s8 *)(arg0) + (4))) = var_r0_45;
}

ASM_FUNC("asm/nonmatching/sub_80FD44C.s", void sub_80FD44C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80FD6D4.s", void sub_80FD6D4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80FD828.s", void sub_80FD828(void *arg0));
s32 sub_8082E1C(s32, s32, s32, s32);            /* extern */
s32 sub_808842C(s32, s32, s32);                 /* extern */
s32 sub_808843C(s32, s32, s32, s32, s32);       /* extern */
s32 sub_8106F8C(void *);                        /* extern */
s32 sub_810C950();                              /* extern */

void sub_80FD8BC(void *arg0) {
    s32 var_r2_34;
    s32 var_r4_31;
    s32 var_r5_33;
    s32 var_r6_32;
    void *temp_r2_18;

    if (!(4 & (*(u8 *)((s8 *)(*(void **)0x03000FD8) + (0xB))))) {
        sub_810C950();
        temp_r2_18 = *(void **)0x03000FD8;
        if (4 & (*(u8 *)((s8 *)(temp_r2_18) + (0x2C0)))) {
            var_r4_31 = (*(s32 *)((s8 *)(temp_r2_18) + (0x80))) + 8;
            var_r6_32 = 0x28;
            var_r5_33 = 0x7C;
            var_r2_34 = 0x2039;
        } else {
            var_r4_31 = (*(s32 *)((s8 *)(temp_r2_18) + (0x84))) + 8;
            var_r6_32 = 0x36;
            var_r5_33 = 0x5C;
            var_r2_34 = 0x2068;
        }
        sub_8082E1C(var_r4_31, 3, var_r2_34, 0);
        sub_808843C(var_r4_31, var_r6_32, var_r5_33, 0, 0x100);
        sub_808842C(var_r4_31, 0x400, 0x20);
        (*(s32 (**)(void *))((s8 *)(arg0) + (4))) = sub_8106F8C;
        sub_8106F8C(arg0);
        play_sfx_80195B4(0x2B, -1);
    }
}

ASM_FUNC("asm/nonmatching/sub_80FD960.s", void sub_80FD960(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80FDA34.s", void sub_80FDA34(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80FDAFC.s", void sub_80FDAFC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80FDBB0.s", void sub_80FDBB0(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80FDC3C.s", void sub_80FDC3C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80FE2FC.s", void sub_80FE2FC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80FE4A4.s", void sub_80FE4A4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80FE5F8.s", void sub_80FE5F8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80FE9A0.s", void sub_80FE9A0(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80FEB64.s", void sub_80FEB64(void));
ASM_FUNC("asm/nonmatching/sub_80FECE8.s", void sub_80FECE8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80FEF14.s", void sub_80FEF14(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80FF410.s", void sub_80FF410(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80FFB70.s", void sub_80FFB70(void));