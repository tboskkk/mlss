#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808862C needs.

asm_unified(".include \"asm/macros.inc\"");

s32 stop_sfx_80195A8();
s32 sub_8086C64();
s32 sub_8087124();
s32 sub_810DD7C();





void sub_8089928(void *arg0);

void sub_80886BC(void *arg0);

extern s32 sub_808750C;

s32 sub_8082E1C();

void sub_808862C(struct Entity *arg0) {
    (*(s32 **)((s8 *)(arg0) + (0x50))) = (s32 *) arg0->handler;
    arg0->handler = (s32 *) &sub_80886BC;
}

void sub_80886E0(void *arg0);
void sub_808863C(struct Entity *arg0) {
    (*(s32 **)((s8 *)(arg0) + (0x50))) = (s32 *) arg0->handler;
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_80886E0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808864C.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8087C6C;

void sub_808864C(void *arg0) {
    s32 temp_r1_18;
    void *temp_r2_46;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        temp_r1_18 = 6 & (*(u8 *)((s8 *)(arg0) + (0x76)));
        if ((temp_r1_18 == 2) || (temp_r1_18 == 4)) {
            if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) == -1) {
                sub_8082E1C(arg0, 6, 0x2000, 0);
            } else {
                sub_8082E1C(arg0, 6, 0x204D, 0);
            }
            temp_r2_46 = (*(void **)((s8 *)(arg0) + (8)));
            (*(u8 *)((s8 *)(temp_r2_46) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_46) + (0x12)))) | 2);
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8087C6C;
    }
}
#endif

s32 sub_8087CE4();                              /* extern */

void sub_80886BC(void *arg0) {
    sub_8087CE4();
    if (0x20 & (*(u8 *)((s8 *)(arg0) + (0x79)))) {
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x50)));
        (*(s32 *)((s8 *)(arg0) + (0x50))) = 0;
    }
}

void sub_80886E0(void *arg0)
{
  int new_var3;
  s32 temp_r1_20;
  s8 *new_var;
  void *temp_r2_32;
  int new_var2;
  void *temp_r2_38;
  new_var3 = -7;
  sub_8087CE4();
  new_var2 = -0x41;
  if (0x20 & (*((u8 *) (((s8 *) arg0) + 0x79))))
  {
    temp_r1_20 = 6 & (*((u8 *) (((s8 *) arg0) + 0x76)));
    if ((temp_r1_20 == 2) || (temp_r1_20 == 4))
    {
      new_var = ((s8 *) arg0) + 8;
      sub_8082E1C(arg0, 0, -1, 0);
      ;
      *((u8 *) (((s8 *) (*((void **) new_var))) + 0x11)) = (u8) (new_var2 & (*((u8 *) (((s8 *) (*((void **) new_var))) + 0x11))));
      temp_r2_38 = *((void **) (((s8 *) arg0) + 8));
      *((u8 *) (((s8 *) temp_r2_38) + 0x12)) = (u8) (new_var3 & (*((u8 *) (((s8 *) temp_r2_38) + 0x12))));
    }
    *((s32 *) (((s8 *) arg0) + 0x4C)) = (s32) (*((s32 *) (((s8 *) arg0) + 0x50)));
    *((s32 *) (((s8 *) arg0) + 0x50)) = 0;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808873C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088858.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088964.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80889F0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088A74.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088BC0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088C3C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088CC8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088D50.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088DF0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088E7C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088F9C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80891A0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089264.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089348.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808942C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80894B8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808954C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80895D8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808965C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_8089800;

void sub_8089788(struct Entity *arg0) {
    s32 temp_r0_32;

    (*(u16 *)((s8 *)(arg0) + (0xB2))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0xB2))) + (*(s32 *)((s8 *)(arg0) + (0x94))));
    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x10))) + (*(s16 *)((s8 *)(arg0) + (0xAE))));
    (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x14))) + (*(s16 *)((s8 *)(arg0) + (0xB0))));
    temp_r0_32 = (*(s32 *)((s8 *)(arg0) + (0x18))) + (s16) (*(u16 *)((s8 *)(arg0) + (0xB2)));
    (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r0_32;
    if ((s32) (*(s32 *)((s8 *)(arg0) + (0x8C))) >= temp_r0_32) {
        sub_8082E1C(arg0, 4, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x84)));
        (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x88)));
        (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x8C)));
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x20;
        arg0->handler = &sub_8089800;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089800.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_80898B0(struct Entity *arg0) {
    s32 temp_r0_32;

    (*(u16 *)((s8 *)(arg0) + (0xB2))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0xB2))) + (*(s32 *)((s8 *)(arg0) + (0x94))));
    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x10))) + (*(s16 *)((s8 *)(arg0) + (0xAE))));
    (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x14))) + (*(s16 *)((s8 *)(arg0) + (0xB0))));
    temp_r0_32 = (*(s32 *)((s8 *)(arg0) + (0x18))) + (s16) (*(u16 *)((s8 *)(arg0) + (0xB2)));
    (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r0_32;
    if ((s32) (*(s32 *)((s8 *)(arg0) + (0x8C))) >= temp_r0_32) {
        sub_8082E1C(arg0, 4, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x84)));
        (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x88)));
        (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x8C)));
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0xA;
        arg0->handler = (s32 *) &sub_8089928;
    }
}

extern s32 sub_808750C;
void sub_8089928(void *arg0)
{
  u16 temp_r0_11;
  void *temp_r2_21;
  s32 new_var3;
  s32 *new_var;
  int new_var4;
  void **new_var2;
  *((u16 *) (((s8 *) arg0) + 0xAC)) = (temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1);
  new_var4 = -7;
  new_var3 = (s32) (temp_r0_11 << 0x10);
  if (new_var3 <= 0)
  {
    new_var2 = (void **) (((s8 *) arg0) + 8);
    sub_8082E1C(arg0, 2, 0, 0);
    temp_r2_21 = *new_var2;
    *((u8 *) (((s8 *) temp_r2_21) + 0x12)) = (u8) (new_var4 & (*((u8 *) (((s8 *) temp_r2_21) + 0x12))));
    new_var = &sub_808750C;
    *((s32 **) (((s8 *) arg0) + 0x4C)) = new_var;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089964.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_80899C4(s32 arg0, s32 arg1, s32 arg2) {
    stop_sfx_80195A8(0x6C);
    return sub_8087124(arg0, arg1, arg2);
}

s32 sub_80899E4(s32 arg0, s32 arg1, s32 arg2) {
    stop_sfx_80195A8(0x6C);
    return sub_8086C64(arg0, arg1, arg2);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089A04.s\"");
#else
s32 sub_8089A04(s32 arg0, s32 arg1, s32 arg2) {
    stop_sfx_80195A8(0x6C);
    return sub_810DD7C(arg0, arg1, arg2);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089A30.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
