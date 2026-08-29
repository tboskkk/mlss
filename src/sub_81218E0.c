#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81218E0 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_81151E4();
u32 sub_81218E0(void) {
    return 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81218E4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8121910(void *arg0, s32 arg1, long arg2)
{
  s32 new_var;
  struct Sprite **temp_r6_14;
  struct Sprite *temp_r0_28;
  struct Sprite *temp_r5_15;
  new_var = arg1 << 0x18;
  temp_r6_14 = (void *) ((*((s32 *) (((s8 *) arg0) + 0x158))) + (((u32) new_var) >> 0x12));
  temp_r5_15 = *temp_r6_14;
  if (temp_r5_15 == ((void *) 0))
  {
    temp_r0_28 = sub_8020DD0((arg2 >> 0xC) - 1, arg2, 1, -1, -1, -1, -1);
    *temp_r6_14 = temp_r0_28;
    sub_801E150(temp_r0_28, 0, -1, 0, (s32) temp_r5_15);
    return;
  }
  sub_80210A8(temp_r5_15, (arg2 >> 0xC) - 1, arg2, 1, -1, -1, -1, -1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8121970.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_812198C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81219C4.s\"");
#else
u8 sub_8116620(s32);                                /* extern */

s32 sub_81219C4(void *arg0) {
    u8 temp_r0_11;

    temp_r0_11 = sub_8116620((*(s32 *)((s8 *)(arg0) + (0x20))));
    if (temp_r0_11 != 0) {
        return 1;
    }
    (*(u8 *)((s8 *)(arg0) + (0x156))) = temp_r0_11;
    return 0;
}
#endif

void sub_81219EC(void *arg0) {
    sub_81151E4((*(s32 *)((s8 *)(arg0) + (0x20))), 4, 0, 8, 0xFFFF, 0xFFFF, 0, 0);
    (*(s8 *)((s8 *)(arg0) + (0x156))) = 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8121A20.s\"");
#else
s32 sub_81151E4(s32, s32, s32, s32, s32, s32, s32, s32); /* extern */

void sub_8121A20(void *arg0) {
    *(s32 *)0x03000BD0 = -1;
    sub_81151E4((*(s32 *)((s8 *)(arg0) + (0x20))), 0, 0, 8, 0xFFFF, 0xFFFF, 0, 0);
    *(u16 *)0x02000000 = (*(u16 *)((s8 *)(arg0) + (0x17E)));
    (*(s8 *)((s8 *)(arg0) + (0x156))) = 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8121A74.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8121ABC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8121B5C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8121D18.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8121F1C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8122098.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8122198.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8122248.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8122330.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8122618.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_812290C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81229F0.s\"");
#else
s32 sub_8127E50(s32, s32, s32);                 /* extern */
s32 sub_8127ECC(s32, s32);                          /* extern */

void sub_81229F0(s32 arg0) {
    sub_8127E50(sub_8127ECC(*(u8 *)0x03000C0C + 7, 0), arg0 + 0x840, 0);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8122A20.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8122AFC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_8117C9C(void *, s32, s32, s32, s32, s32); /* extern */
s32 sub_8127EF8(void *, s32, s32, s32);         /* extern */

void sub_8122BA0(s32 arg0, s32 arg1) {
    if (arg1 == 0) {
        sub_8117C9C(alloc_Zero(0x260U, 0U, (s8 *)0x08202F70, 0U), 8, 0x08202F70, arg0, -2, arg1);
        return;
    }
    sub_8127EF8(alloc_Zero(0x128U, 0U, (s8 *)0x08202F78, 0U), 8, 0x08202F78, -2);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8122BFC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8122E30.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
