#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8064DDC needs.

asm_unified(".include \"asm/macros.inc\"");








s32 stop_sfx_80195A8();

extern s32 sub_808750C;

void sub_8064E30(void *arg0);                       /* extern */

void sub_8065428(void *arg0);                       /* extern */

extern s32 sub_8064558;
int sub_8082B00();
s32 sub_8082E1C();
void sub_8065384(void *arg0);                       /* extern */
int sub_8086D80();

s32 sub_807C298();
void sub_8064DDC(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        arg0->handler = &sub_808750C;
    }
}

void sub_8064E08(struct Entity *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 0x02, 0, 0);
        arg0->handler = &sub_8064558;
    }
}

ASM_FUNC("asm/nonmatching/sub_8064E30.s", void sub_8064E30(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8064EDC.s", void sub_8064EDC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8064FEC.s", void sub_8064FEC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80650D8.s", void sub_80650D8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_806515C.s", s32 sub_806515C(void *arg0));
void sub_80651B0(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_807C298(arg0);
    }
}

s32 sub_8086858(void *, s32);                       /* extern */
s32 sub_8065310(void *arg0);
void sub_806533C(struct Entity *arg0);
void sub_80651CC(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 2, 0, 0);
        *(s32 *)0x03000E3C = sub_8086858(arg0, 0x1509);
        (*(s32 **)((s8 *)(arg0) + (0x5C))) = (s32 *) &sub_8065310;
        arg0->handler = (s32 *) &sub_806533C;
    }
}

s32 sub_8065214(void *arg0)
{
  s32 var_r0_8;
  var_r0_8 = sub_8086D80();
  if (var_r0_8 == 0)
  {
    var_r0_8 = 0x4C;
    *((s32 **) (arg0 + var_r0_8)) = (s32 *) &sub_8065384;
    var_r0_8 = 0;
  }
  return var_r0_8;
}

ASM_FUNC("asm/nonmatching/sub_8065230.s", void sub_8065230(void *arg0));
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_808750C;

void sub_80652B0(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x30))) == 0) {
        sub_8082E1C(arg0, 0, 0, 0);
        arg0->handler = &sub_808750C;
    }
}

ASM_FUNC("asm/nonmatching/sub_80652D4.s", void sub_80652D4(void *arg0));
s32 sub_80871A8();                                  /* extern */
s32 sub_8065310(void *arg0)
{
  s32 temp_r0_8;
  temp_r0_8 = sub_80871A8();
  if (temp_r0_8 == 0)
  {
 do { sub_8082E1C(arg0, 3, 0, 0); *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_80651B0); } while (0);
  }
  return temp_r0_8;
}

void sub_806541C(void);                       /* extern */

void sub_806533C(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 3, 0, 0);
        *(s32 *)0x03000E3C = sub_8086858(arg0, 0x151D);
        (*(s32 **)((s8 *)(arg0) + (0x5C))) = (s32 *) &sub_806541C;
        arg0->handler = (s32 *) &sub_80651B0;
    }
}

ASM_FUNC("asm/nonmatching/sub_8065384.s", void sub_8065384(void *arg0));
void sub_80653CC(struct Entity *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 0x02, 0, 0);
        arg0->handler = (s32 *) &sub_8065428;
    }
}

void sub_80653F4(void *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 0x02, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_8064E30;
    }
}

ASM_FUNC("asm/nonmatching/sub_806541C.s", void sub_806541C(void));
ASM_FUNC("asm/nonmatching/sub_8065428.s", void sub_8065428(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8065494.s", void sub_8065494(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8065510.s", void sub_8065510(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80655BC.s", void sub_80655BC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8065664.s", void sub_8065664(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8065758.s", void sub_8065758(void *arg0));
ASM_FUNC("asm/nonmatching/sub_806589C.s", void sub_806589C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_806593C.s", void sub_806593C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80659E0.s", void sub_80659E0(void *arg0));
extern s32 sub_8065BD8;
void sub_8065A5C(void *arg0)
{
  s32 new_var;
  if ((*((s32 *) (((s8 *) arg0) + 0x80))) == 0)
  {
    sub_8082E1C(arg0, 0xE, 0, 0);
    new_var = *((s32 *) (((s8 *) arg0) + 0xA8));
    *((s16 *) (((s8 *) (arg0 + 0xA8)) + 4)) = (s16) new_var;
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8065BD8;
    stop_sfx_80195A8(0x81);
    play_sfx_80195B4(0xAF, -1);
  }
}

ASM_FUNC("asm/nonmatching/sub_8065A9C.s", s32 sub_8065A9C(void *arg0));
s32 sub_807C298();                              /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8087124();                                  /* extern */
void sub_806589C(void *arg0);                       /* extern */
s32 sub_8065AE4(void *arg0)
{
  s32 var_r0_8;
  var_r0_8 = sub_8087124();
  if (var_r0_8 == 0)
  {
    if ((*((s32 *) (((s8 *) arg0) + 0x30))) != 0)
    {
      sub_807C298();
    }
    sub_8082E1C(arg0, 1, 0, 0);
    var_r0_8 = 0xAC;
    *((s16 *) (((s8 *) arg0) + var_r0_8)) = 8;
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_806589C;
    var_r0_8 = 0;
  }
 do { return var_r0_8; } while (0);
}

s32 sub_807C298(s32);                           /* extern */
extern s32 sub_8065C5C;

void sub_8065B20(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_807C298((*(s32 *)((s8 *)(arg0) + (0x30))));
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 3;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8065C5C;
    }
}

s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
void sub_8065510(void *arg0);                       /* extern */

void sub_8065B48(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8082E1C(arg0, 4, 0, 0);
        arg0->handler = (s32 *) &sub_8065510;
        stop_sfx_80195A8(0x81);
    }
}
