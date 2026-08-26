#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810FEF4 needs.

asm_unified(".include \"asm/macros.inc\"");



extern s32 sub_81100B0;

s32 sub_8082E1C();
int sub_80883A0();
void sub_8110078(void *arg0);
extern s32 sub_8110034;

void sub_810FEF4(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0xC;
        arg0->handler = &sub_8110034;
    }
}

void sub_810FF18(void *arg0)
{
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_8082E1C(arg0, 0xE, 0, 0);
    sub_80883A0(arg0, 0x1E);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_8110078;
  }
}

void sub_810FF4C(void *arg0)
{
  int new_var;
  void *temp_r2_12;
  sub_8082E1C(arg0, 2, 0, 0);
  temp_r2_12 = *((void **) (((s8 *) arg0) + 8));
  new_var = *((u8 *) (((s8 *) temp_r2_12) + 0x12));
  new_var = ((-7) & new_var) | 2;
  *((u8 *) (((s8 *) temp_r2_12) + 0x12)) = (u8) new_var;
  *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_81100B0;
}

s32 sub_80883F0();                                  /* extern */
extern s32 sub_810F9FC;
void sub_810FF78(void *arg0)
{
  void *temp_r2_17;
  int new_var;
  new_var = -7;
  if ((sub_80883F0() << 0x18) == 0)
  {
    sub_8082E1C(arg0, 7, 0, 0);
    temp_r2_17 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_17) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_17) + 0x12)))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_810F9FC;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810FFB0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110034.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_810F6D4;
void sub_8110078(void *arg0)
{
  void *temp_r2_17;
  int new_var;
  new_var = -7;
  if ((sub_80883F0() << 0x18) == 0)
  {
    sub_8082E1C(arg0, 7, 0, 0);
    temp_r2_17 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_17) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_17) + 0x12)))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_810F6D4;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81100B0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8087CE4();                                  /* extern */
extern s32 sub_810F904;
void sub_8110134(void *arg0)
{
  s8 *new_var;
  int new_var2;
  void *temp_r2_17;
  new_var2 = -7;
  if ((sub_8087CE4() << 0x18) == 0)
  {
    sub_8082E1C(arg0, 4, 0, 0);
    temp_r2_17 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_17) + 0x12)) = (u8) ((new_var2 & (*((u8 *) (((s8 *) temp_r2_17) + 0x12)))) | 2);
    stop_sfx_80195A8(0x11B);
    *((s32 **) (new_var = ((s8 *) arg0) + 0x4C)) = &sub_810F904;
  }
}

extern s32 sub_810F5E4;
void sub_8110178(void *arg0)
{
  void *temp_r2_17;
  if ((sub_8087CE4() << 0x18) == 0)
  {
    sub_8082E1C(arg0, 4, 0, 0);
    temp_r2_17 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (temp_r2_17 + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_17) + ((unsigned short) 0x12)))) | 2);
    stop_sfx_80195A8(0x11B);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_810F5E4;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81101BC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81102A0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110374.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81104AC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110620.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81106D4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81107CC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110874.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8086C64();                                  /* extern */
extern s32 sub_81109D0;

s32 sub_811090C(struct Entity *arg0) {
    s32 var_r0_8;
    void *var_r1_11;

    var_r0_8 = sub_8086C64();
    if (var_r0_8 == 0) {
        var_r1_11 = (*(void **)((s8 *)(arg0) + (0x30)));
        if (var_r1_11 != NULL) {
            do {
                (*(s32 *)((s8 *)(var_r1_11) + (0xA8))) = 1;
                var_r1_11 = (*(void **)((s8 *)(var_r1_11) + (0x30)));
            } while (var_r1_11 != NULL);
        }
        arg0->handler = &sub_81109D0;
        stop_sfx_80195A8(0x10F);
        var_r0_8 = 0;
    }
    return var_r0_8;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110948.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_8110A30;
void sub_8110988(void *arg0)
{
  void *temp_r2_19;
  sub_8082E1C(arg0, (0 - (*((s16 *) (((s8 *) (*((void **) (((s8 *) (*((void **) (((s8 *) arg0) + 0x2C)))) + 0x28)))) + 0xEC)))) + 0xD, 0, 0);
  temp_r2_19 = *((void **) (((s8 *) arg0) + 8));
  *((u8 *) (((s8 *) temp_r2_19) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_19) + 0x12))) | 2);
  play_sfx_80195B4(0x119, -1);
  *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8110A30;
}
