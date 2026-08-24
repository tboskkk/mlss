#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_809D9F4 needs.

asm_unified(".include \"asm/macros.inc\"");


ASM_FUNC("asm/nonmatching/sub_809D9F4.s", void sub_809D9F4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809DAD8.s", void sub_809DAD8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809DB6C.s", void sub_809DB6C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809DC4C.s", void sub_809DC4C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809DDA4.s", void sub_809DDA4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809DE48.s", void sub_809DE48(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809DEAC.s", void sub_809DEAC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809DFB8.s", s32 sub_809DFB8(void *arg0, void *arg1));
ASM_FUNC("asm/nonmatching/sub_809E05C.s", void sub_809E05C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809E0EC.s", void sub_809E0EC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_809E2E8.s", s32 sub_809E2E8());
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_807C298(void *);                        /* extern */
void sub_809E3E0(void *arg0) {
    sub_809E2E8();
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (8)))) + (0x12)))) {
        stop_sfx_80195A8(0xD2);
        sub_807C298((*(void **)((s8 *)(arg0) + (0x30))));
        sub_807C298(arg0);
    }
}
