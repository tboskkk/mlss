#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8112498 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8112740;
void sub_8112498(void *arg0)
{
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    *((u16 *) (((s8 *) arg0) + 0xAC)) = (u16) ((*((u16 *) (((s8 *) arg0) + 0xAC))) + 1);
    sub_8082E1C(arg0, -1, -1, 0);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8112740;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81124D0.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80880C4(void *, s32);                   /* extern */
s32 sub_808843C(void *, s32, s32, s32, s32);    /* extern */
extern s32 sub_81127B8;

void sub_81124D0(void *arg0) {
    sub_808843C(arg0, 0x8A, 0x6C, 0, 0x100);
    sub_80880C4(arg0, 0x380);
    sub_8082E1C(arg0, 0xA, 0, 0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_81127B8;
    play_sfx_80195B4(0x11B, -1);
}
#endif

s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
u8 sub_8087CE4();                                   /* extern */
void sub_811251C(void *arg0)
{
  u8 temp_r5_10;
  temp_r5_10 = sub_8087CE4();
  if (temp_r5_10 == 0)
  {
 do { sub_8082E1C(arg0, -1, -1, 0); } while (0);
    *((s32 *) (((s8 *) arg0) + 0x4C)) = (s32) temp_r5_10;
    stop_sfx_80195A8(0x11B);
  }
}
