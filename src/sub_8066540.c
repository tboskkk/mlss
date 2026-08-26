#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8066540 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8066540(void *arg0, s32 arg1, s32 arg2, s32 arg3)
{
  void *new_var;
  int new_var2;
  void *temp_r0_7;
  temp_r0_7 = arg0 + 0x84;
  new_var = arg0;
  *((s32 *) (((s8 *) new_var) + 0x84)) = arg1;
  new_var2 = 4;
  *((s32 *) (((s8 *) temp_r0_7) + new_var2)) = arg2;
  *((s32 *) (((s8 *) (temp_r0_7 + new_var2)) + new_var2)) = arg3;
}

void sub_8066540(void *arg0, s32 arg1, s32 arg2, s32 arg3);
s32 sub_807C298(void *);                        /* extern */

void sub_8066550(struct Entity *arg0) {
    sub_8066540((*(void **)((s8 *)(arg0) + (0x30))), (*(s32 *)((s8 *)(arg0) + (0x10))), (*(s32 *)((s8 *)(arg0) + (0x14))), arg0->unk18);
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_807C298((*(void **)((s8 *)(arg0) + (0x30))));
        sub_807C298(arg0);
    }
}

void sub_8066540(void *arg0, s32 arg1, s32 arg2, s32 arg3);
extern s32 sub_8066334;

void sub_806657C(struct Entity *arg0) {
    sub_8066540((*(void **)((s8 *)(arg0) + (0x30))), (*(s32 *)((s8 *)(arg0) + (0x10))), (*(s32 *)((s8 *)(arg0) + (0x14))), arg0->unk18);
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x1E;
        arg0->handler = &sub_8066334;
    }
}
