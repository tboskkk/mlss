#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_814BFCC needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_8149660;
extern s32 sub_814BC68;
void sub_814BFCC(s32 arg0, void *arg1, s32 **arg2)
{
  s32 *new_var2;
  s8 *new_var;
  int new_var4;
  s32 *var_r0_60;
  s32 temp_r2_33;
  u8 temp_r1_53;
  s32 *new_var3;
  new_var4 = -8;
  new_var = (s8 *) arg1;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg1) + 0x294)))) + 0x12))))
  {
    *((u8 *) (((s8 *) arg1) + 0x214)) = (u8) (new_var4 & (*((u8 *) (new_var + 0x214))));
  }
  temp_r2_33 = (*((s32 *) (new_var + 0x18))) - (*((s16 *) (((0, new_var)) + 0x2DC)));
  *((s32 *) (new_var + 0x18)) = temp_r2_33;
  if (((*((s32 *) (new_var + 0x24))) & 0x18000) || (((s32) ((*((s32 *) (new_var + 0x14))) + temp_r2_33)) <= ((s32) (*((s32 *) (new_var + 0x2D4))))))
  {
    temp_r1_53 = *((u8 *) (new_var + 0x1D8));
    if (((temp_r1_53 << 0x1F) != ((*((s16 *) (new_var + 0x2DC))) * 0)) && (((s32) (temp_r1_53 << 0x1E)) < 0))
    {
      var_r0_60 = &sub_8149660;
    }
    else
    {
      new_var3 = &sub_814BC68;
      new_var2 = new_var3;
      var_r0_60 = new_var2;
    }
    *arg2 = var_r0_60;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814C04C.s\"");
#else
s32 sub_8047F60(void *, s32, s32, s32, s32, s32); /* extern */

void sub_814C04C(void *arg0) {
    void *temp_r4_11;

    temp_r4_11 = (*(void **)((s8 *)(arg0) + (0x344)));
    sub_8047F60(temp_r4_11, (*(s32 *)((s8 *)(arg0) + (0xC))), (*(s32 *)((s8 *)(arg0) + (0x10))), (*(s32 *)((s8 *)(arg0) + (0x14))), 0, 0);
    (*(u8 *)((s8 *)(temp_r4_11) + (0x20E))) = (u8) (-5 & (*(u8 *)((s8 *)(temp_r4_11) + (0x20E))));
    (*(u8 *)((s8 *)(temp_r4_11) + (0x20D))) = (u8) (((*(u8 *)((s8 *)(temp_r4_11) + (0x20D))) | 8) & ~4 & ~0x20 & ~0x40);
    (*(s32 *)((s8 *)(temp_r4_11) + (0x20C))) = (s32) (((*(s32 *)((s8 *)(temp_r4_11) + (0x20C))) & 0xFFFC7FFF) | 0x8000);
    (*(u8 *)((s8 *)(temp_r4_11) + (0x20F))) = (u8) ((*(u8 *)((s8 *)(temp_r4_11) + (0x20F))) | 4);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814C0CC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814C1AC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814C298.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814C47C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814C5C4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814C6F8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814C9E8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814CB90.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814CC84.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814CDAC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814CEE8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814D068.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814D1F8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814D298.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814D35C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814D514.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814D670.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814D7A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
