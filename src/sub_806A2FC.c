#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806A2FC needs.

asm_unified(".include \"asm/macros.inc\"");



void sub_806A638(void *arg0);                       /* extern */
int sub_810DD7C();

void sub_8069558(void *arg0);                       /* extern */
int sub_8082E1C();
int sub_8086858();

void sub_806A2FC(void *arg0)
{
  u16 temp_r0_11;
  temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAC)) = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1);
  if (((s32) (temp_r0_11 << 0x10)) <= 0)
  {
    sub_8082E1C(arg0, 5, 0, 0);
    *((s32 *) 0x03000E3C) = sub_8086858(arg0, 0x1810);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_8069558;
    play_sfx_80195B4(0xAF, -1);
  }
}

ASM_FUNC("asm/nonmatching/sub_806A348.s", void sub_806A348(void *arg0));
s32 sub_8082B00();                                  /* extern */
void sub_80694B4(void *arg0);                       /* extern */

void sub_806A3C0(void *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 2, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x8C))) = 0x300;
        (*(s32 *)((s8 *)((arg0 + 0x8C)) + (0x1C))) = 0x66;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_80694B4;
    }
}

ASM_FUNC("asm/nonmatching/sub_806A3F8.s", void sub_806A3F8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_806A47C.s", void sub_806A47C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_806A510.s", void sub_806A510(void *arg0));
ASM_FUNC("asm/nonmatching/sub_806A638.s", void sub_806A638(void *arg0));
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8086C64(void *, s32, s32);                  /* extern */
extern s32 sub_806A77C;
s32 sub_806A730(void *arg0, s32 arg1, s32 arg2)
{
  s32 var_r0_15;
  s32 new_var;
  stop_sfx_80195A8(0x111);
  new_var = arg2;
  var_r0_15 = sub_8086C64(arg0, arg1, new_var);
  if (0 == var_r0_15)
  {
    var_r0_15 = 0x4C;
    *((s32 **) (((s8 *) arg0) + var_r0_15)) = &sub_806A77C;
    var_r0_15 = 0;
  }
  return var_r0_15;
}

s32 sub_806A760(struct Entity *arg0) {
    sub_810DD7C(arg0, (*(s32 *)((s8 *)(arg0) + (0x2C))), 0xFF);
    arg0->handler = (s32 *) &sub_806A638;
    return 0;
}
