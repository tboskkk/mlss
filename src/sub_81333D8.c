#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81333D8 needs.

asm_unified(".include \"asm/macros.inc\"");


int sub_8082B00();
int sub_8082E1C();
void sub_8133424(void *arg0);                       /* extern */

extern s32 sub_808750C;

void sub_81333D8(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x30))) == 0) {
        sub_8082E1C(arg0, 0xD, 0, 0);
        arg0->handler = &sub_808750C;
    }
}

void sub_81333FC(struct Entity *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 0x02, 0, 0);
        arg0->handler = (s32 *) &sub_8133424;
    }
}

ASM_FUNC("asm/nonmatching/sub_8133424.s", void sub_8133424(void *arg0));
s32 stop_sfx_80195A8(s32);                      /* extern */
void sub_8132F10(void *arg0);                       /* extern */
void sub_8133494(void *arg0)
{
  int new_var;
  if ((*((s32 *) (((s8 *) arg0) + 0x80))) == 0)
  {
    new_var = 0x10;
    stop_sfx_80195A8(0x6C);
    if ((*((s32 *) (((s8 *) arg0) + 0x9C))) == 0)
    {
      sub_8082E1C(arg0, 4, 0, 0);
    }
    else
    {
      sub_8082E1C(arg0, 7, 0, 0);
    }
    *((s16 *) (((s8 *) arg0) + 0xAC)) = 0xA;
    *((s8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x20)) = new_var;
    play_sfx_80195B4(0x117, -1);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_8132F10;
  }
}

ASM_FUNC("asm/nonmatching/sub_81334F4.s", void sub_81334F4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8133658.s", void sub_8133658(void *arg0));
ASM_FUNC("asm/nonmatching/sub_813378C.s", void sub_813378C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_81338CC.s", void sub_81338CC(void *arg0));