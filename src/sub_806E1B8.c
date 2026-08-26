#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806E1B8 needs.

asm_unified(".include \"asm/macros.inc\"");


int sub_807C298();

ASM_FUNC("asm/nonmatching/sub_806E1B8.s", void sub_806E1B8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_806E388.s", void sub_806E388(void *arg0));
ASM_FUNC("asm/nonmatching/sub_806E414.s", void sub_806E414(void *arg0));
void sub_806E5D8(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_807C298(arg0);
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_808750C;
void sub_806E5F4(void *arg0)
{
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    *((s32 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x2C)))) + 0x4C)) = 0;
    sub_8082E1C(arg0, 7, 0, 0);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_808750C;
  }
}

s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_807F4FC(void *);                        /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_806E8E8;
void sub_806E624(void *arg0)
{
  if ((*((s32 *) (((s8 *) arg0) + 0x80))) == 0)
  {
    stop_sfx_80195A8(0x99);
    sub_8082E1C(arg0, 4, 0, 0);
    sub_807F4FC(arg0);
    play_sfx_80195B4(0x118, -1);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_806E8E8;
  }
}

s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8086D80();                                  /* extern */
void sub_806E1B8(void *arg0);                       /* extern */
s32 sub_806E664(void *arg0)
{
  s32 var_r0_8;
  var_r0_8 = sub_8086D80();
  if (var_r0_8 == 0)
  {
    var_r0_8 = 0x4C;
    *((s32 **) (((s8 *) arg0) + var_r0_8)) = (s32 *) &sub_806E1B8;
    stop_sfx_80195A8(0x6C);
    play_sfx_80195B4(0x40, -1);
    var_r0_8 = 0;
  }
  return var_r0_8;
}
