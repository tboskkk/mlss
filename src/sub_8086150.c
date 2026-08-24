#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8086150 needs.

asm_unified(".include \"asm/macros.inc\"");


ASM_FUNC("asm/nonmatching/sub_8086150.s", void sub_8086150(void *arg0, s32 arg1, s32 arg2));
ASM_FUNC("asm/nonmatching/sub_8086318.s", void sub_8086318(void *arg0, s32 arg1, s32 arg2));
ASM_FUNC("asm/nonmatching/sub_8086424.s", void sub_8086424(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80865F4.s", void sub_80865F4(void *arg0));
s32 sub_807B7A8(void *);                        /* extern */
s32 sub_807FF48(s32, void *);                   /* extern */

s32 sub_8086700(void *arg0) {
    s32 temp_r1_11;
    u8 temp_r1_25;
    void *temp_r2_16;

    temp_r1_11 = 6 & (*(u8 *)((s8 *)(arg0) + (0x76)));
    if ((temp_r1_11 != 6) && (temp_r1_11 != 2)) {
        temp_r2_16 = (*(void **)((s8 *)(arg0) + (0x28)));
        if (temp_r2_16 != NULL) {
            temp_r1_25 = 2 & (*(u8 *)((s8 *)(temp_r2_16) + (0x111)));
            if (temp_r1_25 == 0) {
                (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0x08087441;
                (*(s32 *)((s8 *)(arg0) + (0x80))) = (s32) temp_r1_25;
                sub_807FF48(0x0808742D, temp_r2_16);
                (*(u8 *)((s8 *)(temp_r2_16) + (0x111))) = (u8) ((*(u8 *)((s8 *)(temp_r2_16) + (0x111))) | 1);
                sub_807B7A8((*(void **)((s8 *)(arg0) + (0x28))));
                return 1;
            }
        }
    }
    return 0;
}

ASM_FUNC("asm/nonmatching/sub_8086764.s", void sub_8086764(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8086858.s", void * sub_8086858(void *arg0, s16 arg1));