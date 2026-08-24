#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81126BC needs.

asm_unified(".include \"asm/macros.inc\"");



int sub_8112350();

s32 stop_sfx_80195A8();
s32 sub_8082E1C();
s32 sub_8087CE4();
void sub_8111234(void *arg0);                       /* extern */

void sub_81126BC(struct Entity *arg0) {
    sub_8082E1C(arg0, 9, 0, 0);
    arg0->handler = (s32 *) &sub_8111234;
    play_sfx_80195B4(0x86, -1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81126E4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8112740.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_8111B38;
void sub_81127B8(void *arg0)
{
  void *temp_r2_17;
  if ((sub_8087CE4() << 0x18) == 0)
  {
    sub_8082E1C(arg0, 0xB, 0, 0);
    temp_r2_17 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_17) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_17) + 0x12))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8111B38;
    stop_sfx_80195A8(0x11B);
  }
}

extern s32 sub_81129B4;
void sub_81127FC(void *arg0)
{
  long long new_var;
  void *temp_r2_17;
  if ((sub_8087CE4() << 0x18) == 0)
  {
    sub_8082E1C(arg0, 3, 0, 0);
    temp_r2_17 = *((void **) (((s8 *) arg0) + 8));
    new_var = -7;
    *((u8 *) (((s8 *) temp_r2_17) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_17) + 0x12)))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_81129B4;
    stop_sfx_80195A8(0x11B);
  }
}

s32 sub_810DD7C(s32, void *, s32);              /* extern */

void sub_8112840(void *arg0) {
    sub_8082E1C(arg0, -1, -1, 0);
    (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    sub_810DD7C((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x58))) + 8, arg0, 0xFF);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8112870.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8112898(void *arg0)
{
  if (((*((s32 *) (((s8 *) (*((void **) 0x03000FD8))) + 0x40))) == 0) && ((char) (((*((s32 *) (((s8 *) arg0) + 0xA8))) ^ 1) & 1)))
  {
    sub_8112350(&sub_8112840);
    *((s32 *) (((s8 *) arg0) + 0xA8)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0xA8))) | 1);
  }
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_8082E1C(arg0, -1, -1, 0);
    *((s32 *) (((s8 *) arg0) + 0xA8)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0xA8))) | 2);
  }
  if (((s32) (*((s32 *) (((s8 *) arg0) + 0xA8)))) > 2)
  {
    *((s32 *) (((s8 *) arg0) + 0x4C)) = 0;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8112904.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8112984(void *arg0)
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

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81129B4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8112A24.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8112B0C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8112BBC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8112C50.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8112CE4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8112D78.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8112E40.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8112F40.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8112FFC.s\"");
#else
void sub_811308C(void *arg0);                       /* extern */

void sub_8112FFC(void *arg0) {
    u16 temp_r0_50;
    void *temp_r1_43;

    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) (((s32) ((M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) * M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */)) << 8) / (s32) M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */)) + (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8));
    (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) (((s32) ((M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) * M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */)) << 8) / (s32) M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */)) + (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8));
    temp_r1_43 = (*(void **)((s8 *)(arg0) + (8)));
    (*(u16 *)((s8 *)(temp_r1_43) + (0xC))) = (u16) ((*(u16 *)((s8 *)(temp_r1_43) + (0xC))) + 0xFFFFF4B4);
    temp_r0_50 = (*(u16 *)((s8 *)(arg0) + (0xAC))) + 1;
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_50;
    if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) <= (s32) (s16) temp_r0_50) {
        (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x84)));
        (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x88)));
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_811308C;
    }
}
#endif
