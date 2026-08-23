#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807F4C4 needs.

asm_unified(".include \"asm/macros.inc\"");


extern s32 sub_810DD7C;

void sub_807F4C4(void *arg0, s32 arg1)
{
  void *temp_r1_13;
  s8 *new_var;
  if ((*((void **) (((s8 *) arg0) + 0x34))) == ((void *) 0))
  {
    temp_r1_13 = *((void **) 0x03000FD8);
    *((void **) (((s8 *) arg0) + 0x34)) = (void *) (*((void **) (((s8 *) temp_r1_13) + 0x54)));
    *((void **) (((s8 *) temp_r1_13) + 0x54)) = arg0;
    *((s32 **) (((s8 *) arg0) + 0x58)) = &sub_810DD7C;
    *((s32 *) (((s8 *) arg0) + 0x5C)) = arg1;
    *((s32 *) (new_var = ((s8 *) arg0) + 0x60)) = arg1;
    *((s32 *) (((s8 *) arg0) + 0x64)) = arg1;
    new_var = (u8 *) (((s8 *) arg0) + 0x77);
    *((u8 *) (((s8 *) arg0) + 0x77)) = (u8) ((-8) & (*new_var));
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807F4FC.s\"");
#else
extern s32 sub_8086C64;
extern s32 sub_8087124;
extern s32 sub_810DD7C;

void sub_807F4FC(void *arg0) {
    void *temp_r1_12;

    if ((*(void **)((s8 *)(arg0) + (0x34))) == NULL) {
        temp_r1_12 = *(void **)0x03000FD8;
        (*(void **)((s8 *)(arg0) + (0x34))) = (void *) (*(void **)((s8 *)(temp_r1_12) + (0x54)));
        (*(void **)((s8 *)(temp_r1_12) + (0x54))) = arg0;
        (*(s32 **)((s8 *)(arg0) + (0x58))) = &sub_810DD7C;
        (*(s32 **)((s8 *)(arg0) + (0x5C))) = &sub_8086C64;
        (*(s32 **)((s8 *)(arg0) + (0x60))) = &sub_8087124;
        (*(u8 *)((s8 *)(arg0) + (0x77))) = (u8) (-8 & (*(u8 *)((s8 *)(arg0) + (0x77))));
    }
}
#endif
