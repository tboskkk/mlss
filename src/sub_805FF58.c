#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805FF58 needs.

asm_unified(".include \"asm/macros.inc\"");







void sub_806048C(void *arg0);

void sub_8060438(void *arg0);

void sub_80603D8(void *arg0);

void sub_8060404(void *arg0);

extern s32 sub_805F6BC;

s32 sub_8082B00();
s32 sub_8082E1C();
void sub_805FF58(void *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 0x02, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_805F6BC;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805FF80.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060090.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806018C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80601D4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_806021C(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x10))) + 0xFFFFFE9A);
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 1, 0, 0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 8;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_80603D8;
    }
}

s32 stop_sfx_80195A8(s32);                      /* extern */
void sub_806025C(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0x5C);
        sub_8082E1C(arg0, 4, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_8060404;
    }
}

void sub_8060288(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0x5C);
        sub_8082E1C(arg0, 4, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_8060438;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80602B4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_807F4FC(void *);                        /* extern */
extern s32 sub_8060360;
void sub_8060324(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0x5C);
        sub_807F4FC(arg0);
        (*(s32 **)((s8 *)(arg0) + (0x60))) = &sub_8060360;
        sub_8082E1C(arg0, 4, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_806048C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060360.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_807C298(void *);                        /* extern */
void sub_80603D8(void *arg0)
{
  s32 temp_r1_8;
  s32 var_r0_10;
  temp_r1_8 = *((s32 *) (((s8 *) arg0) + 0x10));
  var_r0_10 = temp_r1_8 + 0xFFFFFE9A;
  *((s32 *) (((s8 *) arg0) + 0x10)) = var_r0_10;
  if (var_r0_10 < 0)
  {
    var_r0_10 = temp_r1_8 - 0x67;
  }
  temp_r1_8 = (s32) (var_r0_10 >> 8);
  if (temp_r1_8 <= (-0x20))
  {
    sub_807C298(arg0);
  }
}

extern s32 sub_8060500;

void sub_8060404(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0xC, 0, 0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 8;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8060500;
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8060544;
void sub_8060438(void *arg0)
{
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_8082E1C(arg0, 8, 0, 0);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8060544;
  }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80605A4;

void sub_8060464(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8082E1C(arg0, 4, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80605A4;
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80605F8;

void sub_806048C(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 5, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80605F8;
    }
}

s32 sub_8082B00();                                  /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_805FF80;

void sub_80604B8(void *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 2, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_805FF80;
    }
}
