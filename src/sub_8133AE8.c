#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8133AE8 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8133AE8.s", void sub_8133AE8(void *arg0));
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
void sub_81334F4(void *arg0);                       /* extern */
extern s32 sub_8133BC0;

void sub_8133B54(struct Entity *arg0) {
    s32 *var_r0_37;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        if ((s32) (*(s16 *)((s8 *)(arg0) + (0xAC))) < (s32) (*(s32 *)((s8 *)(arg0) + (0x9C)))) {
            (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x18))) + 0x1000);
            sub_8082E1C(arg0, 0xC, 0, 0);
            play_sfx_80195B4(0xD5, -1);
            var_r0_37 = &sub_8133BC0;
        } else {
            (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0;
            sub_8082E1C(arg0, 0xE, 0, 0);
            var_r0_37 = (s32 *) &sub_81334F4;
        }
        arg0->handler = var_r0_37;
    }
}
