#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8158A98 needs.

asm_unified(".include \"asm/macros.inc\"");

void *sub_815FA3C(void *);                          /* extern */
void sub_8158A98(void *arg0, s32 arg1)
{
  int new_var;
  int new_var2;
  new_var2 = 0;
  *((s16 *) (((s8 *) arg0) + 0x18)) = 0xC8;
  *((s16 *) (((s8 *) arg0) + 0x20)) = (s16) (new_var2 - arg1);
  *((s16 *) (((s8 *) arg0) + 0x38)) = new_var2;
  *((s16 *) (((s8 *) sub_815FA3C(arg0)) + 0xC)) = new_var2;
  *((s8 *) (((s8 *) arg0) + (new_var = 0x24))) = 4;
}

ASM_FUNC("asm/nonmatching/sub_8158ABC.s", void sub_8158ABC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8158AEC.s", void sub_8158AEC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8158B00.s", void * sub_8158B00(void *arg0, u16 arg2));
ASM_FUNC("asm/nonmatching/sub_8158B64.s", void sub_8158B64(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8158B90.s", void sub_8158B90(s32 arg0));
s32 sub_8021308();                              /* extern */
s32 sub_815FB14(void *, s32);                   /* extern */

void sub_8158BB4(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDC8B0;
    if ((*(s32 *)((s8 *)(arg0) + (0x40))) != 0) {
        sub_8021308();
        (*(s32 *)((s8 *)(arg0) + (0x40))) = 0;
    }
    sub_815FB14(arg0, arg1);
}

ASM_FUNC("asm/nonmatching/sub_8158BE0.s", void * sub_8158BE0(void *arg0, u16 arg2));
ASM_FUNC("asm/nonmatching/sub_8158C6C.s", void sub_8158C6C(void *arg0));
void sub_8158C98(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDC8F0;
    if ((*(s32 *)((s8 *)(arg0) + (0x40))) != 0) {
        sub_8021308();
        (*(s32 *)((s8 *)(arg0) + (0x40))) = 0;
    }
    sub_815FB14(arg0, arg1);
}

ASM_FUNC("asm/nonmatching/sub_8158CC4.s", void * sub_8158CC4(void *arg0, u16 arg2));
ASM_FUNC("asm/nonmatching/sub_8158D80.s", void sub_8158D80(void *arg0, s32 arg1));