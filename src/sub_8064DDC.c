#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8064DDC needs.

asm_unified(".include \"asm/macros.inc\"");








s32 stop_sfx_80195A8();

extern s32 sub_808750C;

extern s32 sub_8064E30;

extern s32 sub_8065428;

extern s32 sub_8064558;
int sub_8082B00();
s32 sub_8082E1C();
extern s32 sub_8065384;
int sub_8086D80();

s32 sub_807C298();
void sub_8064DDC(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}

void sub_8064E08(void *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 0x02, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8064558;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064E30.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064EDC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064FEC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80650D8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806515C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_80651B0(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_807C298(arg0);
    }
}

s32 sub_8086858(void *, s32);                       /* extern */
extern s32 sub_8065310;
extern s32 sub_806533C;

void sub_80651CC(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 2, 0, 0);
        *(s32 *)0x03000E3C = sub_8086858(arg0, 0x1509);
        (*(s32 **)((s8 *)(arg0) + (0x5C))) = &sub_8065310;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806533C;
    }
}

s32 sub_8065214(void *arg0)
{
  s32 var_r0_8;
  var_r0_8 = sub_8086D80();
  if (var_r0_8 == 0)
  {
    var_r0_8 = 0x4C;
    *((s32 **) (arg0 + var_r0_8)) = &sub_8065384;
    var_r0_8 = 0;
  }
  return var_r0_8;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065230.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_808750C;

void sub_80652B0(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x30))) == 0) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80652D4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065310.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806533C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065384.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_80653CC(void *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 0x02, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8065428;
    }
}

void sub_80653F4(void *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 0x02, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8064E30;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806541C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065428.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065494.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065510.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80655BC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065664.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065758.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806589C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806593C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80659E0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

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

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065A9C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_807C298();                              /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8087124();                                  /* extern */
extern s32 sub_806589C;
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
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_806589C;
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
extern s32 sub_8065510;

void sub_8065B48(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8082E1C(arg0, 4, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8065510;
        stop_sfx_80195A8(0x81);
    }
}
