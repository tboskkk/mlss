#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808EBB8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808EBB8.s\"");
#else
void sub_808EBB8(void *arg0)
{
  u16 temp_r1_34;
  void *temp_r1_8;
  unsigned long long new_var;
  temp_r1_8 = *((void **) (((s8 *) arg0) + 0x28));
  if (temp_r1_8 != ((void *) 0))
  {
    new_var = -5;
    *((u8 *) (((s8 *) temp_r1_8) + 0x111)) = (u8) (new_var & (*((u8 *) (((s8 *) temp_r1_8) + 0x111))));
  }
  if (0x38 & (*((u8 *) (((s8 *) arg0) + 0x76))))
  {
    sub_808DD2C(arg0);
    return;
  }
  temp_r1_34 = *((u16 *) (((s8 *) arg0) + 0xAC));
  *((u16 *) (((s8 *) arg0) + 0xAC)) = (u16) (temp_r1_34 + 1);
  if (((s32) ((s16) temp_r1_34)) > 0x17)
  {
    sub_808DD2C(arg0);
  }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808EC08.s\"");
#else
s32 sub_808DD2C(void *);                        /* extern */

void sub_808EC08(void *arg0) {
    u16 temp_r1_34;
    void *temp_r1_8;

    temp_r1_8 = (*(void **)((s8 *)(arg0) + (0x28)));
    if (temp_r1_8 != NULL) {
        (*(u8 *)((s8 *)(temp_r1_8) + (0x111))) = (u8) (-5 & (*(u8 *)((s8 *)(temp_r1_8) + (0x111))));
    }
    if (0x38 & (*(u8 *)((s8 *)(arg0) + (0x76)))) {
        sub_808DD2C(arg0);
        return;
    }
    temp_r1_34 = (*(u16 *)((s8 *)(arg0) + (0xAC)));
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = (u16) (temp_r1_34 + 1);
    if ((s32) (s16) temp_r1_34 > 0x13) {
        sub_808DD2C(arg0);
    }
}
#endif

s32 sub_808DD2C(void *);                        /* extern */

void sub_808EC58(void *arg0) {
    if (0x38 & (*(u8 *)((s8 *)(arg0) + (0x76)))) {
        sub_808DD2C(arg0);
        return;
    }
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_808DD2C(arg0);
    }
}
