#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8148B04 needs.

asm_unified(".include \"asm/macros.inc\"");


extern s32 sub_814765C;

u8 sub_813B5B4(void *);                             /* extern */
extern s32 sub_813B1E8;
void sub_8148B04(s32 arg0, void *arg1, void *arg2)
{
  s32 temp_r5_12;
  u8 temp_r3_16;
  u8 new_var;
  temp_r5_12 = *((s32 *) (((s8 *) arg1) + 0x1B0));
  temp_r3_16 = sub_813B5B4(arg1);
  if (temp_r3_16 == 0)
  {
    *((s32 *) (((s8 *) arg1) + 0x2EC)) = (s32) ((*((s32 *) (((s8 *) arg1) + 0x14))) + (*((s32 *) (((s8 *) arg1) + 0x18))));
    *((s32 *) (((s8 *) arg1) + 0x2F4)) = (s32) temp_r3_16;
    new_var = *((u8 *) (((s8 *) ((*((u16 *) (((s8 *) arg1) + 0x1D0))) + temp_r5_12)) + 0x52));
    *((s16 *) (((s8 *) arg1) + 0x1D2)) = (s16) new_var;
    *((s32 **) (((s8 *) arg2) + 0)) = &sub_813B1E8;
    *((s32 **) (((s8 *) arg2) + 0xC)) = &sub_814765C;
  }
}

u8 sub_813ADF0(void *);                             /* extern */
extern s32 sub_8147AD4;

void sub_8148B60(s32 arg0, struct Entity *arg1, s32 **arg2) {
    u8 temp_r3_27;

    (*(s32 *)((s8 *)(arg1) + (0xC))) = (s32) ((*(s32 *)((s8 *)(arg1) + (0xC))) + (*(s16 *)((s8 *)(arg1) + (0x242))));
    (*(s32 *)((s8 *)(arg1) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg1) + (0x10))) + (*(s16 *)((s8 *)(arg1) + (0x244))));
    temp_r3_27 = sub_813ADF0(arg1);
    if (temp_r3_27 == 0) {
        (*(s32 *)((s8 *)(arg1) + (0x2EC))) = (s32) ((*(s32 *)((s8 *)(arg1) + (0x14))) + arg1->unk18);
        (*(s32 *)((s8 *)(arg1) + (0x2F4))) = (s32) temp_r3_27;
        *arg2 = &sub_8147AD4;
    }
}

s32 sub_8139AA0(void *);                        /* extern */
extern s32 sub_8147590;
void sub_8148BBC(s32 arg0, void *arg1)
{
  int new_var;
  *((u8 *) (((s8 *) arg1) + 0x33E)) = (u8) ((*((u8 *) (((s8 *) arg1) + 0x33E))) | 0x10);
  sub_8139AA0(arg1);
  *((s32 *) (((s8 *) arg1) + 0x2EC)) = (s32) ((*((s32 *) (((s8 *) arg1) + 0x14))) + (*((s32 *) (((s8 *) arg1) + 0x18))));
  *((s32 *) (((s8 *) arg1) + 0x2F4)) = 0;
  new_var = 0x10;
  *((s16 *) (((s8 *) arg1) + 0x2F8)) = new_var;
  *((s16 *) (((s8 *) arg1) + 0x1D4)) = 0;
  *((s32 **) (((s8 *) arg1) + 0x198)) = &sub_8147590;
  *((s32 **) (((s8 *) arg1) + 0x1A0)) = &sub_814765C;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8148C20.s\"");
#else
void sub_8148C20(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x20D))) = (u8) (-9 & (*(u8 *)((s8 *)(arg0) + (0x20D))));
    (*(u8 *)((s8 *)(arg0) + (0x20C))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg0) + (0x20C))) & 0x7F & ~0x20);
    (*(u8 *)((s8 *)(arg0) + (0x20F))) = (u8) (-5 & (*(u8 *)((s8 *)(arg0) + (0x20F))));
}
#endif
