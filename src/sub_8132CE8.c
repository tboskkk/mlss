#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8132CE8 needs.

asm_unified(".include \"asm/macros.inc\"");



extern s32 sub_808750C;

s32 sub_8082E1C();
s32 sub_807C298(void *);                        /* extern */
void sub_8132CE8(void *arg0)
{
  s32 temp_r2_30;
  int new_var2;
  void *temp_r1_8;
  void *new_var;
  temp_r1_8 = *((void **) (((s8 *) arg0) + 8));
  new_var = arg0;
  *((u16 *) (((s8 *) temp_r1_8) + 0xC)) = (u16) ((*((u16 *) (((s8 *) temp_r1_8) + 0xC))) + 0x1200);
  *((u16 *) (((s8 *) arg0) + 0xB2)) = (u16) ((*((u16 *) (((s8 *) arg0) + 0xB2))) + (*((s32 *) (((s8 *) new_var) + 0x94))));
  temp_r2_30 = (*((s32 *) (((s8 *) new_var) + 0x10))) + (*((s16 *) (((s8 *) new_var) + 0xAE)));
  *((s32 *) (((s8 *) arg0) + 0x10)) = temp_r2_30;
  *((s32 *) (((s8 *) arg0) + 0x14)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x14))) + (*((s16 *) (((s8 *) new_var) + 0xB0))));
  *((s32 *) (((s8 *) arg0) + 0x18)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x18))) + ((s16) (*((u16 *) (((s8 *) arg0) + 0xB2)))));
  new_var2 = 0xFFFFF000;
  if (temp_r2_30 < new_var2)
  {
    sub_807C298(arg0);
  }
}

void sub_8132D4C(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}

void sub_8132D78(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8132DA0.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_808750C;

void sub_8132DA0(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}
#endif

s32 sub_8082B00();                                  /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8132E34;

void sub_8132DE4(void *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 8, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8132E34;
    }
}

s32 sub_8082B00();                                  /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8132E68;

void sub_8132E0C(void *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 4, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8132E68;
    }
}
