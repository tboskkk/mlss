#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805C6B8 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_805C6B8.s", void sub_805C6B8(void *arg0));
s32 process_remove(void *, s32);                /* extern */
s32 sub_8029888(s32, s32);                      /* extern */

void sub_805C73C(struct Entity *arg0, s32 arg1) {
    void *temp_r0_19;
    void *temp_r0_25;

    arg0->unk18 = 0x08CDC2B8;
    *(s16 *)0x040000BA = 0;
    sub_8029888(0, 0);
    (*(s8 *)((s8 *)(arg0) + (0x1C))) = 0;
    temp_r0_19 = *(void **)0x03000E04;
    if (temp_r0_19 != NULL) {
        free_heap_8018D9C(temp_r0_19);
    }
    temp_r0_25 = *(void **)0x03000E00;
    if (temp_r0_25 != NULL) {
        free_heap_8018D9C(temp_r0_25);
    }
    process_remove(arg0, arg1);
}

s32 sub_8115048(s32, u8, u8);                   /* extern */
void sub_805C78C(void *arg0, u8 arg1, u8 arg2)
{
  int new_var;
  new_var = 0x580;
  sub_8115048(*((s32 *) (((s8 *) arg0) + 0x57C)), *((s32 *) ((arg0 + new_var) + arg1)), arg2);
}

ASM_FUNC("asm/nonmatching/sub_805C7B4.s", void sub_805C7B4(void *arg0, u8 arg1));
ASM_FUNC("asm/nonmatching/sub_805C824.s", void sub_805C824(void *arg0, void *arg1));