#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8142E6C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142E6C.s\"");
#else
s32 sub_8139AA0(void *);                        /* extern */
extern s32 sub_813B380;
extern s32 sub_813E05C;

void sub_8142E6C(s32 arg0, void *arg1) {
    (*(u8 *)((s8 *)(arg1) + (0x33E))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x33E))) | 0x10);
    sub_8139AA0(arg1);
    (*(s16 *)((s8 *)(arg1) + (0x1D4))) = 0;
    (*(s32 **)((s8 *)(arg1) + (0x198))) = &sub_813B380;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_813E05C;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142EB4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_8046A90(void *, s32, s32, s32, s32);    /* extern */
s32 sub_8046D18(void *);                        /* extern */
s32 sub_8047A3C(void *);                            /* extern */
void sub_8141D54(void *arg0, void *arg1, s32 **arg2);                       /* extern */
void sub_8142EFC(s32 arg0, void *arg1, s32 **arg2)
{
  int new_var;
  void *temp_r6_13;
  temp_r6_13 = *((void **) (((s8 *) arg1) + 0x1B0));
  if (!(1 & (*((u8 *) (((s8 *) arg1) + 0x1D6)))))
  {
    if ((sub_8047A3C(arg1) << 0x18) == 0)
    {
      sub_8046A90(arg1, 2, 0, 0x100, (s32) (*((u8 *) (((s8 *) temp_r6_13) + 0x27))));
      sub_8046D18(arg1);
      *((u8 *) (((s8 *) arg1) + 0x1D6)) = (u8) ((*((u8 *) (((s8 *) arg1) + 0x1D6))) | 1);
    }
  }
  else
    if ((sub_8047A3C(arg1) << 0x18) == 0)
  {
    new_var = *((u16 *) (((s8 *) temp_r6_13) + 0x38));
    *((u16 *) (((s8 *) arg1) + 0x1D2)) = (u16) new_var;
    *arg2 = (s32 *) &sub_8141D54;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142F74.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142FC8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8143058.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81430CC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8143128.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81431CC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81432CC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
