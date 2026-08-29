#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81367C0 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 process_add(void *, u8);                    /* extern */

void *sub_81367C0(struct Entity *arg0, u8 arg1) {
    process_add(arg0, arg1);
    arg0->unk18 = 0x08CDC4A0;
    return arg0;
}

s32 process_remove(void *, s32);                /* extern */
s32 sub_81367AC(s32, s32);                      /* extern */

void sub_81367DC(void *arg0) {
    s32 temp_r0_14;

    (*(u16 *)((s8 *)((void *)0x02000050) + (0))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x2C)));
    (*(u16 *)((s8 *)((void *)0x02000050) + (4))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x2A)));
    temp_r0_14 = (*(s32 *)((s8 *)(arg0) + (0x24)));
    if (temp_r0_14 != 0) {
        sub_81367AC(temp_r0_14, 3);
    }
    (*(s32 *)((s8 *)(arg0) + (0x24))) = 0;
    if (arg0 != NULL) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x08CDC490;
        process_remove(arg0, 3);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813681C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8136830.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81368A0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81368AC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8136A84.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8136B30.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8136C3C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8136D00.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8136D80.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8136EFC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_80473DC(void *);                        /* extern */
s32 sub_804761C(void *, s32);                   /* extern */
s32 sub_804776C(void *, s32);                   /* extern */
s32 sub_8047F60(void *, s32, s32, s32, s32, s32); /* extern */
extern s32 sub_8139260;
void sub_8136FB4(s32 arg0, void *arg1)
{
  s32 temp_r6_52;
  void *new_var;
  unsigned int temp_r6_98;
  void *temp_r5_37;
  void *temp_r5_83;
  new_var = arg1 + 0x58;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg1) + 0x294)))) + 0x12))))
  {
    sub_80473DC(arg1);
    *((s32 **) (((s8 *) arg1) + 0x198)) = &sub_8139260;
    temp_r5_37 = *((void **) (((s8 *) (((*((u8 *) (((s8 *) arg1) + 0x54))) * 4) + arg0)) + 0x2C));
    if ((!(1 & (*((u8 *) (((s8 *) temp_r5_37) + 0x20C))))) && ((temp_r6_52 = 6 & (*((u8 *) (((s8 *) temp_r5_37) + 0x33C))), temp_r6_52 == 0)))
    {
      sub_804761C(temp_r5_37, 1);
      sub_804776C(temp_r5_37, 1);
      sub_8047F60(temp_r5_37, *((s32 *) (((s8 *) arg1) + 0xC)), (*((s32 *) (((s8 *) arg1) + 0x10))) + 0x100, ((*((s32 *) (((s8 *) arg1) + 0x14))) + (*((s32 *) (((s8 *) arg1) + 0x18)))) + 0x1000, 1, temp_r6_52);
    }
    else
    {
      temp_r5_83 = *((void **) (((s8 *) (((*((u8 *) (((s8 *) arg1) + 0x54))) * 4) + arg0)) + 0x30));
      if (!(1 & (*((u8 *) (((s8 *) temp_r5_83) + 0x20C)))))
      {
        temp_r6_98 = 6 & (*((u8 *) (((s8 *) temp_r5_83) + 0x33C)));
        if (temp_r6_98 == 0)
        {
          sub_804761C(temp_r5_83, 1);
          sub_804776C(temp_r5_83, 1);
          sub_8047F60(temp_r5_83, *((s32 *) (((s8 *) arg1) + 0xC)), (*((s32 *) (((s8 *) arg1) + 0x10))) + 0x100, ((*((s32 *) (((s8 *) arg1) + 0x14))) + (*((s32 *) (((s8 *) arg1) + 0x18)))) + 0x1000, 1, temp_r6_98);
        }
      }
    }
    *((s16 *) (((s8 *) new_var) + 0x17A)) = 0x78;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81370C4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813729C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8137440.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8137550.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813774C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81378CC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8137A4C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8137BB0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
