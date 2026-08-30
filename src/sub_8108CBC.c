#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8108CBC needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_8199F30();
s32 sub_81DD77C();

void sub_8108CBC(void *arg0) {
    (*(u16 *)((s8 *)(arg0) + (0x11E))) = (u16) (0xFFF & (*(u16 *)((s8 *)(arg0) + (0x11E))));
}

void *sub_807FFB8(s32 *);                       /* extern */
extern s32 sub_8108BE0;

void sub_8108CD0(void *arg0) {
    if (3 & (*(u16 *)((s8 *)(arg0) + (0x11E)))) {
        if (((s32) (*(s16 *)((s8 *)(arg0) + (0xEC))) < 0) && !(0x20 & (*(u8 *)((s8 *)(arg0) + (0x122))))) {
            (*(void **)((s8 *)(sub_807FFB8(&sub_8108BE0)) + (8))) = arg0;
            (*(u8 *)((s8 *)(arg0) + (0x122))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x122))) | 0x20);
        }
        (*(u16 *)((s8 *)(arg0) + (0x11E))) = (u16) (0xFFFC & (*(u16 *)((s8 *)(arg0) + (0x11E))));
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108D2C.s\"");
#else
s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */

s32 sub_8108D2C(void *arg0, s32 arg1) {
    if (!(0x8000 & (*(u16 *)((s8 *)(arg0) + (0x11E)))) && (arg1 >= sub_81DD77C(0x64, sub_8199F30()))) {
        (*(u16 *)((s8 *)(arg0) + (0x11E))) = (u16) ((0xFFF & (*(u16 *)((s8 *)(arg0) + (0x11E)))) | 0xFFFF8000);
        (*(u8 *)((s8 *)(arg0) + (0x122))) = (u8) ((-0x1D & (*(u8 *)((s8 *)(arg0) + (0x122)))) | 0xC);
        return 1;
    }
    return 0;
}
#endif

s32 sub_8108D8C(void *arg0, s32 arg1)
{
  if ((!(0x4000 & (*((u16 *) (((s8 *) arg0) + 0x11E))))) && (arg1 >= sub_81DD77C(0x64, sub_8199F30())))
  {
    *((u16 *) (((s8 *) arg0) + 0x11E)) = (u16) ((0xFFF & (*((u16 *) (((s8 *) arg0) + 0x11E)))) | 0x4000);
    *((u8 *) (((s8 *) arg0) + 0x122)) = (u8) (((-0x1D) & (*(((s8 *) arg0) + 0x122))) | 0xC);
    return 1;
  }
  return 0;
}

s32 sub_8108DE4(void *arg0, s32 arg1)
{
  if ((!(0x2000 & (*((u16 *) (((s8 *) arg0) + 0x11E))))) && (arg1 >= sub_81DD77C(0x64, sub_8199F30())))
  {
    *((u16 *) (((s8 *) arg0) + 0x11E)) = (u16) ((0xFFF & (*((u16 *) (((s8 *) arg0) + 0x11E)))) | 0x2000);
    *((u8 *) (((s8 *) arg0) + 0x122)) = (u8) (((-0x1D) & (*(((s8 *) arg0) + 0x122))) | 0xC);
    return 1;
  }
  return 0;
}

s32 sub_8108E3C(void *arg0, s32 arg1)
{
  if ((!(0x1000 & (*((u16 *) (((s8 *) arg0) + 0x11E))))) && (arg1 >= sub_81DD77C(0x64, sub_8199F30())))
  {
    int new_var;
    *((u16 *) (((s8 *) arg0) + 0x11E)) = (u16) ((0xFFF & (*((u16 *) (((s8 *) arg0) + 0x11E)))) | 0x1000);
    new_var = *((u8 *) (((s8 *) arg0) + 0x122));
    new_var = ((-0x1D) & new_var) | 0xC;
    *((u8 *) (((s8 *) arg0) + 0x122)) = (u8) new_var;
    return 1;
  }
  return 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108E94.s\"");
#else
s32 sub_8086E8C(void *);                            /* extern */

void sub_8108E94(void *arg0) {
    if (!(0x40 & (*(u8 *)((s8 *)(arg0) + (0x122))))) {
        (*(s32 *)((s8 *)(arg0) + (0x118))) = sub_8086E8C(arg0 + 8);
        (*(u8 *)((s8 *)(arg0) + (0x122))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x122))) | 0x40);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108EC6.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108F14.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_810907C(void *);                        /* extern */
void sub_8108FE4(void *arg0)
{
  s16 temp_r5_29;
  int new_var2;
  u8 temp_r0_18;
  void *temp_r2_10;
  void *temp_r2_15;
  void *temp_r2_65;
  void **new_var;
  void *temp_r5_8;
  temp_r5_8 = *((void **) (((s8 *) arg0) + 8));
  temp_r2_10 = *((void **) 0x03000FD8);
  *((u8 *) (((s8 *) temp_r2_10) + 0xB)) = (u8) ((*((u8 *) (((s8 *) temp_r2_10) + 0xB))) | 4);
  temp_r2_15 = *((void **) (((s8 *) temp_r5_8) + 8));
  new_var = (void **) 0x03000FD8;
  new_var2 = -5;
  temp_r0_18 = *((u8 *) (((s8 *) temp_r2_15) + 0x21));
  if (((((temp_r0_18 != 0) && (temp_r0_18 != 0xE)) && (temp_r0_18 != 1)) || (((temp_r5_29 = *((s16 *) (((s8 *) (*((void **) (((s8 *) temp_r5_8) + 0x28)))) + 0xEC)), temp_r5_29 == (-1))) && (((*((u16 *) (((s8 *) temp_r2_15) + 0x16))) | (((u16) ((*((u8 *) (((s8 *) temp_r2_15) + 0x1E))) << 0xC)) + 0x1000)) != 0x2000))) || ((temp_r5_29 == (-2)) && (((*((u16 *) (((s8 *) temp_r2_15) + 0x16))) | (((u16) ((*((u8 *) (((s8 *) temp_r2_15) + 0x1E))) << 0xC)) + 0x1000)) != 0x204D)))
  {
    *((s32 (**)(void *)) (((s8 *) arg0) + 4)) = (void *) 0;
    temp_r2_65 = *new_var;
    *((u8 *) (((s8 *) temp_r2_65) + 0xB)) = (u8) (new_var2 & (*((u8 *) (((s8 *) temp_r2_65) + 0xB))));
    return;
  }
  *((s32 (**)(void *)) (((s8 *) arg0) + 4)) = sub_810907C;
  sub_810907C(arg0);
}
